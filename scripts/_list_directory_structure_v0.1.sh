#!/bin/bash
echo " "
echo " "
echo "CREATE WILDCARD FILELIST TXT v0.1"
echo "created by JohnAndrewsX"
echo " "
echo "Github: github.com/JohnAndrewsX"
echo " "
echo " "


# Funktion zur rekursiven Auflistung von Verzeichnissen und Dateien
list_directory() {
    local dir="$1"
    local indent="$2"
    local output_file="$3"

    for entry in "$dir"/*; do
        if [ -d "$entry" ]; then
            echo "${indent}$(basename "$entry")/" >> "$output_file"
            list_directory "$entry" "  $indent" "$output_file"
        elif [ -f "$entry" ]; then
            echo "${indent}$(basename "$entry")" >> "$output_file"
        fi
    done
}

# Startverzeichnis (aktuelles Verzeichnis)
start_dir="$(pwd)"

# Output file
output_file="${start_dir}/directory_structure.txt"

# Output-Datei leeren oder erstellen
> "$output_file"

# Auflisten der Verzeichnisstruktur
echo "$start_dir/" > "$output_file"
list_directory "$start_dir" "  " "$output_file"

echo " "
echo "Directory structure has been listed successfully in $output_file."
echo " "
echo " "
echo "_____________________________________________"
echo " "
echo "If you have any questions, suggestions, ideas, or just want to chat, feel free to reach out to me through any of these channels:"
echo " "
echo "CivitAI: civitai.com/user/JohnAndrewsX"
echo "Github: github.com/JohnAndrewsX"
echo "X: x.com/JohnAndrewsX"
