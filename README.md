# sed-pgstar

A sandbox where I try to devise the appropriate `sed` commands to
update any MESA inlist for the upcoming changes to the PGstar
controls.

* `test_input.txt` contains some example input controls.  This aims to
  cover controls that have changed and a few that haven't but might
  accidentally get changed by a `sed` command.

* `expected_output.txt` contains the output that `test_input.txt`
  *should* be replaced by.  This is curated manually as a reference
  for what the `sed` commands should do.

* `run.sh` is a script that runs some `sed` commands and `diff`s the
  output relative to `expected_output.txt` to see if we're doing
  things right.
