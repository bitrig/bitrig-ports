# $OpenBSD: Makefile,v 1.13 2012/09/18 14:06:57 espie Exp $

COMMENT =	printer-friendly pages in drupal

DISTNAME = 	print-6.x-1.18
PKGNAME =	drupal6-printer-friendly-1.18
REVISION =	0

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
