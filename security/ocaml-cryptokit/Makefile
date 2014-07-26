# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:26 espie Exp $

COMMENT=	cryptographic framework for the Objective-ML language
CATEGORIES=	security

DISTNAME=	cryptokit-1.6
REVISION=	4
PKGNAME=	ocaml-${DISTNAME}
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/891/

HOMEPAGE=	http://forge.ocamlcore.org/projects/cryptokit/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	z

MODULES=	lang/ocaml

CONFIGURE_STYLE =	oasis

post-build:
	cp -R ${WRKDIST}/api-cryptokit.docdir ${WRKDIST}/cryptokit.mli

post-install:
	mv \
		${PREFIX}/share/doc/ocaml-cryptokit/cryptokit/* \
		${PREFIX}/share/doc/ocaml-cryptokit/
	rmdir ${PREFIX}/share/doc/ocaml-cryptokit/cryptokit


.include <bsd.port.mk>
