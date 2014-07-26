# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:22 espie Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
DISTNAME=		Term-ProgressBar-2.09
REVISION=		1
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker \
		  devel/p5-Term-ReadKey

.include <bsd.port.mk>
