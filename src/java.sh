#!/bin/bash

# Check if a title is provided
if [ -z "$1" ]; then
  echo "Usage: ./java.sh <title>"
  exit 1
fi

# Input title from arguments
input="$*"

# Calculate padding for centering
total_width=64
title_length=${#input}
padding=$(( (total_width - title_length) / 2 ))

# Create the header
header="    /*//////////////////////////////////////////////////////////////\n"
header+="    $(printf "%*s" $padding '')$input\n"
header+="    //////////////////////////////////////////////////////////////*/"

# Print the header to the console
echo -e "$header"