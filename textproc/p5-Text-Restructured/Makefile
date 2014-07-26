# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:44 espie Exp $

COMMENT=	implementation of reStructuredText parser

DISTNAME=	Text-Restructured-0.003040
REVISION=	1
CATEGORIES=	textproc
MODULES=	cpan

CPAN_AUTHOR=	NODINE

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Slay-Makefile-Gress \
		textproc/p5-Text-ASCIIMathML \
		devel/p5-Safe-World
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
