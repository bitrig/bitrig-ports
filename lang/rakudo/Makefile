# $OpenBSD: Makefile,v 1.28 2016/03/16 16:46:32 naddy Exp $

COMMENT =		Rakudo Perl 6 compiler

V =			2015.12
DISTNAME =		rakudo-$V
REVISION =		1

NQP_VERSION =		2015.12

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atomic_ops ffi kvm m moar pthread

GH_ACCOUNT =		rakudo
GH_PROJECT =		rakudo
GH_TAGNAME =		$V
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS =	lang/nqp>=${NQP_VERSION} \
		math/libtommath
LIB_DEPENDS =	lang/moarvm
RUN_DEPENDS =	lang/nqp>=${NQP_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}"

.include <bsd.port.mk>
