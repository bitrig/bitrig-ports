#! /usr/bin/perl

# ex:ts=8 sw=4:
# $OpenBSD: Quirks.pm,v 1.169 2014/07/25 09:17:16 zhuk Exp $
#
# Copyright (c) 2009 Marc Espie <espie@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use strict;
use warnings;
use OpenBSD::PackageName;

package OpenBSD::Quirks;

sub new
{
	my ($class, $version) = @_;
	if ($version == 1 || $version == 2) {
		return OpenBSD::Quirks2->new;
	} else {
		return undef;
	}
}

package OpenBSD::Quirks2;
use Config;
sub new
{
	my $class = shift;

	bless {}, $class;
}


# ->tweak_list(\@l, $state):
#	allows Quirks to do anything to the list of packages to install,
#	if something is needed. Usually, it won't do anything
sub tweak_list
{
}

# packages to remove
# stem => existing file   hash table
#	if file exists, then it's now in base and we can remove it.

my $p5a = $Config{archlib};
my $p5 = "/usr/libdata/perl5";
my $base_exceptions = {
	'clang' => '/usr/bin/clang',
	'clang++' => '/usr/bin/clang++',
	'cc' => '/usr/bin/cc',
	'CC' => '/usr/bin/CC',
	'c++' => '/usr/bin/c++',
};

my $stem_extensions = {
# Bitrig 0.1
	'py3-distribute' => 'py3-setuptools',
	'bitrig-gdb' => 'gdb',
};

# reasons for obsolete packages
my @msg = (
	"ancient software that doesn't work", #0
	"web application with no benefit being packaged", #1
	"no longer maintained and full of security holes", #2
	"no longer maintained upstream", #3
	"superseded by base component", #4
);

my $obsolete_reason = {
	'BitTorrent' => 0,
	'BitTorrent-gui' => 0,
	'sgmlformat' => 0,
	'parse' => 0,
	'spice' => 0,
	'mshell' => 0,
	'splitvt' => 0,
	'bricolage' => 1,
	'xinha' => 1,
	'py-cups' => 0,
	'system-config-printer' => 0,
	'ruby-postgres' => 3,
	'metasploit' => 2,
	'childsplay-plugins' => 3,
	'ez-ipupdate' => 3,
	'tesseract-dan-frak' => 3,
	'apc-upsd' => 3,
	'mod_bandwidth' => 3,
	'varconf' => 0,
	'radiusd-cistron' => 2,
	'radiusd-lucent' => 2,
	'emesene' => 0,
	'celt051' => 0,
	'lasem' => 0,
	'memphis' => 3,
	'bzip' => 3,
	'silverstripe' => 1,
	'dnetc' => 0,
	'gitlist' => 1,
	'telepathy-inspector' => 0,
	'telepathy-spec' => 0,
	'svk' => 3,
	'p5-SVN-Dump' => 3,
	'p5-SVN-Mirror' => 3,
	'chipmunk' => 0,
	'maple' => 3,
	'mapleshare' => 3,
	'p5-Event-Lib' => 3,
	'gnome-search-tool' => 3,
	'gnome-system-log' => 3,
	'mash' => 3,
	'p5-RTx-Tags' => 0,
	'gedit-cossa' => 3,
	'anjuta-extras' => 3,
	'moserial' => 3,
	'ethos' => 3,
	'ekiga' => 0,
	'kpoppassd' => 2,
	'p5-Authen-Krb5-Simple' => 2,
	'py-pykpass' => 2,
	'mod_auth_kerb' => 2,
	'p5-GSSAPI' => 2,
	'opal' => 0,
	'p5-GetLive' => 3,
	'bonk' => 3,
	'xmms-bonk' => 3,
	'mailcrypt' => 0,
	'tcpcat' => 4,
	'bitrig-gcc' => 4,
	'bitrig-gcclibs' => 4,
	'bitrig-llvm' => 4,
};

# ->is_base_system($handle, $state):
#	checks whether an existing handle is now part of the base system
#	and thus no longer needed.

sub is_base_system
{
	my ($self, $handle, $state) = @_;

	my $stem = OpenBSD::PackageName::splitstem($handle->pkgname);
	if ($stem =~ m/^texlive_/) {
		require OpenBSD::Quirks::texlive;
		OpenBSD::Quirks::texlive::unfuck($handle, $state);
	}

	my $test = $base_exceptions->{$stem};
	if (defined $test) {
		if (-e $test) {
			$state->say("Removing ", $handle->pkgname,
			    " (part of base system now)");
			return 1;
		} else {
			$state->say("Not removing ", $handle->pkgname,
			 ", ", $test, " not found");
		}
	} else {
		return 0;
	}
}

# ->filter_obsolete(\@list)
# explicitly mark packages as no longer there. Remove them from the
# list of "normal" stuff.

sub filter_obsolete
{
	my ($self, $list, $state) = @_;
	my @in = @$list;
	@$list = ();
	for my $pkgname (@in) {
		my $stem = OpenBSD::PackageName::splitstem($pkgname);
		my $reason = $obsolete_reason->{$stem};
		if (defined $reason) {
			$state->say("Obsolete package: #1 (#2)", $pkgname, 
			    $msg[$reason]);
		} else {
			push(@$list, $pkgname);
		}
	}
}


# ->tweak_search(\@s, $handle, $state):
#	tweaks the normal search for a given handle, in case (for instance)
#	of a stem name change.

sub tweak_search
{
	my ($self, $l, $handle, $state) = @_;

	if (@$l == 0 || !$l->[0]->can("add_stem")) {
		return;
	}
	my $stem = OpenBSD::PackageName::splitstem($handle->pkgname);
	my $extra = $stem_extensions->{$stem};
	if (defined $extra) {
		if (ref $extra) {
			for my $e (@$extra) {
				$l->[0]->add_stem($e);
			}
		} else {
			$l->[0]->add_stem($extra);
		}
	}
}

# list of
#   cat/path => badspec
my $cve = {
	'print/cups,-main' => 'cups-<1.7.4',
	'sysutils/mcollective' => 'mcollective-<2.5.3',
	'net/transmission,-main' => 'transmission-<2.84',
	'net/transmission,-gtk' => 'transmission-gtk-<2.84',
	'net/transmission,-qt' => 'transmission-qt-<2.84',
	'www/bozohttpd' => 'bozohttpd-<20130711p0',
	'mail/exim' => 'exim-<4.83',
	'www/p5-CGI-Application' => 'p5-CGI-Application-<4.50p0',
	'www/cherokee,-ldap' => 'cherokee-ldap-<1.2.101p6',
};

# ->check_security($path)
#	return an insecure specification for the matching path
#	e.g., you should update.

sub check_security
{
	my ($self, $path) = @_;
	if (defined $cve->{$path}) {
		return $cve->{$path};
	} else {
		return undef;
	}
}

1;
