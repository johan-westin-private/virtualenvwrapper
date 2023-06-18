# Setup globals used by the tests

#set -x

# tmplocation=${TMPDIR:-/tmp}
# export WORKON_HOME="$(echo ${tmplocation}/WORKON_HOME.$$ | sed 's|//|/|g')"
# export PROJECT_HOME="$(echo ${tmplocation}/PROJECT_HOME.$$ | sed 's|//|/|g')"

WORKON_HOME=$(mktemp -d -t "WORKON_HOME.XXXX.$$")
export WORKON_HOME
PROJECT_HOME=$(mktemp -d -t "PROJECT_HOME.XXXX.$$")
export PROJECT_HOME

#unset HOOK_VERBOSE_OPTION

# tox no longer exports these variables by default, so set them
# ourselves to ensure the tests that rely on the values work
USER=$(id -u -n)
export USER
HOME="$(cd && echo "${PWD}")"
export HOME
