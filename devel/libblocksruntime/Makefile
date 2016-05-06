COMMENT =		The libBlocksRuntime.a library from compiler-rt.

V=			0.1
PKGNAME=		libblocksruntime-${V}
DISTNAME =		master
MASTER_SITES=		https://github.com/mackyle/blocksruntime/archive/

CATEGORIES =		devel

HOMEPAGE =		https://github.com/mackyle/blocksruntime/

# BSD MIT
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS=		shells/bash

do-build:
	@cd ${WRKSRC}/../blocksruntime-master && \
		sh buildlib

do-test:
	cd ${WRKSRC}/../blocksruntime-master && \
		bash checktests

do-install:
	cd ${WRKSRC}/../blocksruntime-master && \
		sh installlib

.include <bsd.port.mk>
