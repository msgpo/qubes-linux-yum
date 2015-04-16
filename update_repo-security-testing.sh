#!/bin/sh

REPOS_TO_UPDATE="$1/security-testing/dom0/fc* $1/security-testing/vm/*"

. `dirname $0`/update_repo.sh

if [ "$AUTOMATIC_UPLOAD" = 1 ]; then
    `dirname $0`/sync_qubes-os.org_repo.sh "$1"
fi
