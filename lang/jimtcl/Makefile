SHARED_ONLY =		Yes

COMMENT =		small footprint implementation of Tcl

#GH_ACCOUNT =		msteveb
#GH_PROJECT =		jimtcl
#GH_TAGNAME =		0.76 # Tag lag
GH_COMMIT =		c73f5c591b206c92f8021d01088738c908970d64

V =             	0.76pl2

DISTNAME =       	jimtcl-${V}
PKGNAME =       	jimtcl-${V}
DISTFILES = 		jimtcl-${V}${EXTRACT_SUFX}{${GH_COMMIT}${EXTRACT_SUFX}}

SHARED_LIBS =		jim 2.0
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/

MASTER_SITES = 		http://repo.or.cz/w/jimtcl.git/snapshot/

WRKDIST =		${WRKOBJDIR}/${DISTNAME}/jimtcl

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m sqlite3


MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc

MAKE_FLAGS =		LIBJIM=libjim.so.${LIBjim_VERSION} \
			SH_CFLAGS=${PICFLAG} \
			SHOBJ_CFLAGS=${PICFLAG} \
			SH_LDFLAGS=-shared

FAKE_FLAGS =		INSTALL_DATA_DIR='${INSTALL_DATA_DIR}' \
			INSTALL_DATA='${INSTALL_DATA}' \
			INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
			INSTALL_SCRIPT='${INSTALL_SCRIPT}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir=${PREFIX}/include/jim \
			--full \
			--with-mod=sqlite3 \
			CCACHE=none

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/examples.{api,ext}/Makefile

.include <bsd.port.mk>
