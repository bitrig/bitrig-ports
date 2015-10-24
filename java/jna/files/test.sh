#!/bin/sh
#
# $OpenBSD: test.sh,v 1.1 2015/10/24 14:22:14 jasper Exp $

# Simple JNA tests to ensure Clojure can still call native library functions

expected=`mktemp`
results=`mktemp`
echo "Hello, World\n-> 42\nint: 42\nfloat: 42.00\n# ignore statvfs" > $expected
/usr/local/bin/clojure files/jna.clj > $results

cmp $expected $results || exit 1

rm -f $expected $results
