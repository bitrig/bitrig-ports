# $OpenBSD: Makefile,v 1.13 2016/03/20 16:12:23 naddy Exp $

COMMENT=	Radix tree implementation for Python

DISTNAME =	py-radix-0.5
REVISION =	0
CATEGORIES=	devel net

MASTER_SITES=	http://www2.mindrot.org/files/py-radix/
HOMEPAGE=	http://www.mindrot.org/py-radix.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

WANTLIB +=		${MODPY_WANTLIB} pthread

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
