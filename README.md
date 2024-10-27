
# Problem

This project demonstrates a bug in dotnet publish with a Microsoft.NET.Sdk.WebAssembly project. On certain platforms, some of the publish files end up in the wrong directory. 

The web app will request several js files which are part of the nuget package for Avalonia. In particular, we expect avalonia.js to end up in the net8.0-browser/publish/wwwroot/_framework/ directory. But on Linux it instead ends up in the net8.0-browser/publish/wwwroot/ directory, causing the webapp to fail to load.

Platform tests:

* Windows 11 - dotnet 8.0.200 - this works as expected
* Ubuntu 24.04 - apt install dotnet8 - avalonia.js in wwwroot, not wwwrootthe wrong folder.
* Ubuntu 24.04 - dotnet-install.sh - This does not work correctly.

# How to use

There are four scripts:

The clean script will clean the outputs.
The build script should verify that avalonia.js is in the correct location.
The test script will verify the output of avalonia.js
The run script will start up a webserver that serves the wasm application from a static file source.

## Windows scripts

```
./clean
./build
./test
./run
```

## Linux bash scripts

```
./clean.sh
./build.sh
./test.sh
./run.sh
```
