#!/bin/bash

AppName="$1"
if [[ "${AppName}" == *.app ]]; then
	echo "$AppName"
fi

Custom_appname="$(echo $AppName| sed s/.app/:/)"

echo "$Custom_appname"

system_profiler SPApplicationsDataType|grep -i -A 9 "$Custom_appname"
