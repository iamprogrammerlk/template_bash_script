#!/bin/bash

_page_width=120
_divider_symbol="#"
_fill_symbol=" "
_border="###"

function ui_message_box_divider()
{
  local divider=""
  local i=1
  while [[ $i -le $_page_width ]] ; do
    divider="$divider$_divider_symbol"
    (( i += 1 ))
  done
  echo -e "$divider"
}

function ui_message_box_fill()
{
  local fill=""
  local border_width=$(expr length "$_border")
  local _page_width=$(( $_page_width - ($border_width * 2) ))
  local i=1
  while [[ $i -le $_page_width ]] ; do
    fill="$fill$_fill_symbol"
    (( i += 1 ))
  done
  echo -e "$_border$fill$_border"
}

# BEWARE: Usage of unicode characters and emojis will messed up the text alignment.
# BEWARE: Usage of odd(cannot be divided by 2 evenly) numbers of characters will messed up the text alignment. use space
#         to make the character count to even number...
# Parameter $1 string to be centered (input)
function ui_message_box_title_centered()
{
  if [ -z ${1+x} ]; then
    echo "Runtime Error : Invalid argument. 'ui_message_box_title_centered <STRING>'" >&2
    exit 1
  fi
  local before_fill=""
  local after_fill=""
  local string_length=$(expr length "$1")
  local border_width=$(expr length "$_border")
  local _page_width=$(( $_page_width - ($border_width * 2) ))
  local space_length=$(( (($_page_width - $string_length) / 2) ))
  local i=1
  while [[ $i -le $space_length ]] ; do
    before_fill="$before_fill$_fill_symbol"
    after_fill="$after_fill$_fill_symbol"
    (( i += 1 ))
  done
  echo -e "$_border$before_fill$1$after_fill$_border"
}

# BEWARE: Usage of unicode characters and emojis will messed up the text alignment.
# BEWARE: Usage of odd(cannot be divided by 2 evenly) numbers of characters will messed up the text alignment. use space
#         to make the character count to even number...
# Parameter $1 string to be aline left (input)
function ui_message_box_title_left()
{
  if [ -z ${1+x} ]; then
    echo "Runtime Error : Invalid argument. 'ui_message_box_title_left <STRING>'" >&2
    exit 1
  fi
  local after_fill=""
  local string_length=$(expr length "$1")
  local border_width=$(expr length "$_border")
  local _page_width=$(( $_page_width - ($border_width * 2) ))
  local space_length=$(( ($_page_width - $string_length) ))
  local i=1
  while [[ $i -le $space_length ]] ; do
    after_fill="$after_fill$_fill_symbol"
    (( i += 1 ))
  done
  echo -e "$_border$1$after_fill$_border"
}

# Parameter $1 string to be in centered header box (input), Default '$APP_NAME v$APP_VERSION'
# Parameter $2 foreground color for header box, Default 'style_foreground_purple'
function show_header()
{
  if [ -z ${1+x} ]; then
    local title="$APP_NAME v$APP_VERSION"
  else
    local title="$1"
  fi
  if [ -z ${2+x} ]; then
    local style_function="style_foreground_purple"
  else
    local style_function="$2"
  fi
  $style_function "$(ui_message_box_divider)"
  new_line
  $style_function "$(ui_message_box_fill)"
  new_line
  $style_function "$(ui_message_box_title_centered "$title")"
  new_line
  $style_function "$(ui_message_box_fill)"
  new_line
  $style_function "$(ui_message_box_divider)"
  new_line
}