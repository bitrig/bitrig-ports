# $OpenBSD: Makefile,v 1.2 2016/01/27 06:56:02 ajacoutot Exp $

COMMENT=	3D printing host suite
DISTNAME=	printrun-20150310
CATEGORIES=	print

GH_ACCOUNT=	kliment
GH_PROJECT=	Printrun
GH_TAGNAME=	${DISTNAME}

HOMEPAGE=	http://www.pronterface.com/

MAINTAINER=     Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-gobject \
		devel/py-serial \
		math/py-numpy \
		sysutils/py-psutil \
		textproc/py-lxml \
		x11/dbus-python,-main \
		x11/py-pyglet \
		x11/py-wxPython \

BUILD_DEPENDS=	devel/py-serial \
		lang/cython

SUBST_VARS+=	LOCALBASE

pre-configure:
	${SUBST_CMD} ${WRKDIST}/*.desktop
	cd ${WRKDIST} && \
	for x in pronsole.py pronterface.py plater.py printcore.py; do \
		mv $$x $${x%.py}; \
	done

.include <bsd.port.mk>
