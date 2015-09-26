#!/bin/sh

R CMD build configrdev
mkdir -p /tmp/configrdev
CONFIGRDEVTAR=`ls configrdev_*.tar.gz`
cp $CONFIGRDEVTAR /tmp/configrdev
docker run --rm -ti -v /tmp/configrdev:/mnt rocker/r-devel-ubsan-clang sh -c "R CMD INSTALL /mnt/$CONFIGRDEVTAR && RD CMD INSTALL /mnt/$CONFIGRDEVTAR"
# gives the correct R_HOME in both 'configure' and R contexts.
