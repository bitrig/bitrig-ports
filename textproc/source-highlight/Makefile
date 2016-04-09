# $OpenBSD: Makefile,v 1.26 2016/03/11 19:59:17 naddy Exp $

COMMENT=	create a document with syntax highlighting

DISTNAME=	source-highlight-3.1.8
SHARED_LIBS +=	source-highlight     1.1      # 4.1
CATEGORIES=	textproc

HOMEPAGE=	https://www.gnu.org/software/src-highlite/

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c m boost_regex-mt pthread
WANTLIB +=	c++ c++abi

MASTER_SITES=	${MASTER_SITE_GNU:=src-highlite/}

LIB_DEPENDS=	devel/boost
BUILD_DEPENDS=	devel/help2man \
		textproc/texi2html

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CXXFLAGS="-std=c++11 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
CONFIGURE_ARGS=	--with-boost-regex=boost_regex

FAKE_FLAGS=	bash_completiondir=${PREFIX}/share/examples/source-highlight/bash_completion.d

TEST_TARGET=	check

.include <bsd.port.mk>
