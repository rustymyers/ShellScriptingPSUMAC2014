#!/bin/bash
ifError() {
	# check return code passed to function
	exitStatus=$?
	echo $exitStatus
	TIME=$(date "+%Y-%m-%d %H:%M:%S")
	if [[ $exitStatus -ne 0 ]]; then
	# if rc > 0 then print error msg and quit
		echo -e "$0 Time:$TIME $1 Exit: $exitStatus"
		exit $exitStatus
	fi
}
zip fail.zip /tmp/toast.txt
ifError "Failed to set it!"
