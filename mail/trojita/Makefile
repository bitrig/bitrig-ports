# $OpenBSD: Makefile,v 1.13 2016/01/24 02:35:36 jturner Exp $

COMMENT =		fast Qt IMAP e-mail client

DISTNAME =		trojita-0.6

CATEGORIES =		mail x11

SHARED_LIBS =		trojita_plugins	1.0 # 1.0

HOMEPAGE =		http://trojita.flaska.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=trojita/}
EXTRACT_SUFX =		.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB +=		lib/qt4/QtSql lib/qt4/QtWebKit c m pthread z X11

MODULES =		devel/cmake x11/qt4

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ENV +=	QTDIR="${MODQT_LIBDIR}"
CONFIGURE_ARGS +=	-DWITH_RAGEL=OFF \
			-DWITH_QT5=OFF \
			-DWITH_QTKEYCHAIN_PLUGIN=OFF \
			-DGIT_EXECUTABLE=""

TEST_IS_INTERACTIVE =	X11

do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/ctest --output-on-failure

.include <bsd.port.mk>
