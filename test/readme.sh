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
CLR_RST="\033[m"       # Reset to normal


###
### Test table availability in README.md
###
README="${SCRIPTPATH}/../README.md"


FLAME_NAME="$( basename ${FLAME} )"
if grep -Eq "\|\s+\[${FLAME_NAME}\]\(flames/${FLAME_NAME}/README.md\)\s+\|.+\|\$" "${README}"; then
	printf "${CLR_OK}[OK]${CLR_RST}  (README)   Table entry found in main README.md\n"
else
	printf "${CLR_ERR}[ERR]${CLR_RST} (README)   Table entry not found in main README.md\n"
	printf "The repository's main README.md must have a table entry for each Flame for example:\n\n"
	printf "## Available Flames\n\n"
	printf "| Flame | Description |\n"
	printf "|-------|-------------|\n"
	printf "| [elastic](flames/elastic/README.md) | Elastic GUI clients |\n\n"
	exit 1
fi
