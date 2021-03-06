#!/bin/bash

RSH_STRING="/usr/bin/sshpass -p ${DEPLOY_PASSWORD} ssh -o StrictHostKeyChecking=no -l ${DEPLOY_USER}"

DEST=${TRAVIS_BRANCH:-test}
echo "Publishing to ${DEST}"

rsync -rav --delete --rsh="${RSH_STRING}" output/ russianfedora.pro:~/"${DEST}"

# Run nikola's post deploy hooks
rsync -rav --delete --rsh="${RSH_STRING}" russianfedora.pro:~/"${DEST}"/cache cache/ || true
nikola deploy
rsync -rav --delete --rsh="${RSH_STRING}" cache/ russianfedora.pro:~/"${DEST}"/cache
