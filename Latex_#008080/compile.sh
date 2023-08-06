#!/bin/bash

# Define the input directory containing the wiki files
INPUT_DIR="wiki"

# Define the output directory for the TeX files
OUTPUT_DIR="content"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Create a file to store the TeX paths
INIT_FILE="$OUTPUT_DIR/init.tex"
echo -n "" > "$INIT_FILE"

# Loop through each file in the input directory
find "$INPUT_DIR" -type f -name "*.md" | while IFS= read -r file; do
    # Get the relative path and filename without extension
    relative_path=${file#"$INPUT_DIR/"}
    filename=$(basename "$file" .md)

    # Create the corresponding subdirectory in the output directory
    mkdir -p "$OUTPUT_DIR/$(dirname "$relative_path")"

    # Convert the file using Pandoc and preserve the relative path
    pandoc -f markdown -t latex "$file" -o "$OUTPUT_DIR/${relative_path%.md}.tex"

    # Print the conversion status
    if [ $? -eq 0 ]; then
        echo "File '$file' converted to '$OUTPUT_DIR/${relative_path%.md}.tex' successfully."

        # Append the TeX path to the init file
        echo "\input{$relative_path}" >> "$INIT_FILE"
    else
        echo "Error converting '$file' to TeX format."
    fi
done
