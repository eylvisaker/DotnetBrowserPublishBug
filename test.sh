#!/bin/bash

filePath="Avalonia11_1.Browser/bin/Release/net8.0-browser/publish/wwwroot/_framework/avalonia.js"
badFilePath="Avalonia11_1.Browser/bin/Release/net8.0-browser/publish/wwwroot/avalonia.js"

echo ""
echo "********************************************************************************"
echo ""

echo "Checking correct location of avalonia.js file: $filePath"

if [ -f "$filePath" ]; then
    echo "File exists - Browser app should work."
else
    echo "File does not exist - the Browser app will not work!"

    if [ -f "$badFilePath" ]; then
        echo "File exists in wrong location! It is present at $badFilePath."
    fi
fi
