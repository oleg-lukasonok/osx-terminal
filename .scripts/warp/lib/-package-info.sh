#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_warp_package_info() {
    local FUNCTION_NAME="_warp_package_info"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_packageInfo "--cask warp"
}
