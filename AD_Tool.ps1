# get group members, including subgroups
Get-ADGroupMember -identity "OG_EU_GMGT" -Recursive | Get-ADUser -Property DisplayName | Select Name,ObjectClass,DisplayName 

# export all group members, including subgroups to csv file
Get-ADGroupMember -identity "OG_..." -Recursive | Get-ADUser -Property DisplayName | Select Name | Out-File C:\Users\92900054\Desktop\Filename.csv #export-CSV username.csv

# get all groups with a similar name. 
Get-ADGroup -Filter {name -like "*OG_*"} -Properties Description,info | Select Name,samaccountname,Description,info | Sort Name

# get all users where password never experience with certain name in principal name
get-aduser -filter 'UserPrincipalName -like "*Topic*"' -properties Name, PasswordNeverExpires | where {$_.passwordNeverExpires -eq "true" } | Select-Object DistinguishedName,Name,Enabled

# get ad user with SSOs like
Get-ADUser -Filter 'Name -like "*SSO*"' | FT Name,SamAccountName,UserPrincipalName -A

# get users with names like
Get-ADUser -Filter 'UserPrincipalName -like "*korn*"' | FT Name,SamAccountName,UserPrincipalName -A

# get groups of user with name like
Get-ADUser -Filter 'UserPrincipalName -like "*schuep*"' | Get-ADPrincipalGroupMembership | Select Name

# get groups for specific sso
Get-ADPrincipalGroupMembership SSO  | select name

