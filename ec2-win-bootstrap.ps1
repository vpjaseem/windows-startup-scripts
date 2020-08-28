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
Start-Process "c:/temp/python.exe" -argumentlist "/passive InstallAllUsers=1 PrependPath=1 Include_test=0" -wait

### Downloading and Installing AWS CLI Version 2

# Creating a Temp folder if it is not available
$path = "C:/temp/"
If (!(test-path $path))
{
    md C:/Temp/
}
cd c:/temp/

# Download AWSCLIV2.msi
Invoke-WebRequest -Uri "https://awscli.amazonaws.com/AWSCLIV2.msi" -OutFile "c:/temp/AWSCLIV2.msi"

# Install AWSCLIV2.msi
Start-Process "c:/temp/AWSCLIV2.msi" /passive -wait

### Downloading and Installing Notepad ++

# Creating a Temp folder if it is not available
$path = "C:/temp/"
If (!(test-path $path))
{
    md C:/Temp/
}
cd c:/temp/

# Download Notepad ++
Invoke-WebRequest -Uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.8/npp.7.8.8.Installer.exe" -OutFile "c:/temp/npp.exe"

# Install Notepad ++

start-process "c:/temp/npp.exe" -ArgumentList '/passive /S' -Verb runas -Wait



