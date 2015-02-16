# $OpenBSD: Makefile,v 1.16 2015/02/16 22:57:10 naddy Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
REVISION=	4
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m termcap

CFLAGS += -std=c89

NO_TEST=	Yes

.include <bsd.port.mk>
