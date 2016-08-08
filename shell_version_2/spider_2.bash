
echo "Processing site: $1"

for url in $(wget -q $1/ -O - | tr "\t\r\n'" '   "' | grep -i -o '<a[^>]\+href[ ]*=[ \t]*"\(ht\|f\)tps\?:[^"]\+"' | sed -e 's/^.​*"\([^"]\+\)".*​$/\1/g' | awk -F '"' '{print $2}'); do echo $url;wget -q $url -O - | grep -c visualforce; done
