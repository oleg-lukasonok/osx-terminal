#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_base_localStorage_reset_file() {
  local FUNCTION_NAME="_base_localStorage_reset_file"
  _loggers_infoX "${FUNCTION_NAME}"

  local FILE_RELATIVE_PATH="${1}"

  if
    [ -z "${FILE_RELATIVE_PATH}" ]
  then
    _loggers_error
    _loggers_errorX "${FUNCTION_NAME}" "Missing mandatory 1st paramter (FILE_RELATIVE_PATH)!"
    _loggers_error
    exit 1
  fi

  rm "${FILE_RELATIVE_PATH}"

  touch "${FILE_RELATIVE_PATH}"
}
