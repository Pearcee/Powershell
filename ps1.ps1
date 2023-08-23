psquote
Write-Verbose 
[$((Get-Date).TimeofDay) BEGIN] Starting $(myinvocation.mycommand)

$total2 = Foreach ($variable in $collection) {
    [pscustomobject]@{
         Name = $variable.Name
    }
}
$total2 | Export-CSV -Path c:\temp\total.csv -NoTypeInformation -Encoding UTF8 -Delimiter ';'
$total = Foreach ($variable in $collection) {
    [pscustomobject]@{
         Name = $variable.Name
    }
}
$total | Export-CSV -Path c:\temp\total.csv -NoTypeInformation -Encoding UTF8 -Delimiter ';'

#Set Execution Policy
Set-ExecutionPolicy RemoteSigned -Scope Process
#Define credential
$UserCredential = Get-Credential
# Create the session
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking
#HTML file and styles
$htmlHeader = @"
<!doctype html">
<html lang="e">
<head>
<meta charset="UTF-8">
<title>Title</title>
<style type="text/css">
body {
}
</style>
</head>
"@

$Params = @{
    'SmtpServer'  = 'smtp.mycompany.com'
    'Port'        = 25
    'Priority'    = 'Normal'
    'From'        = 'sender@mycompany.com'
    'To'          = 'mainrecipient@mycompany.com'
    'Cc'          = 'copyrecipient@mycompany.com'
    'Bcc'         = 'hiddenrecipient@mycompany.com'
    'Subject'     = 'Mail title'
    'Body'        = 'This is the content of my mail'
    'BodyAsHtml'  = $false
    'Attachments' = 'c:\MyFile.txt'
}
Send-MailMessage @Params

$Params = @{
    'SmtpServer'  = 'smtp.mycompany.com'
    'Port'        = 25
    'Priority'    = 'Normal'
    'From'        = 'sender@mycompany.com'
    'To'          = 'mainrecipient@mycompany.com'
    'Cc'          = 'copyrecipient@mycompany.com'
    'Bcc'         = 'hiddenrecipient@mycompany.com'
    'Subject'     = 'Mail title'
    'Body'        = 'This is the content of my mail'
    'BodyAsHtml'  = $false
    'Attachments' = 'c:\MyFile.txt'
}
Send-MailMessage @Params

<#

#
#>
    #>

<# Block Cooment

#
#>