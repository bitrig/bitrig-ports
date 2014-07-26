# $OpenBSD: Makefile,v 1.15 2013/03/11 11:23:56 espie Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
REVISION=	4
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m termcap

CFLAGS += -std=c89

USE_GROFF=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
