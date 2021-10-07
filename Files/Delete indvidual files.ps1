$RemovePath = 'C:\Users\sBIpRefresh\Documents\Power BI Report Server Refresh'
Get-ChildItem -Path $removepath -File -Recurse -Include '*Currently Expected Results.xlsm' | Remove-Item -Verbose