AC_PREREQ([2.62])
AC_INIT(configrdev)
AC_CONFIG_SRCDIR([src])
AC_CONFIG_HEADERS([src/config.h:src/config.h.in])

echo "is R_HOME already set?"
echo "R_HOME = ${R_HOME}"

: ${R_HOME=`R RHOME`}
if test -z "${R_HOME}"; then
  echo "could not determine R_HOME"
  exit 1
else
  echo "found R_HOME at: ${R_HOME}"
fi

: ${RD_HOME=`RD RHOME`}
echo "found RD_HOME at: ${RD_HOME}"

R_BIN="${R_HOME}/bin/R"
CC=`"${R_BIN}" CMD config CC`
CPP=`"${R_BIN}" CMD config CPP`
CFLAGS=`"${R_BIN}" CMD config CFLAGS`
CPPFLAGS=`"${R_BIN}" CMD config CPPFLAGS`
LIBS="${PKG_LIBS}"

echo "${R_BIN}script -e 'R.home()' gives:"
${R_BIN}script -e 'R.home()'

#AC_OUTPUT
