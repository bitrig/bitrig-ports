# $OpenBSD: Makefile,v 1.5 2014/06/26 14:45:53 jeremy Exp $

COMMENT =		robust daemon management

DISTNAME =		daemon_controller-1.2.0
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://github.com/FooBarWidget/daemon_controller

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rspec2
MODRUBY_TEST_TARGET = spec/daemon_controller_spec.rb

.include <bsd.port.mk>
