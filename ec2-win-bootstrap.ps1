### Install Google Chrome
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer

### Downloading and Installing Python
# Creating a Temp folder if it is not available
$path = "C:/temp/"
If (!(test-path $path))
{
    md C:/Temp/
}
cd c:/temp/

# Download Python.exe
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.8.5/python-3.8.5.exe" -OutFile "c:/temp/python.exe"

# Install Python
c:/temp/python.exe /passive InstallAllUsers=1 PrependPath=1 Include_test=0

