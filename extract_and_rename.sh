#!/bin/bash

# Define the source and target directories
SOURCE_DIR="/Users/zul/Downloads/Fabrics"
TARGET_DIR="/Users/zul/Downloads/AllFabricImages"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Initialize a counter for naming images sequentially
COUNTER=1

# Iterate over each fabric directory
for FABRIC in "$SOURCE_DIR"/*; do
  if [ -d "$FABRIC" ]; then # Check if it's a directory
    # Iterate over each ID'd folder within the fabric directory
    for ID_DIR in "$FABRIC"/*; do
      if [ -d "$ID_DIR" ]; then # Check if it's a directory
        # Iterate over each image in the ID'd folder
        for IMAGE in "$ID_DIR"/im_*.png; do
          if [ -f "$IMAGE" ]; then # Check if it's a file
            # Copy and rename the image to the target directory
            cp "$IMAGE" "$TARGET_DIR/${COUNTER}.png"
            let COUNTER=COUNTER+1
          fi
        done
      fi
    done
  fi
done

