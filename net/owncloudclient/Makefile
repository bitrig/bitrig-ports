# $OpenBSD: Makefile,v 1.9 2016/03/03 07:28:05 kirby Exp $

COMMENT =		owncloud sync client

DISTNAME =		owncloudclient-2.1.1

SHARED_LIBS =		owncloudsync	2.0
SHARED_LIBS +=		ocsync		2.0

CATEGORIES =		net

HOMEPAGE =		http://owncloud.org/sync-clients/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto lib/inotify/inotify m pthread sqlite3 ssl z

MASTER_SITES =		https://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.xz

MODULES =		converters/libiconv devel/cmake gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/libinotify

CONFIGURE_ARGS +=	-Wno-dev \
			-DSYSCONF_INSTALL_DIR=${SYSCONFDIR} \
			-DCMAKE_C_FLAGS="${CFLAGS} \
				-I${LOCALBASE}/include/inotify" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include/inotify" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
				-L${LOCALBASE}/lib/inotify -linotify \
				-Wl,-rpath=${LOCALBASE}/lib/inotify"

FLAVORS = 		qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
MODULES += 		x11/qt5
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml qt5keychain
LIB_DEPENDS += 		security/qtkeychain,qt5
CONFIGURE_ARGS += 	-DBUILD_WITH_QT4=OFF
.else
MODULES += 		x11/qt4
WANTLIB += QtDBus QtGui QtNetwork QtSql QtWebKit QtXml qtkeychain
LIB_DEPENDS += 		security/qtkeychain
CONFIGURE_ARGS += 	-DBUILD_WITH_QT4=ON
.endif

# see post-extract
CFLAGS += 		 -DHAVE_ICONV -DHAVE_ICONV_H
CXXFLAGS += 		 -DHAVE_ICONV -DHAVE_ICONV_H

NO_TEST =		Yes

post-extract:
	mv ${WRKSRC}/cmake/modules/FindIconv.cmake \
		${WRKSRC}/cmake/modules/FindIconv_local.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mirall/
	mv ${WRKINST}/etc/ownCloud ${PREFIX}/share/examples/mirall/

.include <bsd.port.mk>
