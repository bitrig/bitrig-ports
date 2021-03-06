# $OpenBSD: Makefile,v 1.58 2016/03/19 17:51:34 ajacoutot Exp $

COMMENT=		framework for defining and tracking users, sessions & seats

PKGNAME=		${DISTNAME:L}

GH_TAGNAME=		1.0.2
GH_ACCOUNT=		ConsoleKit2
GH_PROJECT=		ConsoleKit2

CATEGORIES=		sysutils	

SHARED_LIBS +=  ck-connector         1.1      # 0.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 c dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 kvm pcre polkit-gobject-1 pthread xcb z

MODULES=		devel/gettext

USE_GMAKE=		Yes

LIB_DEPENDS=		sysutils/polkit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-pam-module \
			--with-pam-module-dir=${LOCALBASE}/lib/security

FAKE_FLAGS=		DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/consolekit/dbus-1 \
			sysconfdir=${TRUEPREFIX}/share/examples/consolekit


AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 \
		/bin/sh ./autogen.sh ${CONFIGURE_ARGS}

post-install:
	rmdir ${WRKINST}/var/run/ConsoleKit
	rm -r ${WRKINST}/${SYSCONFDIR}/X11/xinit/xinitrc.d \
		${PREFIX}/share/examples/consolekit/logrotate.d

.include <bsd.port.mk>
