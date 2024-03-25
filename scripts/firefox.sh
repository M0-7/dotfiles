#! /bin/bash

#Profile shorthands
personal=fy1v5eqb.default-release
url=https://raw.githubusercontent.com/yokoffing/Betterfox/main/user.js

#Update user.js
curl $url | tee ~/.mozilla/firefox/$personal/user.js
echo "Done updating user.js"

#Update firefox gnome theme
curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash

