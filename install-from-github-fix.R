##    code from https://github.com/r-lib/devtools/issues/1772#issuecomment-384406969          ##

install.packages("pkgbuild", "G:/Program Files/R/R-3.5.1/library") # pkgbuild is not available (for R version 3.5.0)
install.packages("devtools", "G:/Program Files/R/R-3.5.1/library") # make sure you have the latest version from CRAN
library(devtools, lib.loc = "G:/Program Files/R/R-3.5.1/library") # load package
devtools::install_github("r-lib/pkgbuild") # install updated version of pkgbuild from GitHub
library(pkgbuild, lib.loc = "G:/Program Files/R/R-3.5.1/library") # load package
find_rtools() # should be TRUE, assuming you have Rtools 3.5


### if above doesn't work, try this: (
### taken from http://rpubs.com/Xtophe/GganimateOnWindows)
Sys.setenv(PATH = paste(
    Sys.getenv("PATH"),
    "C:/Rtools/bin/",
    "C:/Rtools/mingw_64/bin",
    sep = ";"
))
Sys.setenv(BINPREF = "C:/Rtools/mingw_64/bin/")
