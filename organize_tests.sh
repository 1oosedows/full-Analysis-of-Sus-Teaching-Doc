#!/bin/bash

# Create backup of original files
cp -r sandbox sandbox_backup
cp -r "Kazakh history" kazakh_history_backup
cp -r Math math_backup
cp -r "Physics Lab" physics_backup
cp -r Psyholohy psychology_backup
cp -r "Имя учителя" teachers_backup
cp -r "Айбек ағай" aibek_backup
cp -r "Нұрай апай" nurai_backup

# Function to sanitize filenames
sanitize_filename() {
    echo "$1" | sed 's/[^a-zA-Z0-9]/_/g' | tr '[:upper:]' '[:lower:]'
}

# Move and rename files from sandbox
for file in sandbox/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/${new_name}.json"
    fi
done

# Move files from Kazakh history
for file in "Kazakh history"/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/kazakh_history/${new_name}.json"
    fi
done

# Move files from Math
for file in Math/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/math/${new_name}.json"
    fi
done

# Move files from Physics Lab
for file in "Physics Lab"/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/physics/${new_name}.json"
    fi
done

# Move files from Psychology
for file in Psyholohy/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/psychology/${new_name}.json"
    fi
done

# Move files from teachers directory
for subject in "Имя учителя"/*; do
    if [ -d "$subject" ]; then
        subject_name=$(basename "$subject")
        subject_dir=$(sanitize_filename "$subject_name")
        mkdir -p "tests/teachers/$subject_dir"
        for file in "$subject"/*.json; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                new_name=$(sanitize_filename "${filename%.*}")
                cp "$file" "tests/teachers/$subject_dir/${new_name}.json"
            fi
        done
    fi
done

# Move files from Aibek agai
for file in "Айбек ағай"/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/teachers/aibek/${new_name}.json"
    fi
done

# Move files from Nurai apai
for file in "Нұрай апай"/*.json; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_name=$(sanitize_filename "${filename%.*}")
        cp "$file" "tests/teachers/nurai/${new_name}.json"
    fi
done

echo "Files have been organized into the tests directory with sanitized names." 