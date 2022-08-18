<#Script: Backup Files#>
<#Author: Jay Moring#>
<#Date of latest revision: 8/16/2022#>
<#Purpose: Copies files and produces a backup log#>

$Trigger= New-ScheduledTaskTrigger -Daily -At 12am
$User= "NT AUTHORITY\SYSTEM" 
$Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "robocopy.exe C:\Users\TestUser 'E:\User Backup' /s > C:\loguser.txt" 
Register-ScheduledTask -TaskName "BackupUsers" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest -Force
