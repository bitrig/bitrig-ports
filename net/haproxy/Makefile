# $OpenBSD: Makefile,v 1.28 2016/03/18 12:41:26 jca Exp $

COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-1.6.4
CATEGORIES =	net www
HOMEPAGE =	http://www.haproxy.org/
REVISION =	0

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c crypto pcre pcreposix ssl

MASTER_SITES =	${HOMEPAGE}/download/1.6/src/

HAPROXYCONF =	${SYSCONFDIR}/haproxy
HAPROXYSTATE =	/var/haproxy
HAPROXYUID =	604
HAPROXYGID =	604
SUBST_VARS =	HAPROXYCONF HAPROXYSTATE \
		HAPROXYUID HAPROXYGID

USE_GMAKE =	Yes
MAKE_FLAGS +=	CFLAGS="${CFLAGS} -fno-strict-aliasing" LDFLAGS="${LDFLAGS}"
MAKE_FLAGS +=	CC="${CC}" LD="${CC}" TARGET="openbsd"
MAKE_FLAGS +=	USE_OPENSSL=1 USE_PCRE=1

# The shared SSL session cache needs either atomics ops unsupported on
# hppa or pthreads features unsupported on OpenBSD.
.if ${MACHINE_ARCH:Mhppa}
MAKE_FLAGS +=	USE_PRIVATE_CACHE=1
.endif

NO_TEST =	Yes
LIB_DEPENDS =	devel/pcre

DOCS =		architecture configuration gpl lgpl
EXAMPLES =	acl-content-sw content-sw-sample option-http_proxy 

DOCSDIR =	${PREFIX}/share/doc/haproxy
EXAMPLESDIR =	${PREFIX}/share/examples/haproxy


pre-install:
	${SUBST_CMD} ${WRKSRC}/doc/haproxy.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/haproxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/haproxy.1 ${PREFIX}/man/man1/haproxy.1
	${INSTALL_DATA_DIR} ${DOCSDIR}
.for file in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${file}.txt ${DOCSDIR}
.endfor
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/examples/${file}.cfg ${EXAMPLESDIR}
.endfor
	${INSTALL_DATA} ${FILESDIR}/haproxy.cfg ${EXAMPLESDIR}


.include <bsd.port.mk>
