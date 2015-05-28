# $OpenBSD: Makefile,v 1.39 2015/05/28 18:33:46 sebastia Exp $

# WARNING: this port does NOT use the x11/gnustep MODULE

PKG_ARCH=	*

COMMENT=	GNUstep makefile package

DISTNAME =	gnustep-make-2.6.7
CATEGORIES=	devel x11/gnustep

HOMEPAGE=	http://www.gnustep.org/

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

BUILD_DEPENDS =	x11/gnustep/libobjc2
RUN_DEPENDS=	archivers/gtar

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	ac_cv_prog_LATEX2HTML="" \
		INSTALL="install -c" \
		INSTALL_PROGRAM="install -c -m 555" \
		INSTALL_DATA="install -c -m 444" \
		CPPFLAGS='-I${LOCALBASE}/include/gnustep'
CONFIGURE_ARGS=	--with-layout=openbsd \
		--prefix=${PREFIX} \
		--with-config-file=${SYSCONFDIR}/GNUstep.conf \
		--with-tar=${LOCALBASE}/bin/gtar \
		--enable-multi-platform \
		--with-library-combo="gnu-gnu-gnu" \
		--with-objc-lib-flag=-lobjc2 \
		--enable-strict-v2-mode

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	CXX=${CXX} CC=${CC} AS=llvm-as CPP="${CC} -E"
CONFIGURE_ARGS +=	--enable-objc-nonfragile-abi
.endif

pre-configure:
	${SUBST_CMD} -c ${FILESDIR}/openbsd \
		${WRKSRC}/FilesystemLayouts/openbsd

post-install:
	${INSTALL_DATA} ${WRKSRC}/{GNUstep.conf,installation-domains.conf} \
		${PREFIX}/share/GNUstep/

.include <bsd.port.mk>
