# $OpenBSD: Makefile,v 1.12 2015/10/29 18:25:32 ajacoutot Exp $

COMMENT =		web/text search engine

DISTNAME =		swish-e-2.4.7
REVISION =		4
SHARED_LIBS =		swish-e	2.1
CATEGORIES =		textproc www

HOMEPAGE =		http://swish-e.org/
MASTER_SITES =		${HOMEPAGE}distribution/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lzma m pcre pcreposix pthread xml2 z

MODULES =		converters/libiconv

LIB_DEPENDS =		devel/pcre \
			textproc/libxml

RUN_DEPENDS =		www/p5-URI \
			www/p5-libwww \
			www/p5-HTML-Parser \
			www/p5-HTML-Tagset>=3 \
			mail/p5-MIME-Types \
			www/p5-HTML-FillInForm \
			www/p5-HTML-Template

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-pcre
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

.include <bsd.port.mk>
