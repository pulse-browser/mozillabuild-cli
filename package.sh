# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# This file downloads the official mozillabuild installer, extracts it with 
# 7zip and packages it with a custom install script that is usable within ci
# environments

echo "Creating an output directory..."
rm -rf package/
mkdir -p package/extracted 

echo "Downloading mozillabuild..."
curl -o package/MozillaBuildSetup-Latest.exe https://ftp.mozilla.org/pub/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe 

echo "Extracting exe file..."
/c/Program\ Files/7-Zip/7z.exe x package/MozillaBuildSetup-Latest.exe -opackage/extracted

echo "Cleaning up unneeded files..."
rm -rf package/MozillaBuildSetup-Latest.exe extracted/\$PLUGINSDIR

echo "Coping in installer..."
cp install.sh package/

echo "Compressing..."
cd package
tar -hczvf ../mozilla-build.tar.gz *
cd ..
