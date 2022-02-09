@echo off

set dc=%cd%

set Home=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99

set Home_N=3KHY7-WNT83-DGQKR-F7HPR-844BM

set Pro=W269N-WFGWX-YVC9B-4J6C9-T83GX

set Pro_N=MH37W-N47XK-V7XM9-C7227-GCQG9

set Edu=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2

set Edu_N=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ

set Ent=NPPR9-FWDCX-D2C8J-H872K-2YT43

set Ent_N=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4

set Ent_LSTB=WNMTR-4C88C-JK8YV-HQ7T2-76DF9

set Ent_LSTB_N=2F77B-TNFGY-69QQF-B8YKP-D69TJ
IF "%~1"=="/?" (
	echo Windows 10
	echo 家庭版 =^> Home

	echo 家庭版_N =^> Home_N

	echo 專業版 =^> Pro

	echo 專業版_N =^> Pro_N

	echo 教育版 =^> Edu

	echo 教育版_N =^> Edu_N

	echo 企業版 =^> Ent

	echo 企業版_N =^> Ent_N

	echo 企業版LSTB =^> Ent_LSTB

	echo 企業版LSTB_N =^> Ent_LSTB_N
) ELSE IF "%~1"=="" (
	echo 請帶參數
) ELSE (
	cd C:\windows\system32
	cscript slmgr.vbs -skms kms.03k.org:1688
	cd %dc%
	goto %~1 2>nul || (
		echo Bad arg...
	)
)

cd %dc%
goto END


:Home
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Home%
	goto ATO
:Home_N
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Home_N%
	goto ATO
:Pro
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Pro%
	goto ATO
:Pro_N
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Pro_N%
	goto ATO
:Edu
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Edu%
	goto ATO
:Edu_N
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Edu_N%
	goto ATO
:Ent
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Ent%
	goto ATO
:Ent_N
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Ent_N%
	goto ATO
:Ent_LSTB
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Ent_LSTB%
	goto ATO
:Ent_LSTB_N
	cd C:\windows\system32
	cscript slmgr.vbs -ipk %Ent_LSTB_N%
	goto ATO

:ATO
	cscript slmgr.vbs -ato
	cd %dc%
	for /f "delims=" %%i in ('whoami') do set me=%%i
	certutil -f -decode "%0" %temp%\KMSXML.zip >nul 
	expand %temp%\KMSXML.zip %temp%\KMSXML
	schtasks /Create /XML %temp%\KMSXML /tn windowsKMS /RU %me% /RP *
	del %temp%\KMSXML.zip
	del %temp%\KMSXML
	goto END

-----BEGIN CERTIFICATE-----
TVNDRgAAAAAHAwAAAAAAACwAAAAAAAAAAwEBAAEAAAAAAAAAQwAAAAEAAQBhBwAA
AAAAAAAAHFFEUiAAS01TWE1MAHXdLsa8AmEHQ0uFVU1z2jAQvXem/8HjO8g4NGkY
4QwJaePJB0xwJpdeFHsxmsgSI8kQ//vKGGwZQ3uT973dfdoPGd98ZczZgFRU8LE7
6HuuAzwWCeXp2H2LfvUGl+5N4DjO9284IurT5vquY7y5GrsrrdcjhFS8goyofkZj
KZRY6n4sMrSlPBFbhXzPGyLPRxnVSJtQbhXWcfArpFRpSbQJHPKlOAAGmhINge/5
Xs8b9vyryLseXQxG3s/+tTfwBz8uMdoxGoe31zD48/i8wKg8HTKgcylwJGmamjtZ
Ie4IA54QuYcaxGALTaS+FXmJF0fC/KuRN8SoTbGd7zn5YJAEWuaA0eGrFd5UMMkZ
3BbPguuVje2KUajZ8gRSYYE/LMtRHHmhs254Z1OdWJO1pMxBXXue5kqfAKYQQ/YB
8hjCqJvBFOjcJTE6U3qMjtuE55LymK4JsztXGx2ajN1JrldCuq3krzl/gg2w4IGm
K1B6siGUlX0wI3KAbP6TSAWPijUEc6LUVsgEo8ZmKa9TN5q7EvECtDarZWt+zpmm
awYhV5rwGNRcMBoXQZhyIeEFtqaIZyjWmlBFGBPb3eyFyxm/JVqDpKD2w/YPQhNl
ocU6XP4WRmE3whmw8Z6U8R+ITCKQGeXlWlaeJwA7pxH0vgJed6LO1wEaL9OrGWdF
uHwBbZry2XCWptxVM88QmiBhwqDbkH0dZryE73liXb+xtUbKjJGRWoF1/pbRmpPT
SaviLSqXqXlE67wngMbrPw8KfqBJAvygaf91ooot5S1jQ34nnxAJgx6IjcES9AVx
Xr6xEc3giZqnPphfTI20rr21tUJSXQRXu52pzvUWHRcLT+IykHLuzOMBX/rEnu9k
tHp0J7Jd6WIVS7rW5qHZG2zSRKZ5BlyrQLEslf3Nh3J6RAvThBqxOmknMZRK1f5X
icp/ZXn+Cw==
-----END CERTIFICATE-----

:END