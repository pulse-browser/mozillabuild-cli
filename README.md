# mozillabuild-cli

A windows CLI installer for mozillabuild. Used by Pulse in its windows CI

## Packaging for a new version of mozillabuild

So long as Mozilla doesn't change how they distribute their mozilla build files (i.e. the latest installer is available at `https://ftp.mozilla.org/pub/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe`), packaging should be simple.

1. Make sure you have 7-zip installed at `C:\Program Files\7-zip`
2. Make sure you have Git Bash installed
3. Run `package.sh`
4. Upload the resulting tar file

## Using the installer

1. Make sure you have Git Bash installed
2. Extract the tar file from releases
3. Run `install.sh`
