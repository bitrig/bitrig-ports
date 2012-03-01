COMMENT =		libiberty for Bitrig	

DISTNAME =		bitrig-libiberty-10.1
CATEGORIES =		devel
SHARED_LIBS =		iberty 10.1
EXTRACT_SUFX =		.tgz

MAINTAINER =		David Hill <dhill@bitrig.org>

# GPLv2 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.bitrig.org/files/	

MAKE_FILE =		Makefile.bsd-wrapper

WRKDIST =		${WRKDIR}/libiberty

do-configure:
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} obj
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} depend

.include <bsd.port.mk>
