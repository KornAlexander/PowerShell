$app = New-Object -comobject Excel.Application
$app.Visible = $True
$wb = $app.Workbooks.Open("Path")
$wb.Name
$wb.RefreshAll()
$wb.Save()
$wb.Close()
$app.Quit()
