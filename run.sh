#!/usr/bin/env bash

sed \
    -E '/(History_Track|Grid|Profile_Panels)/s/([1-9])([_a-zA-Z]*) = /\2\(\1\) = /' \
    test_input.txt > actual_output.txt
diff -yw expected_output.txt actual_output.txt && echo "OK" || echo "Differences remain!"
