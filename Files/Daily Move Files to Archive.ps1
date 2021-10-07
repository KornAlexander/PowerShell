$part1 = "_change-request-report.csv"
$part2 = "_incident-report.csv"
$part3 = "_task-report.csv"

$SourcePath = '\\fanuc\fs\Subs\LU\ICT\ICT_ALL\Reporting\Cherwell\Export'
$TargetPath= '\\fanuc\fs\Subs\LU\ICT\ICT_ALL\Reporting\Cherwell\Archive\'


$15days = -10
$d = get-date
$datecorrected = ($d).AddDays($15days) #.ToString('yyyy-MM-dd')
($d).AddDays($15days) #.ToString('yyyy-MM-dd')

$datecorrected.DayOfWeek
$pathdatepart = $datecorrected.ToString('yyyy-MM-dd')

$pathdatepart

if ($datecorrected.DayOfWeek -eq 'Thursday' ) {
    "Thursday"
}
else { 
    "Not Thursday the file will be moved"
}

if ($datecorrected.DayOfWeek -eq 'Thursday' ) {
    "it's a Thursday"
}
else { 
    Get-ChildItem -Path $Sourcepath -File -Recurse -Include ($pathdatepart+$part1) | Move-Item -Destination ($TargetPath+$pathdatepart+$part1)
    Get-ChildItem -Path $Sourcepath -File -Recurse -Include ($pathdatepart+$part2) | Move-Item -Destination ($TargetPath+$pathdatepart+$part2) 
    Get-ChildItem -Path $Sourcepath -File -Recurse -Include ($pathdatepart+$part3) | Move-Item -Destination ($TargetPath+$pathdatepart+$part3)  
}



