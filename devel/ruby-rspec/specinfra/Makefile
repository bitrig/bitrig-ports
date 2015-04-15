# $OpenBSD: Makefile,v 1.26 2015/04/15 19:26:53 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.28.2

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
