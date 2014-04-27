# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:12:26 zhuk Exp $

COMMENT =	system log files viewer for KDE
DISTNAME =	ksystemlog-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	sysutils
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/ksystemlog

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += c++ c++abi

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
