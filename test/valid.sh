#!/bin/sh

set -e
set -u


###
### Flame to check
###

FLAME="${1}"


###
### Required variables
###

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
CLR_ERR="\033[0;31m"   # Red
CLR_OK="\033[0;32m"    # Green
CLR_TEST="\033[0;33m"  # Yellow
CLR_RST="\033[m"       # Reset to normal


###
### Test files for validity
###

if yamllint -c ${SCRIPTPATH}/../.yamllint "${SCRIPTPATH}/../${FLAME}docker-compose.override.yml"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (valid)    ${CLR_TEST}docker-compose.override.yml${CLR_RST}\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (valid)    ${CLR_TEST}docker-compose.override.yml${CLR_RST} invalid\n"
	printf "docker-compose.override.yml contains invalid yaml\n"
	exit 1
fi

if yamllint -c ${SCRIPTPATH}/../.yamllint "${SCRIPTPATH}/../${FLAME}meta.yml"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (valid)    ${CLR_TEST}meta.yml${CLR_RST}\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (valid)    ${CLR_TEST}meta.yml${CLR_RST} invalid\n"
	printf "meta.yml contains invalid yaml\n"
	exit 1
fi

if shellcheck -e 'SC2034,SC2148' "${SCRIPTPATH}/../${FLAME}env-example"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (valid)    ${CLR_TEST}env-example${CLR_RST}\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (valid)    ${CLR_TEST}env-example${CLR_RST} invalid\n"
	printf "env-example invalid definitions\n"
	exit 1
fi
