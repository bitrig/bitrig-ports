--- giscanner/dumper.py.orig	Fri Apr 12 01:10:52 2013
+++ giscanner/dumper.py	Fri Apr 12 01:11:11 2013
@@ -89,7 +89,7 @@
         # Enable the --msvc-syntax pkg-config flag when
         # the Microsoft compiler is used
         # (This is the other way to check whether Visual C++ is used subsequently)
-        if 'cl' in self._compiler_cmd:
+        if not 'clang' in self._compiler_cmd and 'cl' in self._compiler_cmd:
             self._pkgconfig_msvc_flags = '--msvc-syntax'
         self._uninst_srcdir = os.environ.get(
             'UNINSTALLED_INTROSPECTION_SRCDIR')
