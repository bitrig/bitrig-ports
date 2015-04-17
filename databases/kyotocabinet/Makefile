# $OpenBSD: Makefile,v 1.10 2015/04/17 07:59:56 phessler Exp $

BROKEN= 	needs work on bitrig

BROKEN-hppa=	undefined reference to `__sync_fetch_and_add_8'
BROKEN-mips64=	undefined reference to `__sync_fetch_and_add_8'
BROKEN-powerpc=	undefined reference to `__sync_fetch_and_add_8'
BROKEN-sparc=	undefined reference to `__sync_fetch_and_add_8'

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=	straightforward implementation of DBM

DISTNAME=	kyotocabinet-1.2.76
REVISION=	3

SHARED_LIBS +=	kyotocabinet 0.0 # 16.0

CATEGORIES=	databases

HOMEPAGE=	http://fallabs.com/kyotocabinet/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread z
WANTLIB += c++ c++abi

MASTER_SITES=	${HOMEPAGE}pkg/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# This FLAVOR should be used for local builds only and not added to
# bulks (i.e. _no_ entry in databases/Makefile); the reason is that it
# uses -march=native which cannot be guaranteed to work on a machine it
# was not compiled on.
FLAVORS=	optimized
FLAVOR?=

# kcthread.cc/SpinLock uses a void* pointer to embed several kinds
# of locks depending of the platform. If __sync_bool_compare_and_swap 
# is avaliable it uses __sync_bool_compare_and_swap(&opq_,0, 1) as a
# lock mechanism. This won't compile in clang++ (but compiles on gcc)
# because the last elements are int and &opq_ is void**. Casting the
# argumets to void* makes clang accept the program but the backend
# crash
# (http://lists.cs.uiuc.edu/pipermail/llvmbugs/2012-February/022080.html).
CC=gcc
CXX=g++

.if ${FLAVOR:Moptimized}
CONFIGURE_ARGS += --enable-opt
.else
CONFIGURE_ARGS += --disable-opt
# i386 still need some optimized instructions
# undefined reference to `__sync_bool_compare_and_swap_8' ...
.if ${MACHINE_ARCH} == "i386"
CXXFLAGS += -march=i586
.endif
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{configure,Makefile.in}

.include <bsd.port.mk>
