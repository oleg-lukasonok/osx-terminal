#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_base_exportEnvVariable() {
  local FUNCTION_NAME="_base_exportEnvVariable"
  _loggers_infoX "${FUNCTION_NAME}"

  local TMP_KEY="${1}"
  local TMP_VALUE="${2}"

  if
    [ true ] &&
      [ ! -z "${TMP_KEY}" ] &&
      [ ! -z "${TMP_VALUE}" ]
  then
    printf -v "${TMP_KEY}" "${TMP_VALUE}"
    export $TMP_KEY
  else
    _loggers_warnX "${FUNCTION_NAME}"
    _loggers_warnX "${FUNCTION_NAME}" "Missing one of passed parameters!"
    _loggers_warnX "${FUNCTION_NAME}" ""
    _loggers_warnX "${FUNCTION_NAME}" "TMP_KEY: ${TMP_KEY}"
    _loggers_warnX "${FUNCTION_NAME}" "TMP_VALUE: ${TMP_VALUE}"
  fi

}
