#!/bin/bash
# Script to show variables and Wi-Fi output
ScriptName="Inventory Script 1.0"
OSVersion=$(sw_vers -productVersion)

echo "Starting Script $ScriptName"

networksetup -getinfo Wi-Fi
