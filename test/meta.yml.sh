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
MY_FILE="meta.yml"
MY_PATH="${SCRIPTPATH}/../${FLAME}${MY_FILE}"


if grep -Eq '^devilbox_info:$' "${MY_PATH}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (meta.yml) ${CLR_TEST}devilbox_info${CLR_RST} key found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (meta.yml) ${CLR_TEST}devilbox_info${CLR_RST} key missing\n"
	printf "The devilbox_info key is required as the root key without spaces before and after\n"
	exit 1
fi

if grep -Eq '^\s\sname:\s.*$' "${MY_PATH}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (meta.yml) ${CLR_TEST}name${CLR_RST} key found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (meta.yml) ${CLR_TEST}name${CLR_RST} key missing\n"
	printf "The name key is is required with two spaces indented before and one after the colon.\n"
	exit 1
fi

if grep -Eq '^\s\sdescription:\s.*$' "${MY_PATH}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (meta.yml) ${CLR_TEST}description${CLR_RST} key found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (meta.yml) ${CLR_TEST}description${CLR_RST} key missing\n"
	printf "The description key is is required with two spaces indented before and one after the colon.\n"
	exit 1
fi

if grep -Eq '^\s\sauthor:\s.*$' "${MY_PATH}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (meta.yml) ${CLR_TEST}author${CLR_RST} key found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (meta.yml) ${CLR_TEST}author${CLR_RST} key missing\n"
	printf "The author key is is required with two spaces indented before and one after the colon.\n"
	exit 1
fi

if grep -Eq '^\s\smin_devilbox_version:\s.*$' "${MY_PATH}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (meta.yml) ${CLR_TEST}min_devilbox_version${CLR_RST} key found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (meta.yml) ${CLR_TEST}min_devilbox_version${CLR_RST} key missing\n"
	printf "The min_devilbox_version key is is required with two spaces indented before and one after the colon.\n"
	exit 1
fi

if grep -Eq '^\s\stags:$' "${MY_PATH}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (meta.yml) ${CLR_TEST}tags${CLR_RST} key found\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (meta.yml) ${CLR_TEST}tags${CLR_RST} key missing\n"
	printf "The tags key is is required with two spaces indented before and a newline after the colon.\n"
	exit 1
fi
