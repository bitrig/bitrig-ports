# $OpenBSD: Makefile,v 1.24 2014/10/28 08:23:06 jasper Exp $

COMMENT=		easy to use Bayesian spam filter
DISTNAME=		bmf-0.9.4
REVISION=		7
CATEGORIES=		mail
HOMEPAGE=		http://sourceforge.net/projects/bmf/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bmf/}

CONFIGURE_STYLE=	simple

FLAVORS=		mysql
FLAVOR?=

CONFIGURE_ARGS=		--without-mysql \
			--with-libdb

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=		databases/mariadb
WANTLIB +=		mysqlclient
CONFIGURE_ARGS+=	--without-libdb --with-mysql="${LOCALBASE}"
CFLAGS+=		"-I${LOCALBASE}/include/mysql"
.endif

MAKE_ENV=		"LDFLAGS=${LDFLAGS} -L${LOCALBASE}/lib" 
INSTALL_TARGET=		MANDIR=${PREFIX}/man \
			BINDIR=${PREFIX}/bin \
			install

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bmf
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bmf

.include <bsd.port.mk>
