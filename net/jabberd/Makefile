# $OpenBSD: Makefile,v 1.1.1.2 2004/11/17 06:36:39 jakob Exp $
			
COMMENT=		"jabber server"

DISTNAME=		jabberd-2.0s4
CATEGORIES=    		net

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=		http://www.jabberstudio.org/files/jabberd2/
HOMEPAGE=		http://jabberd.jabberstudio.org/2/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var \
			--enable-ssl \
			--disable-idn \
			--enable-mysql \
			--with-extra-include-path=${LOCALBASE}/include \
			--with-extra-library-path=${LOCALBASE}/lib \

CONFIGURE_ARGS+=	--enable-mysql \
			--with-extra-include-path=${LOCALBASE}/include/mysql \
			--with-extra-library-path=${LOCALBASE}/lib/mysql
LIB_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql

MODULES+=	iconv

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/jabberd ${PREFIX}/sbin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/jabberd
.for dir in c2s resolver router s2s sm
	${INSTALL_PROGRAM} ${WRKSRC}/${dir}/${dir} ${PREFIX}/libexec/jabberd
.endfor
	${INSTALL_MAN} ${WRKSRC}/man/*.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jabberd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jabberd/templates
	${INSTALL_DATA} \
		${WRKSRC}/tools/*sql \
		${WRKSRC}/etc/*.xml.dist \
		${WRKSRC}/etc/*.cfg.dist \
		${PREFIX}/share/examples/jabberd
	${INSTALL_DATA} \
		${WRKSRC}/etc/templates/*.xml.dist \
		${PREFIX}/share/examples/jabberd/templates

.include <bsd.port.mk>
