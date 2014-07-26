# $OpenBSD: Makefile,v 1.6 2013/10/02 13:14:38 okan Exp $

COMMENT =	convert MultiMarkdown syntax to (X)HTML

DISTNAME =	Text-MultiMarkdown-1.000034
REVISION =	0
CATEGORIES =	textproc www
MODULES =	cpan

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-Text-Markdown

MAKE_ENV =	TEST_POD=Yes \
		TEST_SPELLING=Yes

TEST_DEPENDS =	devel/p5-Test-Spelling \
		devel/p5-Test-Differences \
		www/p5-HTML-Tidy

.include <bsd.port.mk>
