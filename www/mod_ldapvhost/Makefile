# $OpenBSD: Makefile,v 1.19 2015/12/03 21:24:32 sthen Exp $

COMMENT=		Apache LDAP based virtual hosts module

REVISION=		11
DISTNAME=		mod_ldapvhost-1.0.2
CATEGORIES=		www

MASTER_SITES=		https://spacehopper.org/mirrors/
EXTRACT_SUFX=		.tgz

MODULES+=		apache-module

BUILD_DEPENDS=	www/apache-httpd-openbsd
RUN_DEPENDS=	${BUILD_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lber ldap

MODAPACHE_NAME=		ldapvhost

NO_TEST=		Yes

LIB_DEPENDS=		databases/openldap

do-build:
	(cd ${WRKBUILD}; make)

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_ldapvhost
	${INSTALL_DATA} ${WRKBUILD}/*.schema ${PREFIX}/share/doc/mod_ldapvhost/
	${INSTALL_DATA} ${WRKBUILD}/mod_ldapvhost.conf \
	    ${PREFIX}/share/doc/mod_ldapvhost/
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
