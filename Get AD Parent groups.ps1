[bool]$new_groups_added = $TRUE
$user = "OG_FEG_SAL_COR"  ### <<<<<<< Enter Username Here

[array]$groups = Get-ADPrincipalGroupMembership $user | foreach {$_.name}
$groups = $groups | sort

while ($new_groups_added)
	{
	 $new_groups_added = $FALSE
	 $holding_list = @()
	 foreach ($group in $groups)
		{
		 write-host "Checking: $group"
		 [array]$new_groups = Get-ADPrincipalGroupMembership $group | foreach {$_.name}
		 if ($new_groups.length -gt 1)
			{
			 $new_groups_added = $TRUE
			 foreach ($new in $new_groups)
				{$holding_list += $new}
			}
		 else
			{$holding_list += $group}
		}
	 [array]$groups = $holding_list
	 $groups = $groups | sort
	 $groups = $groups | select -Unique
	 if ($new_groups_added)
		{
		 write-host ""
		 write-host "--------------------------"
		 write-host "     Starting Recheck"
		 write-host "--------------------------"
		 write-host ""
		}
	}

## $groups  ### <<<<<<< List of groups is stored here 