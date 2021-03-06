# $OpenBSD: Makefile,v 1.23 2015/05/17 16:04:10 robert Exp $

BROKEN= 		needs work on bitrig

COMMENT-main=		Samhain Intrusion Detection System - documentation
COMMENT-client=		Samhain Intrusion Detection System - client
COMMENT-server=		Samhain Intrusion Detection System - server

VERSION=		3.1.5
DISTNAME=		samhain-${VERSION}
FULLPKGNAME-main=	samhain-docs-${VERSION}
FULLPKGPATH-main=	security/samhain,-main
FULLPKGNAME-client=	samhain-${VERSION}
FULLPKGPATH-client=	security/samhain,-client
PKGNAME-server=		samhain-server-${VERSION}

CATEGORIES=		security

HOMEPAGE=		http://la-samhna.de/samhain/
MASTER_SITES=		http://nerd.hu/distfiles/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-login-watch \
			--with-state-dir=/var/samhain \
			--enable-suidcheck \
			--enable-identity=_yule \
			--enable-network=server

NO_TEST=		Yes

MULTI_PACKAGES=		-main
FLAVORS=		mysql postgresql
FLAVOR?=

SUBST_VARS=		FLAVOR

.if ${FLAVOR} == "mysql"
MULTI_PACKAGES+=	-server
RUN_DEPENDS-server+=	security/samhain,-main
LIB_DEPENDS-server+=	databases/mariadb,-main
WANTLIB-server+=	c crypto m mysqlclient pthread ssl z
CONFIGURE_ARGS+=	--with-database=mysql \
			--enable-xml-log \
			--with-cflags=-I${LOCALBASE}/include/mysql \
			--with-libs=-L${LOCALBASE}/lib/mysql
.elif ${FLAVOR} == "postgresql"
MULTI_PACKAGES+=	-server
RUN_DEPENDS-server+=	security/samhain,-main
LIB_DEPENDS-server+=	databases/postgresql,-main
WANTLIB-server+=	c m pq
CONFIGURE_ARGS+=	--with-database=postgresql \
			--enable-xml-log
.elif empty(FLAVOR)
MULTI_PACKAGES+=	-client
RUN_DEPENDS-client+=	security/samhain,-main
WANTLIB-client+=	c pthread z
CONFIGURE_ARGS+=	--enable-network=client
.else
ERRORS+=		"Fatal: conflicting or unknown flavors: ${FLAVOR}";
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samhain
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/samhain/README
.if empty(FLAVOR)
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/samhain
	${INSTALL_DATA} ${WRKSRC}/samhainrc ${PREFIX}/share/examples/samhain/
	${INSTALL_PROGRAM} -c -m 700 \
		${WRKSRC}/samhain_setpwd ${PREFIX}/sbin
.else
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/yule
	${INSTALL_DATA} ${WRKSRC}/yulerc.template \
		${PREFIX}/share/examples/yule/yulerc
	${INSTALL_DATA} ${WRKSRC}/sql_init/samhain.${FLAVOR:S/postgresql/postgres/}.init \
		${PREFIX}/share/examples/yule/samhain.${FLAVOR}.init
.endif

.include <bsd.port.mk>
