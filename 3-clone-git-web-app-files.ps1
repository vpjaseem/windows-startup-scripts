cd C:\inetpub\wwwroot\
git clone https://github.com/vpjaseem/sample-static-web-app.git
cd C:\inetpub\wwwroot\sample-static-web-app\
Move-Item -Path .\* -Destination C:\inetpub\wwwroot\
cd C:\inetpub\wwwroot\
Remove-Item -LiteralPath "C:\inetpub\wwwroot\sample-static-web-app\" -Force -Recurse