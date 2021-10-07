#$SourcePath = '\\fanuc\fs\Subs\LU\ICT\ICT_ALL\Reporting\Cherwell\Test'
#$TargetPath= '\\fanuc\fs\Subs\LU\ICT\ICT_ALL\Reporting\Cherwell\Archive'

$SourcePath = 'C:\Users\sBIpRefresh\Desktop\Test'
$TargetPath= 'C:\Users\sBIpRefresh\Desktop\Target\2020-09-01_Filename.xlsx'

Get-ChildItem -Path $Sourcepath -File -Recurse -Include '2020-09-01*' | Move-Item -Destination $TargetPath