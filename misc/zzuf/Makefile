# $OpenBSD: Makefile,v 1.13 2015/12/03 09:22:18 sthen Exp $

BROKEN-hppa=		__sync_lock_test_and_set_4 in zzuf_mutex_lock

COMMENT=		transparent application input fuzzer

VERSION=		0.14
DISTNAME=		zzuf-${VERSION}
CATEGORIES=		misc security

MASTER_SITES=		https://github.com/samhocevar/zzuf/releases/download/v${VERSION}/

# WTFPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/.auto
# Necessary?
USE_GROFF=		Yes

.include <bsd.port.mk>
