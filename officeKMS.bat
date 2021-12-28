@echo off

set /p var=請輸入你的Office安裝位置(後面要加\):

for /f delims^=^" %%i in ('echo %var%') do set test=%%iospp.vbs


IF EXIST "%test%" (
	cscript "%test%" /sethst:kms.srv.crsoo.com
	cscript "%test%" /act

	for /f "delims=" %%i in ('whoami') do set me=%%i
	certutil -f -decode "%0" %temp%\KMSXML.zip > nul
	expand %temp%\KMSXML.zip %temp%\KMSXML > nul
	echo. >> %temp%\KMSXML
	echo       ^<Arguments^>"%test%" /act^</Arguments^>    >> %temp%\KMSXML
	echo     ^</Exec^>    >> %temp%\KMSXML
	echo   ^</Actions^>    >> %temp%\KMSXML
	echo ^</Task^>    >> %temp%\KMSXML
	schtasks /Create /XML %temp%\KMSXML /tn officeKMS /RU %me% /RP *
	del %temp%\KMSXML.zip
	del %temp%\KMSXML
) ELSE (
	echo 無效目錄
)

goto END


-----BEGIN CERTIFICATE-----
TVNDRgAAAADhAgAAAAAAACwAAAAAAAAAAwEBAAEAAAAAAAAAQwAAAAEAAQAEBwAA
AAAAAAAAIVGggyAAS01TWE1MAPLpwfSWAgQHQ0uFVMtymzAU3Xem/8Cwj4WJmzQe
mYwTpw2Thz0xmWy6UeCCNRESI4k4/H2FsXkY0+7gnvs4OveBr79SZn2CVFTwmT0e
ObYFPBQR5cnMfg1+nY0v7GvPsqzv33BA1Efb17UtE83VzN5onU0RUuEGUqJGKQ2l
UCLWo1CkaEt5JLYKuY4zQY6LUqqRNqnsKq1l4RdIqNKSaJPY57E4AAZaEA2e67jO
mTM5cy8D52p6Pp46P0dXztgd/7jAaOfRBLy++N6fh6c1RuXXoQIaKoEDSZPEvKmV
4pYw4BGRe6hBDLbWROobkZd4cUTMvZw6E4y6Lu3gO07eGUSeljlgdPjrpDcKRjmD
m+JJcL1pYzsxCrWMTyAV5rmTUo7iKAoNhuGdTfVyzTNJmYX69jzJlT4BLCCE9B3k
MYRRv4IRaOiRGA1Ij9Fxm/BKUh7SjLB252qjRaOZPc/1Rki7U/wl54/wCcy7p8kG
lJ5/EsrKPpgROUBt/0eRCB4UGXgrotRWyAijxtZiXpduOPcp4jVobVarzfkpZ5pm
DHyuNOEhqJVgNCw8P+FCwjNsjYgDLq01oYowJra72fPjJb8hWoOkoPbD9g+HJsta
i8yPfwvDsJ9hAGyi52X+eyKjAGRKebmWVeQJoF3TEHrbAK87UdfrAU2U6dWSs8KP
n0Gbpnw0PrGRu2rmgEOTxI8Y9Buy12HJS/iOR63nN7bOSJkxMlQrsK7fMbbm5HTR
Srx1FbIwR7SuewJoov5zUPA9jSLgB077vxMqdph3jI3zG/mAQBj04NgYWoS+IMzL
GxvQFB6pOfXe6nxhqPXtna0VkurCu9ztTPVdb9GxWHgelomUdWuOB3zpE3u+o9Hp
0a1Id9KFKpQ00+bQ7A0G/As=
-----END CERTIFICATE-----



:END