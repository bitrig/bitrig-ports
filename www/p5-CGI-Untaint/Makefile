# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:14 naddy Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Untaint-1.26
REVISION=	2
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Universal-require

.include <bsd.port.mk>
