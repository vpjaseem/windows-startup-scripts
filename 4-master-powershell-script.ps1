﻿iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vpjaseem/windows-startup-scripts/master/1-add-iis-feature.ps1'))
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vpjaseem/windows-startup-scripts/master/2-download-web-app-extract.ps1'))
iex ((New-Object System.Net.WebClient).DownloadString('https://github.com/vpjaseem/windows-startup-scripts/raw/master/3-allow-http-inbound.ps1'))