# $OpenBSD: Makefile,v 1.107 2016/03/11 19:59:16 naddy Exp $

COMMENT=		virus scanner
DISTNAME=		clamav-0.99.1

CATEGORIES=		security

SHARED_LIBS +=	clamav               22.2     # 8.1
SHARED_LIBS +=	clamunrar            3.0      # 8.1
SHARED_LIBS +=	clamunrar_iface      3.0

HOMEPAGE=		http://www.clamav.net/

# GPLv2/LGPL, with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c crypto curl idn ltdl lzma m milter ncurses nghttp2
WANTLIB += pcre pthread ssl c++ c++abi xml2 z

BUILD_DEPENDS=		devel/check \
			devel/libexecinfo

LIB_DEPENDS=		archivers/bzip2 \
			devel/libtool,-ltdl \
			devel/pcre \
			mail/sendmail,-libmilter \
			net/curl \
			textproc/libxml

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clamav/}

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=        --disable-clamav \
			--enable-dependency-tracking \
			--disable-clamuko \
			--enable-bigstack \
			--enable-milter \
			--with-user=_clamav \
			--with-group=_clamav \
                        --disable-cr \
			--with-dbdir=/var/db/clamav \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/config

TEST_TARGET=	check
MODULES=	lang/python devel/gettext
MODPY_RUNDEP=	no

CPPFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-pthread -L/usr/lib \
		-L${LOCALBASE}/lib
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/clamav

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mllvm} && ! ${MACHINE_ARCH:Msparc} && \
	! ${MACHINE_ARCH:Msparc64} && ! ${MACHINE_ARCH:Mmips64}
CONFIGURE_ARGS+=	--enable-llvm
# At present (20140228 snapshot of LLVM, which is pre-3.5 but advertising a
# 3.5 version number), system LLVM does not work with ClamAV. To attempt
# using system LLVM, try this:
#			--with-llvm-linking=dynamic \
#			--with-system-llvm=${LOCALBASE}/bin/llvm-config
# And add LIB_DEPENDS etc. sparc64 should work with ports LLVM, but not the
# bundled internal one.
.else
CONFIGURE_ARGS+=	--disable-llvm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} *.pdf ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
