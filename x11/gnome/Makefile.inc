# $OpenBSD: Makefile.inc,v 1.13 2014/09/02 14:28:20 jasper Exp $

PORTSCOUT =		limitw:1,even

DIST_SUBDIR =		gnome

CONFIGURE_STYLE ?=	gnu

CFLAGS +=		-Wno-error=format-nonliteral
