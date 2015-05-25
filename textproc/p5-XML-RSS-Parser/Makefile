# $OpenBSD: Makefile,v 1.13 2015/05/25 07:54:28 jasper Exp $

COMMENT=		liberal object-oriented parser for RSS feeds

MODULES=		cpan
DISTNAME=		XML-RSS-Parser-4.0
REVISION=		2
CATEGORIES=		textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-XML-Elemental>=2.0 \
	 		devel/p5-Class-XPath>=1.4 \
			devel/p5-Class-ErrorHandler

WRKDIST= 		${WRKDIR}/XML-RSS-Parser-4

pre-configure:
	rm ${WRKBUILD}/lib/XML/RSS/*.orig

.include <bsd.port.mk>
