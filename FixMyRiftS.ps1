#Requires -RunAsAdministrator
Write-Host "RCMaehl's Rift S Fix Script v0.1"
Write-Host ""
Write-Host "Disabling Rift S USB Hub (Errors here are normal)"
Get-PnpDevice -FriendlyName "Rift S USB Hub" | Disable-PnpDevice -confirm:$false
Write-Host "Enabling Rift S USB Hub"
Get-PnpDevice -FriendlyName "Rift S USB Hub" | Enable-PnpDevice -confirm:$false
Write-Host "Your Rift S should now be working!"