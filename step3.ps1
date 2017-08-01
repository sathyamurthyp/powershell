$date = Get-Date -Format d.MMMM.yyyy 
 #New-PSDrive -Name "Backup" -PSProvider Filesystem -Root "\\T_Server\Tally" 
 $source = "D:\CODE\Jenkins\source" 
 $destination = "D:\CODE\Jenkins\backup\$date" 
 $path = test-Path $destination 
  
  
# Backup Process started 
 
 if ($path -eq $true) { 
		write-Host "Directory Already exists" 
		#Remove-PSDrive "Backup"   
    } elseif ($path -eq $false) { 
	        copy-Item  -Recurse $source -Destination $destination 
            $backup_log = Dir -Recurse $destination | out-File "$destination\backup_log.txt" 
            $attachment = "$destination\backup_log.txt" 
            write-host "Backup Sucessfull" 
			#Remove-PSDrive "Backup"   
	}