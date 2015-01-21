# $OpenBSD: Makefile,v 1.12 2015/01/21 14:41:38 sthen Exp $

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
	@rm -f ${WRKBUILD}/lib/XML/RSS/*.orig

.include <bsd.port.mk>
