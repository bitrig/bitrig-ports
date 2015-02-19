COMMENT=  	Regina REXX scripting language

DISTNAME=      	Regina-REXX-${VERSION}

PKGNAME =       regina-rexx-${VERSION}

CATEGORIES=     lang

MASTER_SITES= ${MASTER_SITE_SOURCEFORGE:=regina-rexx/}

HOMEPAGE=       http://www.rexx.org/

# GPL v2 
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_FTP=  Yes

MAKE_FLAGS+=    CC="${CC}"

WANTLIB += c m ncurses pthread

NO_TEST=        Yes
