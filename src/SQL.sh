#!/bin/bash

# Check if a title is provided
if [ -z "$1" ]; then
  echo "Usage: ./sql.sh <title>"
  exit 1
fi

# Capture the input title
TITLE="$*"

# Calculate padding to center the title
TITLE_LENGTH=${#TITLE}
TOTAL_WIDTH=74  # Adjust width to fit title with proper space for comment arrows
PADDING=$(( (TOTAL_WIDTH - TITLE_LENGTH) / 2 ))  # Subtract the length of the title to calculate padding

# Create the dashed lines for the top and bottom
echo "------------------------------------------------------------------------------"

# Create the comment line with the title centered
printf -- "-- %${PADDING}s%s%$((TOTAL_WIDTH - TITLE_LENGTH - PADDING - 2))s --\n" "" "$TITLE" ""

# Create the dashed lines for the bottom
echo "------------------------------------------------------------------------------"
