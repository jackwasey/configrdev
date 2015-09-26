.onAttach <- function(libname, pkgname) {
  message("checking R_HOME from within R after installation")
  message(R.home())
}

