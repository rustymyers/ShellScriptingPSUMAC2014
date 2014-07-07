#!/bin/bash

AppName="$1"
if [[ "${AppName}" == *.app ]]; then
	echo "$AppName"
fi

system_profiler SPApplicationsDataType|grep -i -A 9 "$AppName"
