<!--#include file="../canvas.asp"-->
<!--#include file="../charts/chart_bar.asp"-->
<!--#include file="../extra_fonts/lucida_8_point.asp"-->
<%

Dim objCanvas, objChart

Set objCanvas = New Canvas
Set objChart = New ChartBar

objCanvas.GlobalColourTable(0) = RGB(255,255,255)
objCanvas.GlobalColourTable(1) = RGB(0,0,0)
objCanvas.GlobalColourTable(2) = RGB(255,0,0)
objCanvas.GlobalColourTable(3) = RGB(0,255,0)
objCanvas.GlobalColourTable(4) = RGB(0,0,255)
objCanvas.GlobalColourTable(5) = RGB(128,128,128)

objCanvas.Resize 800,600,False

objCanvas.ForegroundColourIndex = 1

objCanvas.Rectangle 0,0,798,598

Set objChart.ActiveCanvas = objCanvas

objChart.Left = 50
objChart.Top = 50

objChart.Width = 640
objChart.Height = 480

objChart.Max = 150

objChart.Min = 0

objChart.Vertical = True

Dim objSet

Set objSet = objChart.AddSet()

objSet.Name = "First set"
objSet.AddPoints Array("Category A",10,"Category B",20,"Category C",30)
objSet.FillIndex = 2

Set objSet = objChart.AddSet()

objSet.Name = "Second set"
objSet.AddPoints Array("Category A",10,"Category B",20,"Category C",30)
objSet.FillIndex = 3

Set objSet = objChart.AddSet()

objSet.Name = "Third set"
objSet.AddPoints Array("Category A",10,"Category B",20,"Category C",30)
objSet.FillIndex = 4

Set objSet = objChart.AddSet()

objSet.Name = "Fourth set"
objSet.AddPoints Array("Category A",15,"Category B",25,"Category C",35,"Category A",10,"Category B",5,"Category C",80)
objSet.FillIndex = 5

objChart.Render

objCanvas.Write
%>