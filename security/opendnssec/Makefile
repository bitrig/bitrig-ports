# $OpenBSD: Makefile,v 1.4 2016/03/14 06:46:24 jca Exp $

COMMENT=	open-source turn-key solution for DNSSEC

DISTNAME=	opendnssec-1.4.9

CATEGORIES=	security

HOMEPAGE=	http://www.opendnssec.org/

MAINTAINER=	Patrik Lundin <patrik@sigterm.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto iconv ldns lzma m pthread xml2 z

MASTER_SITES=	http://dist.opendnssec.org/source/

LIB_DEPENDS=	net/ldns/libldns \
		textproc/libxml

TEST_DEPENDS=	security/softhsm

MODULES=	converters/libiconv

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/opendnssec

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-pedantic

FLAVORS=	sqlite3 mysql
FLAVOR?=	sqlite3

.if ${FLAVOR:Msqlite3}
WANTLIB+=	sqlite3
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+= --with-database-backend=mysql
WANTLIB+=	mysqlclient_r ssl stdc++
LIB_DEPENDS+=	databases/mariadb
.endif

.if ${FLAVOR:Msqlite3} && ${FLAVOR:Mmysql}
ERRORS+= "Fatal: mutually exclusive flavors: ${FLAVORS}"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opendnssec
	cd ${WRKSRC}; \
	${INSTALL_DATA} LICENSE ${PREFIX}/share/doc/opendnssec; \
	${INSTALL_DATA} plugins/simple-dnskey-mailer/simple-dnskey-mailer.sh \
			${PREFIX}/share/opendnssec

.include <bsd.port.mk>
