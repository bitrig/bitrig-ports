# $OpenBSD: Makefile,v 1.203 2016/03/20 16:12:22 naddy Exp $

# XXX add libphonenumber support when a cpp release is out

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.18.5

CATEGORIES=		databases productivity
REVISION=		1

SHARED_LIBS +=  camel-1.2            38.0     # 54.0
SHARED_LIBS +=  edataserver-1.2      19.0     # 21.0
SHARED_LIBS +=  ebackend-1.2         5.1      # 10.0
SHARED_LIBS +=  edataserverui-1.2    1.1      # 1.0
SHARED_LIBS +=  ebook-contacts-1.2   2.0      # 2.0
SHARED_LIBS +=  edata-book-1.2       16.1     # 25.0
SHARED_LIBS +=  ebook-1.2            19.1     # 19.1
SHARED_LIBS +=  ecal-1.2             16.0     # 19.0
SHARED_LIBS +=  edata-cal-1.2        19.0     # 28.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject crypto curl db dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdata gdk-3 gdk_pixbuf-2.0 geocode-glib gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 gweather-3 harfbuzz ical icalss icalvcal
WANTLIB += icudata icui18n icuuc idn json-glib-1.0 lber-2.4 ldap-2.4
WANTLIB += lzma m nghttp2 nspr4 nss3 nssutil3 oauth p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs sasl2 secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 xcb xcb-render xcb-shm
WANTLIB += xml2 z
WANTLIB += c++ c++abi

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS= 		databases/db/v4 \
			databases/openldap \
			devel/libgdata \
			net/liboauth \
			textproc/libical \
			x11/gnome/gcr \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

MODPY_RUNDEP=		No
MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		DB_CFLAGS="-I${LOCALBASE}/include/db4" \
			DB_LIBS="-ldb" \
			ac_cv_path_DB_LOAD=${LOCALBASE}/bin/db4_load
CONFIGURE_ARGS=		--with-openldap=${LOCALBASE}

# needs signond, libsignon-glib -- Ubuntu/Meego
CONFIGURE_ARGS +=	--disable-uoa

pre-configure:
	sed -i 's,/usr/sbin/imapd,${LOCALBASE}/libexec/imapd,g' \
		${WRKSRC}/camel/providers/imapx/camel-imapx-settings.c \
		${WRKSRC}/docs/reference/camel/html/CamelIMAPXSettings.html
# XXX cc1plus: error: unrecognized command line option "-Wnoexcept"
	sed -i 's,-Wnoexcept,,' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.{a,la}

.include <bsd.port.mk>
