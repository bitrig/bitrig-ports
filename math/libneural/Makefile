# $OpenBSD: Makefile,v 1.8 2016/03/16 21:19:38 naddy Exp $

COMMENT=		three layer backpropagation neural network library

DISTNAME=		libneural-1.0.3
REVISION=		4
SHARED_LIBS +=		neural 0.0      # .0.0
CATEGORIES=		math devel

HOMEPAGE=		https://zworykin.elec.uow.edu.au/~daniel/Projects/Software/libneural/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += m
WANTLIB += c++ c++abi pthread


CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CC="${CC}" \
			ac_cv_prog_CPP="${CC} -E"\
			ac_cv_prog_CXX="${CXX} -std=c++03"

post-extract:
	chmod +x ${WRKSRC}/configure

post-patch:
	find ${WRKSRC} -name *.h -o -name *.cc -exec sed -i 's/iostream.h/iostream/g' {} \;
	find ${WRKSRC} -name *.h -o -name *.cc -exec sed -i 's/fstream.h/fstream/g' {} \;
	find ${WRKSRC} -name *.h -o -name *.cc -exec sed -i 's/iomanip.h/iomanip/g' {} \;

.include <bsd.port.mk>
