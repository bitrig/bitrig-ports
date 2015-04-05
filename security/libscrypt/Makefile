# $OpenBSD: Makefile,v 1.4 2015/04/05 13:31:14 sthen Exp $

BROKEN = 	needs work on bitrig

# should build a static library without using -fPIC
SHARED_ONLY =	Yes

COMMENT =	shared library that implements scrypt() functionality

V =		1.19
GH_ACCOUNT =	technion
GH_PROJECT =	libscrypt
GH_TAGNAME =	v$V
DISTNAME =	${GH_PROJECT}-$V
REVISION =	0

SHARED_LIBS =	scrypt		1.0	# 0

CATEGORIES =	security

HOMEPAGE =	https://lolware.net/libscrypt.html

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c m

MAKE_FLAGS =	CC="${CC}" PORTS_CFLAGS="${CFLAGS}" \
		LIBscrypt_VERSION="${LIBscrypt_VERSION}"

TEST_TARGET =	check

.include <bsd.port.mk>
