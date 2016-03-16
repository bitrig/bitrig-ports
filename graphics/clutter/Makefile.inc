# $OpenBSD: Makefile.inc,v 1.23 2016/03/16 20:02:11 naddy Exp $

DIST_SUBDIR=		clutter

CATEGORIES+=		graphics x11

HOMEPAGE?=		http://www.clutter-project.org/

# LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM?=  Yes

MODULES +=		devel/gettext \
			x11/gnome

CONFIGURE_STYLE?=	gnu

API_VERSION?=		1.0
SUBST_VARS?=		API_VERSION
