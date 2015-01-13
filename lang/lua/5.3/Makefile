VERSION=	5.3.0
PKGSPEC=	lua->=5.3

SHARED_LIBS=	lua5.3 ${VERSION:R}

LIB_DEPENDS=	devel/readline

WANTLIB=	c m edit curses readline

SUBST_VARS+=	VERSION

CFLAGS+=	-I${LOCALBASE}/include
MAKE_FLAGS+=	LIBlua5.3_VERSION="${LIBlua5.3_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua53.pc ${PREFIX}/lib/pkgconfig/lua53.pc

.include <bsd.port.mk>
