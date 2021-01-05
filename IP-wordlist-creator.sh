printf "Choose one:
1) 192.168.x.x
2) 172.x.x.x
3) 10.x.x.x "
read type
printf "Enter file to save as: "
read file
if [[ "$file" == "" ]]; then
  echo "You must enter a file name."
  exit 1
fi
if [[ "$type" == "1" ]]; then
  for a in {0..255}; do for b in {0..255}; do echo "192.168.$a.$b"; done;done >> "$file"
elif [[ "$type" == "2" ]]; then
  for a in {16..31}; do for b in {0..255}; do for c in {0..255}; do echo "172.$a.$b.$c";done;done;done >> "$file"
elif [[ "$type" == "3" ]]; then
  for a in {0..255}; do for b in {0..255}; do for c in {0..255}; do echo "10.$a.$b.$c"; done;done;done >> "$file"
else
  echo "Error: Choose option 1-3"
fi
