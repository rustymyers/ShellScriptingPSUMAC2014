#!/bin/bash
# echo exported var

ChkNet() {
	networksetup -getinfo "$1"
}

MyVariables
echo $OSVersion
# Script to show variables and Wi-Fi output
ScriptName="Inventory Script 1.0"
export OSVersion=$(sw_vers -productVersion)

echo "Starting Script $ScriptName"
echo $OSVersion
ChkNet "Wi-Fi"
ETHCHK=$(ChkNet "Ethernet")

echo "My Net"
echo "$ETHCHK"
