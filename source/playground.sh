#!/bin/bash

clear

# bash debug on
set -euo pipefail

export APP_NAME="Bash Playground"
export APP_SLUG="bash_playground"
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

if [ ! -f "$APP_ROOT/library/style.sh" ]; then
  echo "Runtime Error : '/library/style.sh' is require to run '$APP_NAME'." >&2
  echo ""
  exit 1
fi
. $APP_ROOT/library/style.sh

# demo_style_text_format -----------------------------------------------------------------------------------------------
demo_style_text_format(){
  style_normal "$demo_string_to_be_format style_normal"
  new_line
  style_bold "$demo_string_to_be_format style_bold"
  new_line
  style_italic "$demo_string_to_be_format style_italic"
  new_line
  style_underline "$demo_string_to_be_format style_underline"
  new_line
  style_blinking "$demo_string_to_be_format style_blinking"
  new_line
  style_reverse_video "$demo_string_to_be_format style_reverse_video"
  new_line
}

# demo_style_text_foreground -------------------------------------------------------------------------------------------
demo_style_text_foreground(){
  style_foreground_black "$demo_string_to_be_format style_foreground_black"
  new_line
  style_foreground_blue "$demo_string_to_be_format style_foreground_blue"
  new_line
  style_foreground_blue_bold "$demo_string_to_be_format style_foreground_blue_bold"
  new_line
  style_foreground_brown "$demo_string_to_be_format style_foreground_brown"
  new_line
  style_foreground_brown_bold "$demo_string_to_be_format style_foreground_brown_bold"
  new_line
  style_foreground_cyan "$demo_string_to_be_format style_foreground_cyan"
  new_line
  style_foreground_cyan_bold "$demo_string_to_be_format style_foreground_cyan_bold"
  new_line
  style_foreground_gray "$demo_string_to_be_format style_foreground_gray"
  new_line
  style_foreground_gray_bold "$demo_string_to_be_format style_foreground_gray_bold"
  new_line
  style_foreground_green "$demo_string_to_be_format style_foreground_green"
  new_line
  style_foreground_green_bold "$demo_string_to_be_format style_foreground_green_bold"
  new_line
  style_foreground_purple "$demo_string_to_be_format style_foreground_purple"
  new_line
  style_foreground_purple_bold "$demo_string_to_be_format style_foreground_purple_bold"
  new_line
  style_foreground_red "$demo_string_to_be_format style_foreground_red"
  new_line
  style_foreground_red_bold "$demo_string_to_be_format style_foreground_red_bold"
  new_line
  style_foreground_white "$demo_string_to_be_format style_foreground_white"
  new_line
}

# demo_style_text_background -------------------------------------------------------------------------------------------
demo_style_text_background(){
  style_background_black "$demo_string_to_be_format style_background_black"
  new_line
  style_background_blue "$demo_string_to_be_format style_background_blue"
  new_line
  style_background_blue_bold "$demo_string_to_be_format style_background_blue_bold"
  new_line
  style_background_brown "$demo_string_to_be_format style_background_brown"
  new_line
  style_background_brown_bold "$demo_string_to_be_format style_background_brown_bold"
  new_line
  style_background_cyan "$demo_string_to_be_format style_background_cyan"
  new_line
  style_background_cyan_bold "$demo_string_to_be_format style_background_cyan_bold"
  new_line
  style_background_gray "$demo_string_to_be_format style_background_gray"
  new_line
  style_background_gray_bold "$demo_string_to_be_format style_background_gray_bold"
  new_line
  style_background_green "$demo_string_to_be_format style_background_green"
  new_line
  style_background_green_bold "$demo_string_to_be_format style_background_green_bold"
  new_line
  style_background_purple "$demo_string_to_be_format style_background_purple"
  new_line
  style_background_purple_bold "$demo_string_to_be_format style_background_purple_bold"
  new_line
  style_background_red "$demo_string_to_be_format style_background_red"
  new_line
  style_background_red_bold "$demo_string_to_be_format style_background_red_bold"
  new_line
  style_background_white "$demo_string_to_be_format style_background_white"
  new_line
}

# demo_style_combine_use_case ------------------------------------------------------------------------------------------
demo_style_combine_use_case()
{
  echo -n "$(style_blinking "<<-- SAMPLE -->>") Mix the Foreground Color $(style_foreground_brown "Brown") with the " 
  echo -n "$(style_foreground_brown_bold "Brown Bold") and Background Color $(style_background_purple " Purple ") on "
  echo "$(style_reverse_video "$(style_underline " BASH ")")"
  # No 'new_line' need here, becurse last 'echo' don't have '-n' flag
}


demo_style_text_format
empty_line
demo_style_text_foreground
empty_line
demo_style_text_background
empty_line
demo_style_combine_use_case
empty_line
