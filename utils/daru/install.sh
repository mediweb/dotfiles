#!/bin/sh
source "$(dirname $0)/../../scripts/common"

# Required so Daru dependencies can be installed.
# See: http://stackoverflow.com/questions/7379729/problems-installing-gsl-gem#comment27524081_12029573
brew_install gsl1 gsl
