# $OpenBSD: Makefile,v 1.5 2016/03/20 16:12:24 naddy Exp $

COMMENT =	game of life simulator

PKGNAME =	golly-2.7
DISTNAME =	${PKGNAME}-src
WRKSRC =	${WRKDIST}/gui-wx/configure
CATEGORIES =	games math
REVISION =	1

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=golly/}

HOMEPAGE =	http://golly.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
LIB_DEPENDS =		x11/wxWidgets
RUN_DEPENDS =		devel/desktop-file-utils

# Note: perl and python are loaded with wxDynamicLibrary.Load(), and
# python needs libutil to prevent undefined openpty and forkpty symbols.
WANTLIB += c m perl pthread util wx_base wx_base_net wx_gtk2_adv
WANTLIB += wx_gtk2_core wx_gtk2_html wx_gtk2_richtext z ${MODPY_WANTLIB}
WANTLIB += c++ c++abi

CONFIGURE_STYLE =		gnu
CONFIGURE_ARGS =		--enable-unicode
SEPARATE_BUILD =		Yes

FAKE_FLAGS =		dist_doc_DATA="" \
			docdir=""

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/../icons/appicon.xpm \
		${PREFIX}/share/pixmaps/golly.xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/golly.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
