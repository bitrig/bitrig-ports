COMMENT =		RISC-V ISA Simulator
DISTNAME =		riscv-isa-sim-0.0

CATEGORIES =		riscv

HOMEPAGE =		https://github.com/riscv/riscv-isa-sim

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c c++ c++abi m pthread

MASTER_SITES =		http://www.bitrig.org/pub/distfiles/riscv/

BUILD_DEPENDS =		textproc/gsed \
			sysutils/ggrep \
			riscv/riscv-fesvr
RUN_DEPENDS =		riscv/riscv-fesvr
LIB_DEPENDS =		riscv/riscv-fesvr

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-fesvr=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/scripts

.include <bsd.port.mk>
