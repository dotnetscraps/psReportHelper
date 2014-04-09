Import-Module ..\..\Common\helperReport.psm1 -Force

Set-ReportFile -Folder "D:\Documents\Desktop\Report Helper\Output" -File "something.htm" -OverWrite $true
Add-TableStart -Width 700 -CellPadding 3
Set-TableColumnWidth 200, 200, 300
Add-TableStartRow
Add-TableCells -data "Name", "Address", "WebSite" -isHeader $true
Add-TableEndRow
Add-TableStartRow
Add-TableCells -data "Rahul" -isGreen $true -align "left"
Add-TableCells -data "Soni" -isRed $true -align "center"
Add-TableCells -data "Test 1" -isGreen $true -align "right"
Add-TableEndRow
Add-TableEnd
Get-Table -OpenInBrowser $true -InsertCSS "D:\Documents\Desktop\Report Helper\Common\style.css"