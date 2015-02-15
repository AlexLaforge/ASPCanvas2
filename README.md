# ASPCanvas2
ASPCanvas is a means of generating GIF images on an IIS/ASP based server without installing server-side COM objects or fiddling around with client-side Java. It is a purely VBScript class which generates GIF images of any size on the server and passes them onto the web browser client.

## Quick Usage

Drawing a circle.

```
<!--#include file="canvas.asp"-->
<!--#include file="font.asp"-->
<%
Dim objCanvas
Set objCanvas = New Canvas
objCanvas.GlobalColourTable(0) = RGB(255,255,255)
objCanvas.GlobalColourTable(1) = RGB(0,0,0)
objCanvas.BackgroundColourIndex = 0
objCanvas.ForegroundColourIndex = 1
objCanvas.Resize 320,240,False
objCanvas.Circle 160,120,110
objCanvas.Write
%>
```

# Requirements

The requirements have changed very slightly from version 1.0.x to this version of the script, so pay very careful attention before overwriting your previous version.

* IIS 5.0 or higher
* VBScript 5.6 or higher
* MDAC 2.6 or higher

These are all important as the internals of ASPCanvas have changed to utilise ADO Streams

*Note that this class will NOT work with ChiliSoft's ASP package.*

# Why is this here? Are there shiny new things?
No, nothing new. This is here because I get at least 1 request a week about this. The last time I added anyting to this class was in 2002, when Classic ASP developers started making their transition to ASP.NET. I thought this would die in usage, but as it turns out, some institutions IT infrastructures fall into the "It ain't broke, so don't fix it" category. This script does not contain an actual LZW compression algorithm, it merely ratchets up the code table, for two reasons:

1. It's VBScript. In 2002 it was slow. Generating a proper compressed GIF of any proportion was beyond the capabilities of a server at the time
2. Unisys held the LZW patent until 2003 in the USA. Worldwide it expired in 2004. My framed Unisys royalty payment request remains on my wall.

Both of these points are a thing of the past. Have fun!