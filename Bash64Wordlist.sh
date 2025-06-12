#!/bin/bash

# Parse flags
while getopts u:p:o: flag; do
    case "${flag}" in
        u) userfile=${OPTARG};;
        p) passfile=${OPTARG};;
        o) outfile=${OPTARG};;
    esac
done

# Input validation
if [[ -z "$userfile" || -z "$passfile" || -z "$outfile" ]]; then
    echo "Usage: $0 -u <username_file> -p <password_file> -o <output_file>"
    exit 1
fi

# Read and clean usernames and passwords into arrays
mapfile -t usernames < <(grep -v '^$' "$userfile")
mapfile -t passwords < <(grep -v '^$' "$passfile")

# Get minimum length
len_users=${#usernames[@]}
len_pass=${#passwords[@]}
min_len=$(( len_users < len_pass ? len_users : len_pass ))

# Clear output file
> "$outfile"

# Generate 1:1 Base64 encoded output
for (( i=0; i<min_len; i++ )); do
    combo="${usernames[$i]}:${passwords[$i]}"
    encoded=$(echo -n "$combo" | base64)
    echo "$encoded" >> "$outfile"
done

echo "[+] Generated $min_len Base64 credentials in: $outfile"
