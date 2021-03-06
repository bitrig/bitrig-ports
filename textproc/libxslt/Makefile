# $OpenBSD: Makefile,v 1.85 2016/03/12 17:22:07 naddy Exp $

COMMENT-main=		XSLT C Library for GNOME
COMMENT-python= 	Python bindings for libxslt

VERSION=		1.1.28
DISTNAME=		libxslt-${VERSION}
PKGNAME-main=		libxslt-${VERSION}
PKGNAME-python= 	py-libxslt-${VERSION}
REVISION-main =		6
REVISION-python =	4

SHARED_LIBS +=  xslt                 3.8      # 2.28
SHARED_LIBS +=  exslt                9.8      # 8.17

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		https://distfiles.nl/ \
			ftp://xmlsoft.org/libxslt/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		gpg-error lzma m z

MODULES=		devel/gettext

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python

WANTLIB-main=		${WANTLIB} c xml2 gcrypt pthread
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			textproc/libxml \
			security/libgcrypt

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libxml-include-prefix="${LOCALBASE}/include/" \
			--with-html-subdir=libxslt/html

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-python}
CONFIGURE_ARGS+=	--without-python
.else
MODULES+=		lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS+= 	textproc/libxml,-python
WANTLIB-python= 	${WANTLIB} gcrypt xml2 exslt xslt pthread util \
			${MODPY_WANTLIB}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-python=	textproc/libxslt,-main \
			${MODGETTEXT_LIB_DEPENDS}
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxslt/
CONFIGURE_ARGS+=	--with-python

post-install:
# empty file
	rm ${PREFIX}/share/doc/libxslt-python-1.1.28/TODO
	rmdir ${PREFIX}/share/doc/libxslt-python-1.1.28
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{la,a}
.endif

.include <bsd.port.mk>
