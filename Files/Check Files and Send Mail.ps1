
# Define hash table and the parameters for the send mail message cmdlet
$today = get-date -format "yyyy-MM-dd"
$FileToCheck = Get-Item -Path ("\\fanuc\fs\subs\lu\ICT\ICT_ALL\Reporting\Cherwell\Export\"+$today+"_incident-report.csv") -ErrorAction SilentlyContinue
$FileToCheck2 = Get-Item -Path ("\\fanuc\fs\subs\lu\ICT\ICT_ALL\Reporting\Cherwell\Export\"+$today+"_change-request-report.csv") -ErrorAction SilentlyContinue
$FileToCheck3 = Get-Item -Path ("\\fanuc\fs\subs\lu\ICT\ICT_ALL\Reporting\Cherwell\Export\"+$today+"_task-report.csv") -ErrorAction SilentlyContinue

$EmailSplat = @{
To = 'ServiceDesk@fanuc.eu'
CC = 'bi@fanuc.eu'
BCC = 'alexander.korn@fanuc.eu'
SmtpServer = 'smtp.fanuc.local'
From = 'bi@fanuc.eu'
Priority = 'High'
}

$EmailSplat2 = @{
To = 'bi@fanuc.eu'
CC = 'bi@fanuc.eu'
BCC = 'alexander.korn@fanuc.eu'
SmtpServer = 'smtp.fanuc.local'
From = 'bi@fanuc.eu'
Priority = 'High'
}

# Your first condition: 'If the file does not exist, or was not created today, an e-mail should be sent that states "File not created today".'
if  ((-not $FileToCheck) -or (-not $FileToCheck2) -or (-not $FileToCheck3)) {
$EmailSplat.Subject = 'csv File for BI report not created today'
$EmailSplat.Body = 'Dear Cherwell-admin, the cherwell export for the BI report did not work today, please check. This mail was auto generated. Best regards BI Team'
Send-MailMessage @EmailSplat
# Your second condition 'If the file exists and was created today, but has no content, no e-mail should be sent.'
#} elseif (($FileToCheck) -and ($FileToCheck.Length -le 2)) {
# Do nothing
# Your third condition and the default condition if it does not match the other conditions
} else {
'Do Nothing'
#$EmailSplat2.Subject = 'File Found'
#$EmailSplat2.Body = 'csv file for cherwell-reporting was found - everything is ok'
#Send-MailMessage @EmailSplat2

#Get-Content -Path '\\fanuc\fs\subs\lu\ICT\ICT_ALL\Reporting\Cherwell\Export\2021-02-17_task-report.csv'
}