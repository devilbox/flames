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
### Test files for availability
###

MY_FILE="README.md"
if test -f "${SCRIPTPATH}/../${FLAME}${MY_FILE}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} not found in: ${FLAME}\n"
	printf "Each Devilbox flame requires a well documented README.md\n"
	exit 1
fi

MY_FILE="docker-compose.override.yml"
if test -f "${SCRIPTPATH}/../${FLAME}${MY_FILE}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} not found in: ${FLAME}\n"
	printf "Each Devilbox flame consists of a docker-compose.override.yml file\n"
	exit 1
fi

MY_FILE="env-example"
if test -f "${SCRIPTPATH}/../${FLAME}${MY_FILE}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} not found in: ${FLAME}\n"
	printf "Each Devilbox flame requires a env-example (even if empty) with all available variables\n"
	exit 1
fi

MY_FILE="meta.yml"
if test -f "${SCRIPTPATH}/../${FLAME}${MY_FILE}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (avail)    ${CLR_TEST}${MY_FILE}${CLR_RST} not found in: ${FLAME}\n"
	printf "Each Devilbox flame requires a meta.yml file for automatic parsing of project information\n"
	exit 1
fi
