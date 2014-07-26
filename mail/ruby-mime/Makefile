# $OpenBSD: Makefile,v 1.10 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	MIME library for Ruby

DISTNAME =	mime-0.1
REVISION =	7
CATEGORIES =	mail

# Ruby license
PERMIT_PACKAGE_CDROM =   Yes

HOMEPAGE =	http://mime.rubyforge.org/

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/mime_test.rb

.include <bsd.port.mk>
