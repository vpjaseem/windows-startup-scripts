#Download the Web App file
cd C:\inetpub\wwwroot
$url = "https://github.com/vpjaseem/sample-static-html-web-app/archive/master.zip"
$output = "C:\inetpub\wwwroot\master.zip"
$start_time = Get-Date

Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

#Uzip the Web App master zip file
Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "C:\inetpub\wwwroot\master.zip" "C:\inetpub\wwwroot\master"

#Moving Web App contents to wwwroot of IIS
C:\inetpub\wwwroot\master\sample-static-html-web-app-master
Move-Item -Path .\* -Destination C:\inetpub\wwwroot\
cd C:\inetpub\wwwroot\

#Removing unwanted folders
Remove-Item -LiteralPath "C:\inetpub\wwwroot\master\" -Force -Recurse
Remove-Item "C:\inetpub\wwwroot\master.zip"
