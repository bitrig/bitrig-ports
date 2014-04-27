# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:30 zhuk Exp $

COMMENT =	hide and seek game for KDE
DISTNAME =	kblackbox-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += c++ c++abi

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
