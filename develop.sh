#!/bin/bash
set -ex

export BASE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${BASE}"


source env.sh

zola serve