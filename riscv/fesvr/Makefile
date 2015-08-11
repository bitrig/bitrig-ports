COMMENT =		RISC-V Frontend Server
DISTNAME =		riscv-fesvr-0.0

SHARED_LIBS=		fesvr 0.0 # 0.0

CATEGORIES =		riscv
HOMEPAGE =		https://github.com/riscv/riscv-fesvr

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c c++ c++abi m pthread

MASTER_SITES =		http://www.bitrig.org/pub/distfiles/riscv/
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/scripts

.include <bsd.port.mk>
