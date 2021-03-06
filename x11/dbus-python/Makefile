# $OpenBSD: Makefile,v 1.35 2016/03/11 20:28:33 naddy Exp $

PORTROACH=		limitw:2,even

COMMENT-main =		dbus bindings for Python
COMMENT-common =	common files for py-dbus

V =			1.2.4
DISTNAME =		dbus-python-${V}

PKGNAME-main =		py-dbus-${V}
FULLPKGNAME-common =	py-dbus-common-${V}
FULLPKGPATH-common =	x11/dbus-python,-common

CATEGORIES =		x11

HOMEPAGE =		http://dbus.freedesktop.org/

# ISC-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB-main += gobject-2.0 pcre pthread z

WANTLIB-common +=	#empty

MASTER_SITES =		${HOMEPAGE}releases/dbus-python/

MULTI_PACKAGES =	-main -common

MODULES =		lang/python \
			devel/gettext

FLAVORS =		python3
FLAVOR ?=

USE_GMAKE=		Yes

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main=	${PKGNAME-main:S/^py-/py3-/}
FULLPKGPATH-main=	x11/dbus-python,-main${MODPY_FLAVOR}
.endif

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/dbus-glib

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			x11/dbus-python,-common

LIB_DEPENDS-common =	#empty
RUN_DEPENDS-common =	#empty

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-html-docs

TEST_FLAGS =		LDFLAGS="-L${LOCALBASE}/lib"
TEST_DEPENDS =		devel/py-gobject3${MODPY_FLAVOR}

pre-configure:
	sed -i "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/test/{TestSuitePythonService.service.in,run-test.sh}

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
