#!/bin/bash


# BEWARE: There are some differences between colors when combining colors with bold text attribute:
#         By default bold text has set foreground color to blue

# BEWARE: Below functions can't be use correctly with other string formatters 
#         (like style_italic, style_underline, etc...), since it override text to bold by default.
#         style_foreground_dark_gray
#         style_foreground_light_red
#         style_foreground_light_green
#         style_foreground_yellow
#         style_foreground_light_blue
#         style_foreground_light_purple
#         style_foreground_light_cyan
#         style_foreground_white
#         style_background_dark_gray
#         style_background_light_red
#         style_background_light_green
#         style_background_yellow
#         style_background_light_blue
#         style_background_light_purple
#         style_background_light_cyan
#         style_background_white


# Set string to normal characters
# Parameter $1 string to be formatted (input)
function style_normal()
{
  echo -e "\e[0m$1\e[0m"
}

# Set string to bold characters
# Parameter $1 string to be formatted (input)
function style_bold()
{
  echo -e "\e[1m$1\e[0m"
}

# TODO: \e[2m unknown character formatting

# Set string to italic characters
# Parameter $1 string to be formatted (input)
function style_italic()
{
  echo -e "\e[3m$1\e[0m"
}

# Set string to underline characters
# Parameter $1 string to be formatted (input)
function style_underline()
{
  echo -e "\e[4m$1\e[0m"
}

# Set string to blinking characters
# Parameter $1 string to be formatted (input)
function style_blinking()
{
  echo -e "\e[5m$1\e[0m"
}

# TODO: \e[6m unknown character formatting

# Set string to reverse video characters
# Parameter $1 string to be formatted (input)
function style_reverse_video()
{
  echo -e "\e[7m$1\e[0m"
}

# Set string foreground color to black
# Parameter $1 string to be formatted (input)
function style_foreground_black()
{
  echo -e "\e[30m$1\e[0m"
}

# Set string foreground color to red
# Parameter $1 string to be formatted (input)
function style_foreground_red()
{
  echo -e "\e[31m$1\e[0m"
}

# Set string foreground color to green
# Parameter $1 string to be formatted (input)
function style_foreground_green()
{
  echo -e "\e[32m$1\e[0m"
}

# Set string foreground color to brown
# Parameter $1 string to be formatted (input)
function style_foreground_brown()
{
  echo -e "\e[33m$1\e[0m"
}

# Set string foreground color to blue
# Parameter $1 string to be formatted (input)
function style_foreground_blue()
{
  echo -e "\e[34m$1\e[0m"
}

# Set string foreground color to purple
# Parameter $1 string to be formatted (input)
function style_foreground_purple()
{
  echo -e "\e[35m$1\e[0m"
}

# Set string foreground color to cyan
# Parameter $1 string to be formatted (input)
function style_foreground_cyan()
{
  echo -e "\e[36m$1\e[0m"
}

# Set string foreground color to light gray
# Parameter $1 string to be formatted (input)
function style_foreground_light_gray()
{
  echo -e "\e[37m$1\e[0m"
}

# Set string foreground color to dark gray
# Parameter $1 string to be formatted (input)
function style_foreground_dark_gray()
{
  echo -e "\e[1;30m$1\e[0m"
}

# Set string foreground color to light red
# Parameter $1 string to be formatted (input)
function style_foreground_light_red()
{
  echo -e "\e[1;31m$1\e[0m"
}

# Set string foreground color to light green
# Parameter $1 string to be formatted (input)
function style_foreground_light_green()
{
  echo -e "\e[1;32m$1\e[0m"
}

# Set string foreground color to yellow
# Parameter $1 string to be formatted (input)
function style_foreground_yellow()
{
  echo -e "\e[1;33m$1\e[0m"
}

# Set string foreground color to light blue
# Parameter $1 string to be formatted (input)
function style_foreground_light_blue()
{
  echo -e "\e[1;34m$1\e[0m"
}

# Set string foreground color to light purple
# Parameter $1 string to be formatted (input)
function style_foreground_light_purple()
{
  echo -e "\e[1;35m$1\e[0m"
}

# Set string foreground color to light cyan
# Parameter $1 string to be formatted (input)
function style_foreground_light_cyan()
{
  echo -e "\e[1;36m$1\e[0m"
}

# Set string foreground color to white
# Parameter $1 string to be formatted (input)
function style_foreground_white()
{
  echo -e "\e[1;37m$1\e[0m"
}

# Set string background color to black
# Parameter $1 string to be formatted (input)
function style_background_black()
{
  echo -e "\e[40m$1\e[0m"
}

# Set string background color to red
# Parameter $1 string to be formatted (input)
function style_background_red()
{
  echo -e "\e[41m$1\e[0m"
}

# Set string background color to green
# Parameter $1 string to be formatted (input)
function style_background_green()
{
  echo -e "\e[42m$1\e[0m"
}

# Set string background color to brown
# Parameter $1 string to be formatted (input)
function style_background_brown()
{
  echo -e "\e[43m$1\e[0m"
}

# Set string background color to blue
# Parameter $1 string to be formatted (input)
function style_background_blue()
{
  echo -e "\e[44m$1\e[0m"
}

# Set string background color to purple
# Parameter $1 string to be formatted (input)
function style_background_purple()
{
  echo -e "\e[45m$1\e[0m"
}

# Set string background color to cyan
# Parameter $1 string to be formatted (input)
function style_background_cyan()
{
  echo -e "\e[46m$1\e[0m"
}

# Set string background color to light gray
# Parameter $1 string to be formatted (input)
function style_background_light_gray()
{
  echo -e "\e[47m$1\e[0m"
}


# Set string background color to dark gray
# Parameter $1 string to be formatted (input)
function style_background_dark_gray()
{
  echo -e "\e[1;40m$1\e[0m"
}

# Set string background color to light red
# Parameter $1 string to be formatted (input)
function style_background_light_red()
{
  echo -e "\e[1;41m$1\e[0m"
}

# Set string background color to light green
# Parameter $1 string to be formatted (input)
function style_background_light_green()
{
  echo -e "\e[1;42m$1\e[0m"
}

# Set string background color to yellow
# Parameter $1 string to be formatted (input)
function style_background_yellow()
{
  echo -e "\e[1;43m$1\e[0m"
}

# Set string background color to light blue
# Parameter $1 string to be formatted (input)
function style_background_light_blue()
{
  echo -e "\e[1;44m$1\e[0m"
}

# Set string background color to light purple
# Parameter $1 string to be formatted (input)
function style_background_light_purple()
{
  echo -e "\e[1;45m$1\e[0m"
}

# Set string background color to light cyan
# Parameter $1 string to be formatted (input)
function style_background_light_cyan()
{
  echo -e "\e[1;46m$1\e[0m"
}

# Set string background color to white
# Parameter $1 string to be formatted (input)
function style_background_white()
{
  echo -e "\e[1;47m$1\e[0m"
}
