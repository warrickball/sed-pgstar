#!/usr/bin/env bash

sed -E \
    -e 's/(History_Track|Grid|Profile_Panels)([1-9])([_a-zA-Z]*) = /\1\3\(\2\) = /' \
    -e 's/(History_Track|Grid|Profile_Panels)([1-9])([_a-zA-Z]*)\(/\1\3\(\2\,/' \
    "${1}" > "${1}".modified
diff -yw "${1}".modified "${2}" && echo "OK" || echo "Differences remain!"
