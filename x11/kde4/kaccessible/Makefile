# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	KDE screenreader and focus tracking
DISTNAME =	kaccessible-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += speechd
WANTLIB += c++ c++abi

LIB_DEPENDS =	audio/speech-dispatcher

.include <bsd.port.mk>
