# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:46 espie Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20121017
REVISION =		0
CATEGORIES =		net

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c ncurses pcap

CONFIGURE_STYLE =	gnu

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_TEST =		Yes

.include <bsd.port.mk>
