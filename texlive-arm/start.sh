#!/usr/bin/bash
# configure and run the action-runner

/usr/bin/bash -c "/actions-runner/config.sh --url $URL --token $TOKEN --labels texlive"

/usr/bin/bash -c "/actions-runner/run.sh"

exit 0