# $OpenBSD: Makefile,v 1.24 2015/11/02 11:56:54 espie Exp $

COMMENT=		client for Cisco 3000 VPN concentrators

DISTNAME=		vpnc-0.5.3
REVISION=		5
CATEGORIES=		security net

HOMEPAGE=		http://www.unix-ag.uni-kl.de/~massar/vpnc/

# GPLv2 / BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c gpg-error gcrypt>=12

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

LIB_DEPENDS=		security/libgcrypt>=1.2
RUN_DEPENDS=		net/vpnc-scripts

USE_GMAKE=		Yes
NO_TEST=		Yes

do-configure:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/{README,config.c}
	@cp ${FILESDIR}/split.sh ${WRKBUILD}/split.sh
	${SUBST_CMD} -m 555 -c ${FILESDIR}/vpnc.sh ${WRKBUILD}/vpnc.sh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vpnc ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKBUILD}/vpnc-disconnect ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpnc
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/vpnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc.conf ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/split.sh ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc.sh ${PREFIX}/share/examples/vpnc
	${INSTALL_MAN} ${WRKBUILD}/vpnc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
