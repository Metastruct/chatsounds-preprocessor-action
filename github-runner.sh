#!/bin/bash

echo "::group::List generation"

/usr/bin/chatsounds-preprocessor "$@"
exitcode=$?

echo "::endgroup::"

if [ $exitcode -ne 0 ]; then
	echo "::error::List of invalid sound files:"
	sed 's/^\[\([^\]*\)] \"*\([^:]*\)"/::error file=\2::\2: \1/' invalid-soundfiles.txt
fi

exit $exitcode
