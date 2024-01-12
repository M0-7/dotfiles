#! /bin/bash

#Profile shorthands
personal=gsatmo6f.default-release
study=1dfz6q9z.Study
url=https://raw.githubusercontent.com/yokoffing/Betterfox/main/user.js

#Update user.js
curl $url | tee ~/.mozilla/firefox/$personal/user.js ~/.mozilla/firefox/$study/user.js
echo "Done updating user.js"

