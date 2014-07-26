# $OpenBSD: Makefile,v 1.4 2014/02/08 19:37:29 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-7.x-2.8
PKGNAME =	drupal7-backup-migrate-2.8
REVISION =	0

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
