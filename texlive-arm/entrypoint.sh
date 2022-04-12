#!/usr/bin/bash
# configure and run the action-runner

/usr/bin/bash -c "/actions-runner/config.sh --url $GITHUB_URL/$RUNNER_REPO --token $RUNNER_TOKEN --labels $RUNNER_LABELS"

/usr/bin/bash -c "/actions-runner/run.sh"

exit 0