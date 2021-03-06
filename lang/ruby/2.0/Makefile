# $OpenBSD: Makefile,v 1.25 2016/02/29 20:46:53 jeremy Exp $

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for ruby
COMMENT-tk =		tk interface for ruby
COMMENT-ri_docs =	ri documentation files for ruby

VERSION =		2.0.0
PATCHLEVEL =		648
RUBYLIBREV =		2.0
DISTNAME =		ruby-${VERSION}-p${PATCHLEVEL}
REVISION =		0

SHARED_LIBS =		ruby20	1.1
PKGNAME-main =		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm =		ruby20-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk =		ruby20-tk-${VERSION}.${PATCHLEVEL}
PKGNAME-ri_docs =	ruby20-ri_docs-${VERSION}.${PATCHLEVEL}

PKG_ARCH-ri_docs =	*
WANTLIB-ri_docs =	# empty

PKGSPEC-main =		ruby->=2.0,<2.1

BUILD_DEPENDS =		shells/bash

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/tool

CONFIGURE_ARGS =	--program-suffix=20 \
			--with-soname=ruby20 \
			--with-ruby-version=minor \
			--with-mantype=doc \
			--enable-pthread \
			--enable-ipv6 \
			--disable-option-checking

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=	--with-setjmp-type=_setjmp
.endif

CONFIGURE_ENV =		LIBruby20_VERSION=${LIBruby20_VERSION} \
			ac_cv_prog_DOXYGEN="" \
			ac_cv_prog_DOT=""

CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash ./configure

ALL_TARGET =		V=1 main
INSTALL_TARGET =	V=1 install-nodoc

WANTLIB-main =		c crypto ffi m ncurses ncursesw pthread readline ssl \
			termcap util yaml z
LIB_DEPENDS-main =	devel/libyaml \
			devel/libffi \
			devel/readline \
			lang/tcl/8.5 \
			x11/tk/8.5

PSEUDO_FLAVORS=		no_tk no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Msparc} || ${MACHINE_ARCH:Mvax} || \
	${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm -tk -ri_docs
.include <bsd.port.arch.mk>

WANTLIB-gdbm =		c m gdbm pthread ruby20
LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<2.1
RUN_DEPENDS-gdbm =

.if ${BUILD_PACKAGES:M-tk}
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-tcllib=tcl85 \
			--with-tklib=tk85 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c m pthread ruby20 tcl85 tk85
LIB_DEPENDS-tk =	tk->=8.5,<8.6:x11/tk/8.5 \
			lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<2.1
RUN_DEPENDS-tk =
.endif

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

SUBST_VARS +=		RUBYLIBREV

TEST_DEPENDS =		${FULLPKGNAME-main}:${BUILD_PKGPATH}

pre-install:
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0r rm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby

post-install:
	${FIX_RBCONFIG}

do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q -x test/ruby/test_io.rb -x test/net/http/test_http.rb"

.include <bsd.port.mk>
