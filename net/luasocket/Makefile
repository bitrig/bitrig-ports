# $OpenBSD: Makefile,v 1.32 2016/03/18 20:49:28 naddy Exp $

COMMENT=	network support for the lua language
V=		3.0-rc1
GH_ACCOUNT=	diegonehab
GH_PROJECT=	luasocket
GH_TAGNAME=	v$V
DISTNAME=	${GH_PROJECT}-$V
PKGNAME=	${DISTNAME:S/-rc/rc/}
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://w3.impa.br/~diego/software/luasocket/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua
NO_TEST=	Yes

USE_GMAKE=	Yes

MAKE_FILE=	makefile

MAKE_FLAGS=	CC_linux=${CC} \
		LD_linux=${CC} \
		CFLAGS_linux="${CFLAGS} -I${MODLUA_INCL_DIR} -fPIC \
			      -DPIC -DUNIX_HAS_SUN_LEN" \
		LDFLAGS_linux="${LDFLAGS} -shared -fPIC -o "

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/socket ${MODLUA_DATADIR}/mime
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}/socket ${MODLUA_LIBDIR}/mime
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/src/socket.so ${MODLUA_LIBDIR}/socket/core.so
	${INSTALL_DATA} ${WRKSRC}/src/unix.so ${MODLUA_LIBDIR}/socket/unix.so
	${INSTALL_DATA} ${WRKSRC}/src/mime.so ${MODLUA_LIBDIR}/mime/core.so
.for l in ltn12 socket mime
	${INSTALL_DATA} ${WRKSRC}/src/$l.lua ${MODLUA_DATADIR}
.endfor
.for l in http url tp ftp headers smtp
	${INSTALL_DATA} ${WRKSRC}/src/$l.lua ${MODLUA_DATADIR}/socket
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/* ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/* ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
