# $OpenBSD: Makefile,v 1.19 2013/03/11 11:44:43 espie Exp $

COMMENT=	Apache LDAP authentication module

REVISION=	11
VERSION=	1.6.0
DISTNAME=	auth_ldap-${VERSION}
PKGNAME=	mod_auth_ldap-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.rudedog.org/auth_ldap/

MASTER_SITES=	${HOMEPAGE}

MODULES+=	apache-module

BUILD_DEPENDS=	www/apache-httpd-openbsd
RUN_DEPENDS=	${BUILD_DEPENDS}

# Apache License, one unused function GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ldap lber

MODAPACHE_NAME=		auth_ldap
MODAPACHE_FILE=		${MODAPACHE_LOCATION}/auth_ldap.so

LIB_DEPENDS=	databases/openldap

NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apxs=${LOCALBASE}/sbin/apxs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/lib/apache/include"

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_ldap
	${INSTALL_DATA} ${WRKBUILD}/auth_ldap.html \
		${PREFIX}/share/doc/mod_auth_ldap
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
