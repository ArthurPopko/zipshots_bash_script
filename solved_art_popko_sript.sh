SCRIPT_DIR=$(dirname "$0")
SHOTS_DIR="$SCRIPT_DIR/Screenshots_$(date +'%Y-%m-%d')"
mkdir -p "$SHOTS_DIR"
find "$SCRIPT_DIR" -name '*.jpg' -depth 1 -print0 | xargs -0 -I {} sh -c "mv {} \"$SHOTS_DIR/\" && echo {} >> \"$SCRIPT_DIR/screenshots.found\""
zip -rm "$SHOTS_DIR.zip" "$SHOTS_DIR"
echo "Your screenshots are moved and zipped in \"$SHOTS_DIR.zip\" \nThe screenshots names are logged in \"$SCRIPT_DIR/screenshots.found\""
read -n 1 -s -r -p "Press any key to continue"
