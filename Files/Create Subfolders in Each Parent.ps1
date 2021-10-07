foreach($folder in (gci 'C:\Users\92900054\Desktop\Applicants' -directory)){
    new-item -ItemType directory -Path ($folder.fullname+"\CoverLetter")
}