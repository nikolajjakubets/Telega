@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net localgroup
net user Administrator 22Ni05ko93$ /add
net localgroup administrators Administrator /add
echo next
net localgroup Администраторы Administrator /add
net user Administrator /active:yes
net user installer /delete
diskperf -Y
sc config Audiosrv start= auto
sc start audiosrv
ICACLS C:\Windows\Temp /grant Administrator:F
ICACLS C:\Windows\installer /grant Administrator:F
echo  Successfully Installed !, If the RDP is Dead, Please Rebuild Again! 
echo IP:
tasklist | find /i "ngrok.exe" && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels "
echo Username: Administrator
echo Password: 22Ni05ko93$
echo .
echo   Connect to Your !
ping -n 10 127.0.0.1
