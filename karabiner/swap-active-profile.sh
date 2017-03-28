#!/bin/bashe
sed -i '' 's/"selected": false/"selected": TEMP/g' /Users/ttiurani/.config/karabiner/karabiner.json 
sed -i '' 's/"selected": true/"selected": false/g' /Users/ttiurani/.config/karabiner/karabiner.json 
sed -i '' 's/"selected": TEMP/"selected": true/g' /Users/ttiurani/.config/karabiner/karabiner.json 
