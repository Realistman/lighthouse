#!/usr/bin/env bash

##
# @license Copyright 2020 The Lighthouse Authors. All Rights Reserved.
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
##

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup dependencies.
export DEPOT_TOOLS=~/tools/depot-tools
export DEVTOOLS_PATH=~/tmp/devtools/devtools-frontend
export BLINK_TOOLS_PATH=~/tmp/blink_tools
export PATH=$DEPOT_TOOLS_PATH:$PATH

bash "$SCRIPT_DIR/download-depot-tools.sh"
bash "$SCRIPT_DIR/download-devtools.sh"
bash "$SCRIPT_DIR/download-blink-tools.sh"
node "$SCRIPT_DIR/download-content-shell.js"

# Run web tests.
bash "$SCRIPT_DIR/run-web-tests.sh" $*
