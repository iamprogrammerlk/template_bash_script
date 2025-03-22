#!/bin/bash

clear

# bash debug on
set -euo pipefail

export APP_NAME="Bash Playground"
export APP_SLUG="bash_playground"
export APP_VERSION="1.0.0"
export APP_ROOT=$(pwd)
export APP_HOME=$HOME/.config/$APP_SLUG

app_url="https://github.com/iamprogrammerlk/i_am_mkcert_bot"
app_license="MIT license"
app_license_url="https://github.com/iamprogrammerlk/template_bash_script?tab=MIT-1-ov-file"
app_author="I am Programmer"
app_author_url="https://iamprogrammer.lk"

cd $HOME
if [ ! -d "$APP_HOME" ]; then
  mkdir "$APP_HOME"
fi

if [ ! -f "$APP_ROOT/library/style.sh" ]; then
  echo "Runtime Error : '/library/style.sh' is require to run '$APP_NAME'." >&2
  echo ""
  exit 1
fi
. $APP_ROOT/library/style.sh

if [ ! -f "$APP_ROOT/library/ui.sh" ]; then
  echo "Runtime Error : '/library/ui.sh' is require to run '$APP_NAME'." >&2
  echo ""
  exit 1
fi
. $APP_ROOT/library/ui.sh





# style_demo -----------------------------------------------------------------------------------------------------------
function style_demo(){

  string_to_format="This string formatting is applied by calling function "

  style_normal "$string_to_format style_normal"
  style_bold "$string_to_format style_bold"
  style_italic "$string_to_format style_italic"
  style_underline "$string_to_format style_underline"
  style_blinking "$string_to_format style_blinking"
  style_reverse_video "$string_to_format style_reverse_video"

  echo ""

  style_foreground_black "$string_to_format style_foreground_black"
  style_foreground_red "$string_to_format style_foreground_red"
  style_foreground_green "$string_to_format style_foreground_green"
  style_foreground_brown "$string_to_format style_foreground_brown"
  style_foreground_blue "$string_to_format style_foreground_blue"
  style_foreground_purple "$string_to_format style_foreground_purple"
  style_foreground_cyan "$string_to_format style_foreground_cyan"
  style_foreground_light_gray "$string_to_format style_foreground_light_gray"

  echo ""

  style_foreground_dark_gray "$string_to_format style_foreground_dark_gray"
  style_foreground_light_red "$string_to_format style_foreground_light_red"
  style_foreground_light_green "$string_to_format style_foreground_light_green"
  style_foreground_yellow "$string_to_format style_foreground_yellow"
  style_foreground_light_blue "$string_to_format style_foreground_light_blue"
  style_foreground_light_purple "$string_to_format style_foreground_light_purple"
  style_foreground_light_cyan "$string_to_format style_foreground_light_cyan"
  style_foreground_white "$string_to_format style_foreground_white"

  echo ""

  style_background_black "$string_to_format style_background_black"
  style_background_red "$string_to_format style_background_red"
  style_background_green "$string_to_format style_background_green"
  style_background_brown "$string_to_format style_background_brown"
  style_background_blue "$string_to_format style_background_blue"
  style_background_purple "$string_to_format style_background_purple"
  style_background_cyan "$string_to_format style_background_cyan"
  style_background_light_gray "$string_to_format style_background_light_gray"

  echo ""

  style_background_dark_gray "$string_to_format style_background_dark_gray"
  style_background_light_red "$string_to_format style_background_light_red"
  style_background_light_green "$string_to_format style_background_light_green"
  style_background_yellow "$string_to_format style_background_yellow"
  style_background_light_blue "$string_to_format style_background_light_blue"
  style_background_light_purple "$string_to_format style_background_light_purple"
  style_background_light_cyan "$string_to_format style_background_light_cyan"
  style_background_white "$string_to_format style_background_white"

  # combine use case

  echo ""

  echo "$(style_blinking "<<-- SAMPLE -->>") Mix the Foreground Color $(style_foreground_brown "Brown") with the $(style_foreground_yellow "Yellow") and Background Color $(style_background_purple " Purple ") on $(style_reverse_video "$(style_underline " BASH ")")"
  echo ""

}
# style_demo

# print_header ---------------------------------------------------------------------------------------------------------
function print_header()
{
  style_foreground_purple "$(ui_header_divider)"
  style_foreground_purple "$(ui_header_fill)"
  style_foreground_purple "$(ui_header_title_centered "$APP_NAME v$APP_VERSION")"
  style_foreground_purple "$(ui_header_fill)"
  style_foreground_purple "$(ui_header_divider)"
  echo ""
}
print_header

# print_copyright ------------------------------------------------------------------------------------------------------
function print_copyright()
{
  local msg_01="   Developer : $app_author [$app_author_url] "
  local msg_02="     License : $app_license [$app_license_url]"
  local msg_03="     Version : $APP_VERSION"
  style_foreground_purple "$(ui_header_divider)"
  style_foreground_purple "$(ui_header_fill)"
  style_foreground_purple "$(ui_header_title_left "$msg_01")"
  style_foreground_purple "$(ui_header_title_left "$msg_02")"
  style_foreground_purple "$(ui_header_title_left "$msg_03")"
  style_foreground_purple "$(ui_header_fill)"
  style_foreground_purple "$(ui_header_divider)"
  echo ""
}
print_copyright
