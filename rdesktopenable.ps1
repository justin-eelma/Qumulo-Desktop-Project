<#Script: Backup Files#>
<#Author: Jon Salhus#>
<#Date of latest revision: 8/16/2022#>
<#Purpose: Copies files and produces a backup log#>

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"