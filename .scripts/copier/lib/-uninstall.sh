#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_copier_uninstall() {
    local FUNCTION_NAME="_copier_uninstall"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_execPackageUninstall "copier"
}