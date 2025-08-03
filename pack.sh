#!/bin/bash

# 1. Run update.sh to make sure the swagger folder is up to date
bash ./update.sh

# 2. Create a temporary packaging directory
tmpdir=./temp
rm -rf "$tmpdir"
mkdir -p "$tmpdir"

# 3. Copy necessary files and directories
cp -r src "$tmpdir"/
cp -r swagger "$tmpdir"/
cp manifest.json "$tmpdir"/

# Add other required files/directories here if needed
# cp -r icons "$tmpdir"/

# 4. Create the zip package using PowerShell (Windows compatible)
# Get current date and time in yyyy-MM-dd_HHmmss format
zipname="swagger-ui-extension_$(powershell -Command "Get-Date -Format 'yyyy-MM-dd_HHmmss'").zip"
powershell -Command "Compress-Archive -Path '$tmpdir/*' -DestinationPath './dist/$zipname' -Force"

# 5. Clean up the temporary directory
rm -rf "$tmpdir"

echo "Packaging complete. Generated $zipname"
