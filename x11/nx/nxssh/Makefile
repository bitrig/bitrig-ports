# $OpenBSD: Makefile,v 1.20 2015/11/24 09:11:07 jasper Exp $

COMMENT=	OpenSSH client and daemon for NX

DASH_VER=	2
DISTNAME=	nxssh-${MAJOR_VERSION}-${DASH_VER}
PKGNAME=	nxssh-${MAJOR_VERSION}.${DASH_VER}
REVISION=	8

CATEGORIES=	net

WANTLIB += Xcomp c crypto jpeg m png util z
WANTLIB += c++ c++abi pthread

MASTER_SITES=	https://distfiles.nl/

LIB_DEPENDS=	x11/nx/nxcomp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bsd-auth \
		--with-cflags="${CFLAGS}" \
		--without-pam \
		--disable-strip
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nx" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/nxssh

MAKE_FLAGS=	ASKPASS_PROGRAM=${X11BASE}/bin/ssh-askpass \
		SFTP_SERVER=/usr/libexec/sftp-server \
		SSH_KEYSIGN=/usr/libexec/ssh-keysign

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/NX/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/nxssh ${PREFIX}/NX/bin

.include <bsd.port.mk>
