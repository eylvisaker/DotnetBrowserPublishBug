using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.FileProviders;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

var staticFilePath = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "../Avalonia11_1.Browser/bin/Release/net8.0-browser/publish/wwwroot"));
var fileProvider = new PhysicalFileProvider(staticFilePath);

Console.WriteLine("Serving static files from: " + staticFilePath);

// UseDefaultFiles ensures index.html is served for directory requests
app.UseDefaultFiles(new DefaultFilesOptions
{
    FileProvider = fileProvider
});

// UseStaticFiles to serve other static files from the same directory
app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = fileProvider,
    ServeUnknownFileTypes = true,
    DefaultContentType = "application/octet-stream"
});

app.Run();
