# q how do i get ctrl+j add snippitts?
<#
#Set up
Set local ExecutionPolicy to RemoteSigned

Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force
Set-ExecutionPolicy Unrestricted

#PowerShell Gallery - as admin
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Update-Module PowerShellGet -Force
Install-Module Posh-Git -Scope AllUsers
#>


<#
# powershell 6 - pwsh
(get-computerinfo).csname
#>