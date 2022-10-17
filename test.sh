#!/usr/bin/env bash
rm -Rf dist

yarn build

echo

if grep -r -q "process.env" dist/; then
	echo "❌ FAIL: process.env is present in build output"
	exit 1
else
	echo "✅ PASS: process.env is not present in build output"
	exit 0
fi


