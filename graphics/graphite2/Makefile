# $OpenBSD: Makefile,v 1.5 2015/05/22 11:31:15 ajacoutot Exp $

COMMENT=	rendering for complex writing systems

DISTNAME=	graphite2-1.2.4
REVISION=	1
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	graphite2 0.0 # 3.0.1

CATEGORIES=	graphics

HOMEPAGE=	http://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m
WANTLIB += c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silgraphite/}

MODULES=	devel/cmake \
		lang/python

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

TEST_DEPENDS=${MODPY_RUN_DEPENDS}

# regress tests need python
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
