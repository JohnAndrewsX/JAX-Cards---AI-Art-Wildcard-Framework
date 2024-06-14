#!/bin/bash
echo " "
echo " "
echo "CREATE WILDCARD FILELIST TXT v0.2"
echo "created by JohnAndrewsX"
echo " "
echo "Github: github.com/JohnAndrewsX"
echo " "
echo " "

# Determine the current directory
current_dir=$(basename "$PWD")

# Text file to store the filenames, based on the directory name
output_file="_${current_dir}_wildcards.txt"

# List files starting with "JAX" in the current directory recursively
wildcard_files=$(find . -type f -name "JAX*.txt")

# Format Wildcards, Filelist, and Simple list
{
  echo "### Wildcards"
  for file in $wildcard_files; do
    filename=$(basename "$file" .txt)
    echo "__${filename}__"
  done

  echo
  echo "### Filelist"
  for file in $wildcard_files; do
    echo "$(basename "$file")"
  done

  echo
  echo "### Simple list"
  for file in $wildcard_files; do
    filename=$(basename "$file" .txt)
    simple_name=$(echo "$filename" | sed 's/^JAX-[ce]-POI-//')
    echo "$simple_name"
  done
} > "$output_file"

echo " "
echo "Filenames have been saved in $output_file."
echo " "
echo " "
echo "_____________________________________________"
echo " "
echo "If you have any questions, suggestions, ideas, or just want to chat, feel free to reach out to me through any of these channels:"
echo " "
echo "CivitAI: civitai.com/user/JohnAndrewsX"
echo "Github: github.com/JohnAndrewsX"
echo "X: x.com/JohnAndrewsX"
