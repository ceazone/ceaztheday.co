#!/bin/bash
# Regenerate og.png (1200x630 social share card) from the lockup in og-source.html.
# To swap the mark: drop the new file in this folder, point og-source.html's <img>
# at it, then run ./make-og.sh
set -e
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu \
  --hide-scrollbars --force-device-scale-factor=2 \
  --screenshot="$PWD/og-raw.png" --window-size=1200,630 "file://$PWD/og-source.html" 2>/dev/null || true
python3 -c "
from PIL import Image
Image.open('og-raw.png').convert('RGB').resize((1200,630), Image.LANCZOS).save('og.png', optimize=True)
print('og.png regenerated: 1200x630')"
rm -f og-raw.png
