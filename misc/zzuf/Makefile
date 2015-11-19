# $OpenBSD: Makefile,v 1.12 2015/11/19 00:55:23 mmcc Exp $

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
