# $OpenBSD: Makefile,v 1.29 2016/03/16 21:19:37 naddy Exp $

COMMENT=	free clone of mpg123, a command-line mp3 player

VERSION=	0.3.2
REVISION=	0
PKGNAME=	mpg321-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	http://mpg321.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg321/}
DISTFILES=	mpg321_${VERSION}.orig.tar.gz

WANTLIB=	ao c id3tag m mad pthread z
LIB_DEPENDS=	audio/libao \
		audio/libid3tag \
		audio/libmad

WRKDIST=	${WRKDIR}/mpg321-${VERSION}-orig
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mpg123-symlink \
		--disable-alsa
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
