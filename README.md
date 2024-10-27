
# Problem

This project demonstrates a bug in dotnet publish with a Microsoft.NET.Sdk.WebAssembly project. On certain platforms, some of the publish files end up in the wrong directory. In particular, we expect avalonia.js to end up in the _framework directory. Platform tests:

* Windows 11 - dotnet 8.0.200 - this works as expected
* Ubuntu 24.04 - apt isntall dotnet-host-8.0 - This does not work correctly.

# How to use

## Windows

There are four scripts:
```
./clean
./build
./test
./run
```

The build script should verify that avalonia.js is in the correct location.
The test script will verify the output of avalonia.js
The run script will start up a webserver attempting to serve the wasm application from a static file source.
