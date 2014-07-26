# $OpenBSD: Makefile.inc,v 1.12 2013/09/28 09:06:58 ajacoutot Exp $

DIST_SUBDIR=		gnome

CONFIGURE_STYLE ?=	gnu

CFLAGS +=		-Wno-error=format-nonliteral
