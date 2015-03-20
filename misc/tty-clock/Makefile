COMMENT =		Analog clock in ncurses

DISTNAME =		tty-clock-0.1
CATEGORIES =		misc

HOMEPAGE =		https://github.com/xorg62/tty-clock

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ncurses

GH_ACCOUNT =		xorg62
GH_PROJECT =		tty-clock
GH_COMMIT =		516afbf9f96101c0bed1c366f80d7ca087b0557d

USE_GMAKE = 		Yes

LDFLAGS =		-lncurses
MAKE_ENV =		LDFLAGS="${LDFLAGS}"

ALL_TARGET =		tty-clock

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tty-clock ${PREFIX}/bin
	@chmod 0755 ${PREFIX}/bin/tty-clock
	${INSTALL_DATA_DIR} ${PREFIX}/man
	${INSTALL_DATA} ${WRKSRC}/tty-clock.1 ${PREFIX}/man
	@chmod 0644 ${PREFIX}/man/tty-clock.1

.include <bsd.port.mk>
