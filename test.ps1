
$filePath = "Avalonia11_1.Browser/bin/Release/net8.0-browser/publish/wwwroot/_framework/avalonia.js"

Write-Output ""
Write-Output "********************************************************************************"
Write-Output ""

Write-Output "Checking correct location of avalonia.js file: $filePath"

if (Test-Path $filePath) {
    Write-Output "File exists - Browser app should work."
} else {
    Write-Output "File does not exist - the Browser app will not work!"
}