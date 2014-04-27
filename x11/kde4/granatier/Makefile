# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	bomberman clone game for KDE
DISTNAME =	granatier-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knewstuff3
WANTLIB += c++ c++abi

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
