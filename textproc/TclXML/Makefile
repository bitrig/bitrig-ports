# $OpenBSD: Makefile,v 1.26 2016/03/11 20:28:32 naddy Exp $

BROKEN = 	needs work on bitrig

COMMENT =	XML parser for Tcl

DISTNAME =	tclxml-3.2
REVISION =	2
CATEGORIES =	textproc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tclxml/}
HOMEPAGE =	http://tclxml.sourceforge.net/

SHARED_LIBS +=	Tclxml32	0.0

# custom
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		converters/libiconv \
			lang/tcl
WANTLIB +=		m z exslt xslt xml2
BUILD_DEPENDS +=	${MODTCL_BUILD_DEPENDS}
LIB_DEPENDS +=		textproc/libxml \
			textproc/libxslt
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			devel/tcllib

NO_TEST =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += --with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}
MAKE_FLAGS = 	PKG_LIB_FILE=libTclxml32.so.${LIBTclxml32_VERSION} \
		PKG_DIR=tclxml

.include <bsd.port.mk>
