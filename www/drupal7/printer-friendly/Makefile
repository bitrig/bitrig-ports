# $OpenBSD: Makefile,v 1.3 2013/01/30 15:28:25 espie Exp $

COMMENT =	printer-friendly pages in drupal

DISTNAME = 	print-7.x-1.2
PKGNAME =	drupal7-printer-friendly-1.2
REVISION =	0

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
