# $OpenBSD: Makefile,v 1.8 2014/03/30 06:59:49 jeremy Exp $

COMMENT=	YAML 1.1 parser and emitter written in C

DISTNAME=	yaml-0.1.6
PKGNAME=	lib${DISTNAME}
REVISION=	0
CATEGORIES=	devel

SHARED_LIBS=	yaml-0	0.0	# 1.0
SHARED_LIBS+=	yaml	0.0	# 1.0

HOMEPAGE=	http://pyyaml.org/wiki/LibYAML

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pyyaml.org/download/libyaml/


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

.include <bsd.port.mk>
