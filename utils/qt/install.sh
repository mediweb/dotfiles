#!/bin/sh
source "$(dirname $0)/../../scripts/common"

brew_install qt@5.5 /usr/local/opt/qt@5.5/bin/macdeployqt
