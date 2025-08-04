#!/bin/bash

clear

# bash debug on
set -euo pipefail

export APP_NAME="Template Bash Script - Playground"
export APP_SLUG="template_bash_script_playground"
export APP_VERSION="1.0.0"
export APP_ROOT=$(pwd)
export APP_HOME=$HOME/.config/$APP_SLUG

declare -A app_configuration=(
  ["app_url"]="https://github.com/iamprogrammerlk/template_bash_script"
  ["app_license"]="MIT license"
  ["app_license_url"]="https://github.com/iamprogrammerlk/template_bash_script?tab=MIT-1-ov-file"
  ["app_author"]="I am Programmer"
  ["app_author_url"]="https://iamprogrammer.lk"
)

demo_string_to_be_format="This string formatting is applied by calling function "

cd $HOME
if [ ! -d "$APP_HOME" ]; then
  mkdir "$APP_HOME"
fi

if [ ! -f "$APP_ROOT/library/utility.sh" ]; then
  echo "Runtime Error : '/library/utility.sh' is require to run '$APP_NAME'." >&2
  echo ""
  exit 1
fi
. $APP_ROOT/library/utility.sh
