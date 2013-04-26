# $OpenBSD: Makefile,v 1.4 2013/04/26 16:19:24 brad Exp $

COMMENT =		file, shell and text manipulation utilities

DISTNAME =		coreutils-8.21
CATEGORIES =		sysutils

HOMEPAGE =		http://www.gnu.org/software/coreutils/coreutils.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${MASTER_SITE_GNU:=coreutils/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-prefix=g \
			--without-gmp
CONFIGURE_ENV=		"FORCE_UNSAFE_CONFIGURE=1"

# Prevent conflicts with: id, gpr and god
post-install:
.for I in gid god gpr
	mv "${PREFIX}/bin/$I" "${PREFIX}/bin/g$I"
	mv "${PREFIX}/man/man1/$I.1" "${PREFIX}/man/man1/g$I.1"
.endfor

.include <bsd.port.mk>
