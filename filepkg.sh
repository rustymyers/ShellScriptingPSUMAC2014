#!/bin/bash
pkgPathInfo() {
	pkgutil --file-info $1
}
echo -n "Enter file path: "
read filePath
pkgPathInfo "$filePath"
