# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2010 Free Software Foundation, Inc.
#
# This file is free software, distributed under the terms of the GNU
# General Public License.  As a special exception to the GNU General
# Public License, this file may be distributed as part of a program
# that contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects using CVS, this file can be treated like other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([lgl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable
  AC_REQUIRE([AC_PROG_RANLIB])
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([lgl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  m4_pushdef([AC_LIBOBJ], m4_defn([lgl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([lgl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([lgl_LIBSOURCES]))
  m4_pushdef([lgl_LIBSOURCES_LIST], [])
  m4_pushdef([lgl_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='lib/gllib'
  gl_LD_VERSION_SCRIPT
  gl_VISIBILITY
  gl_MULTIARCH
  gl_STDDEF_H
  gl_STDINT_H
  gl_WCHAR_H
  m4_ifval(lgl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([lgl_LIBSOURCES_DIR])[ ||
      for gl_file in ]lgl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([lgl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([lgl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([lgl_LIBSOURCES_DIR])
  m4_popdef([lgl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    lgl_libobjs=
    lgl_ltlibobjs=
    if test -n "$lgl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $lgl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        lgl_libobjs="$lgl_libobjs $i.$ac_objext"
        lgl_ltlibobjs="$lgl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([lgl_LIBOBJS], [$lgl_libobjs])
    AC_SUBST([lgl_LTLIBOBJS], [$lgl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([lgltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([lgltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([lgltests_LIBSOURCES]))
  m4_pushdef([lgltests_LIBSOURCES_LIST], [])
  m4_pushdef([lgltests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='tests'
  m4_ifval(lgltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([lgltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]lgltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([lgltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([lgltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([lgltests_LIBSOURCES_DIR])
  m4_popdef([lgltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    lgltests_libobjs=
    lgltests_ltlibobjs=
    if test -n "$lgltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $lgltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        lgltests_libobjs="$lgltests_libobjs $i.$ac_objext"
        lgltests_ltlibobjs="$lgltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([lgltests_LIBOBJS], [$lgltests_libobjs])
    AC_SUBST([lgltests_LTLIBOBJS], [$lgltests_ltlibobjs])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into lgl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([lgl_LIBOBJ], [
  AS_LITERAL_IF([$1], [lgl_LIBSOURCES([$1.c])])dnl
  lgl_LIBOBJS="$lgl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into lgl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([lgl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [lgl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([lgl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([lgl_LIBSOURCES_DIR], [lib/gllib])
      m4_append([lgl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into lgltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([lgltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [lgltests_LIBSOURCES([$1.c])])dnl
  lgltests_LIBOBJS="$lgltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into lgltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([lgltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [lgltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([lgltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([lgltests_LIBSOURCES_DIR], [tests])
      m4_append([lgltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([lgl_FILE_LIST], [
  build-aux/arg-nonnull.h
  build-aux/warn-on-use.h
  lib/dummy.c
  lib/stddef.in.h
  lib/stdint.in.h
  lib/wchar.in.h
  m4/00gnulib.m4
  m4/gnulib-common.m4
  m4/include_next.m4
  m4/ld-version-script.m4
  m4/longlong.m4
  m4/multiarch.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/visibility.m4
  m4/warn-on-use.m4
  m4/wchar.m4
  m4/wchar_t.m4
  m4/wint_t.m4
])
