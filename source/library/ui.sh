#!/bin/bash

_page_width=120
_divider_symbol="#"
_fill_symbol=" "
_border="###"

function ui_header_divider()
{
  local divider=""
  local i=1
  while [[ $i -le $_page_width ]] ; do
    divider="$divider$_divider_symbol"
    (( i += 1 ))
  done
  echo -e "$divider"
}

function ui_header_fill()
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
function ui_header_title_centered()
{
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
function ui_header_title_left()
{
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


