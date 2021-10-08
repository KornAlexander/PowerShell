#Import-Module SQLPS

#example for one sql
#invoke-sqlcmd -inputfile "C:\Users\92900054\Desktop\cube.Base.Time.sql" -serverinstance "luechbisql01" -database "EDW" # the parameter -database can be omitted based on what your sql script does.

#Get list of sql files
$Files = Get-ChildItem 'C:\Users\92900054\Documents\08. Tools\SQL Deployment\Deploy\*.sql'

#deploy all sql files and move them to the finished location
try {
    $Filename = $File.BaseName 

    foreach ($file in $files) {

    Invoke-sqlcmd -ServerInstance "luechbisql01" -Database "EDW" -InputFile $file -ErrorAction Stop 
    Write-Host -ForegroundColor Green "EXECUTED SUCCESSFULLY: " $filename 
    Move-Item $File "C:\Users\92900054\Documents\08. Tools\SQL Deployment\Finished"
 }
}
catch {
 Write-Host -ForegroundColor RED "FAILED TO EXECUTE: " $filename
}