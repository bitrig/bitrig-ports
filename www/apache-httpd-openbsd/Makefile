COMMENT=		Apache from OpenBSD base

DISTNAME=		apache-httpd-openbsd-1.3.29
REVISION=		0
EXTRACT_SUFX=		.tgz
CATEGORIES=		www

HOMEPAGE=		https://www.bitrig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c crypto keynote m ssl
#asn1 c com_err crypto gssapi heimbase krb5 roken wind z
#c crypto m ssl expat apr-1 db>=4 z pcre pthread aprutil-1>=2


MASTER_SITES=	https://www.bitrig.org/pub/distfiles/

NO_TEST=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
#MAKE_ENV=	CC=gcc CFLAGS="${CFLAGS}"

pre-configure:
	${SUBST_CMD} ${WRKDIST}/Makefile.bsd-wrapper

.include <bsd.port.mk>
