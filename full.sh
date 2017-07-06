#!/bin/bash
CMD="$(fbset -s | awk '$1 == "geometry" { print $2","$3 }')"
echo "chromium-browser --window-size=$CMD --start-fullscreen"
chromium-browser \
    --no-sandbox \
    --window-size=$CMD \
    --start-fullscreen \
    --disable \
    --disable-translate \
    --disable-infobars \
    --disable-suggestions-service \
    --disable-save-password-bubble \
    --start-maximized 
