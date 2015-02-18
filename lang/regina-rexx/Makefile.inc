COMMENT=  	Regina REXX scripting language

DISTNAME=      	Regina-REXX-${VERSION}
PKGNAME =       regina-rexx-${VERSION}

#SHARED_ONLY=    Yes

CATEGORIES=     lang

MASTER_SITES=  http://jaist.dl.sourceforge.net/sourceforge/regina-rexx/ \
                http://voxel.dl.sourceforge.net/sourceforge/regina-rexx/ \
                http://internode.dl.sourceforge.net/sourceforge/regina-rexx/ \
                http://fastbull.dl.sourceforge.net/sourceforge/regina-rexx/ \
                http://freefr.dl.sourceforge.net/sourceforge/regina-rexx/ 

HOMEPAGE=       http://www.rexx.org/

# GPL v2 
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=    yes
PERMIT_DISTFILES_FTP=  yes


MAKE_FLAGS+=    CC="${CC}"

NO_TEST=        Yes
