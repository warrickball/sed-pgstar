#!/usr/bin/env bash

sed \
    -E '/(History_Track|Grid|Profile_Panels)/s/([1-9])([_a-zA-Z]*) = /\2\(\1\) = /' \
    "${1}" > "${1}".modified
diff -yw "${1}".modified "${2}" && echo "OK" || echo "Differences remain!"
