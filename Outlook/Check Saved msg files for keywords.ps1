#Import Excel module needs to installed with PowerShell admin rights once
Install-Module ImportExcel

# Set the path to the directory containing the .msg files
$msgDirPath = "C:\Users\%USERNAME%\Desktop\Closure mails"

# Set the path to the xlsx file containing the list of keywords
$excelFilePath = "C:\Users\%USERNAME%\Desktop\keywords.xlsx"

# Import the values in column A as keywords from the xlsx file
$keywords = Import-Excel $excelFilePath -HeaderRow 1 | Select-Object -ExpandProperty Keyword

# Get all .msg files in the directory
$msgFiles = Get-ChildItem $msgDirPath -Filter *.msg


# Loop through each .msg file and check for the keywords
foreach ($msgFile in $msgFiles) {
    # Read the contents of the .msg file
    $msg = New-Object -ComObject Outlook.Application
    $item = $msg.Session.OpenSharedItem($msgFile.FullName)

    # Check if the keywords are found in the message body
    foreach ($keyword in $keywords) {
        if ($item.Body -match $keyword) {
        $trackingID = $msgFile.Name -replace '^.*TrackingID#(\d+).*$','$1'
            Write-Host "The keyword '$keyword' was found in the message body of file $trackingID."
        }
    }
         # Display tracking ID numbers
    $trackingID = $msgFile.Name -replace '^.*TrackingID#(\d+).*$','$1'
    #Write-Host "Check completed for $trackingID"

     #Write-Host "Check Completed $msgFile.FullName"

    # Clean up resources
    $item.Close(0)
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($item) | Out-Null
    #$msg.Quit()
    #[System.Runtime.Interopservices.Marshal]::ReleaseComObject($msg) | Out-Null
}
