#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Hari Sekhon
#  Date: 2020-09-16 08:54:54 +0100 (Wed, 16 Sep 2020)
#
#  https://github.com/harisekhon/bash-tools
#
#  License: see accompanying Hari Sekhon LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/harisekhon
#

# Lists the BigQuery datasets in the current GCP project, one per line
#
# Requires GCloud SDK which must be configured and authorized for the project
#
# Tested on Google BigQuery

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

bq ls --headless --format=json |
jq -r '.[].datasetReference.datasetId'
