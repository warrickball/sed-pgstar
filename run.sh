#!/usr/bin/env bash

sed -E \
    -e 's/(History_Track|Grid|Profile_Panels|History_Panels|Text_Summary)([1-9])([_a-zA-Z]*) = /\1\3\(\2\) = /' \
    -e 's/(History_Track|Grid|Profile_Panels|History_Panels|Text_Summary)([1-9])([_a-zA-Z]*)\(/\1\3\(\2\,/' \
    "${1}" > "${1}".modified
diff --suppress-common-lines -yw "${1}".modified "${2}" && echo "OK" || echo "Differences remain!"
