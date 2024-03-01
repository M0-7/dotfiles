#! /bin/bash

#Profile shorthands
personal=x33nh28d.default-release
study=bqr5ekof.Study
url=https://raw.githubusercontent.com/yokoffing/Betterfox/main/user.js

#Update user.js
curl $url | tee ~/.mozilla/firefox/$personal/user.js ~/.mozilla/firefox/$study/user.js
echo "Done updating user.js"

#Update firefox gnome theme
curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash

