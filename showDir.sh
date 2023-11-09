#./showDir.sh
#!/bin/bash

echo
#Check if path is provided. If not, default to current.
dir="${1:-.}"

#Check if path exists.
if [ ! -d "$dir" ]; then
  echo "Error: $dir is not a directory or does not exist."
  exit 1
fi

#Check file or directory and print it's name.
for entry in "$dir"/*; do
  if [ -f "$entry" ]; then
    #size
    size=$(du -h "$entry" | awk '{print $1}' )
    echo "File: $entry        Size: $size"
  elif [ -d "$entry" ]; then
    #nItems
    nItems=$(ls -1 "$entry" | wc -l)
    echo "Dir: $entry       Items: $nItems"
  fi
done