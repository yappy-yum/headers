#!/bin/bash

# Check if a title is provided
if [ -z "$1" ]; then
  echo "Usage: ./python.sh <title>"
  exit 1
fi

# Capture the input title
TITLE="$*"

# Calculate padding to center the title
TITLE_LENGTH=${#TITLE}
TOTAL_WIDTH=66  # Account for the '#' symbols at both ends
PADDING=$(( (TOTAL_WIDTH - TITLE_LENGTH - 2) / 2 ))  # Subtract 2 for the space occupied by '#' symbols

# Create the header
echo "# $(printf '#%.0s' {1..64}) #"
printf "# %${PADDING}s%s%$((TOTAL_WIDTH - TITLE_LENGTH - PADDING - 2))s #\n" "" "$TITLE" ""
echo "# $(printf '#%.0s' {1..64}) #"
