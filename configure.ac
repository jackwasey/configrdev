AC_PREREQ([2.62])
AC_INIT(configrdev)
AC_CONFIG_SRCDIR([src])
AC_CONFIG_HEADERS([src/config.h:src/config.h.in])

# assuming that calling 'R' will pick the right one, even though we might be running in Rdevel...
# workaround is for R_HOME to be set in advance, preventing the call to the wrong R.
: ${R_HOME=`R RHOME`}
if test -z "${R_HOME}"; then
  echo "could not determine R_HOME"
  exit 1
else
  echo "found R_HOME at: ${R_HOME}"
fi
R_BIN="${R_HOME}/bin/R"
CC=`"${R_BIN}" CMD config CC`
CPP=`"${R_BIN}" CMD config CPP`
CFLAGS=`"${R_BIN}" CMD config CFLAGS`
CPPFLAGS=`"${R_BIN}" CMD config CPPFLAGS`
LIBS="${PKG_LIBS}"

echo "${R_BIN}script -e 'R.home()' gives:"
${R_BIN}script -e 'R.home()'

#AC_OUTPUT
