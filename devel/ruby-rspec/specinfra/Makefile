# $OpenBSD: Makefile,v 1.36 2015/06/09 06:31:24 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.34.8

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
