# $OpenBSD: Makefile,v 1.11 2015/03/16 18:07:42 naddy Exp $

COMMENT =	user-space USB HID access library written in C

DISTNAME =	libhid-0.2.16
REVISION =	2

SHARED_LIBS =	hid	0.0

CATEGORIES =	devel

HOMEPAGE =	http://libhid.alioth.debian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += 	c usb pthread usb-1.0

MASTER_SITES=	https://www.alioth.debian.org/frs/download.php/latestfile/336/

LIB_DEPENDS = 	devel/libusb-compat

USE_GMAKE = 		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	--disable-swig --without-doxygen

.include <bsd.port.mk>
