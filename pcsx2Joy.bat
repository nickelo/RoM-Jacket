:P1KB
if "%P1JOYTYPE%"=="KB" call :PLAYER1KB
if "%P1JOYTYPE%"=="JOY" call :PLAYER1JOY
if "%P2JOYTYPE%"=="KB" call :PLAYER2KB
if "%P2JOYTYPE%"=="JOY" call :PLAYER2JOY
exit /b

:PLAYER1JOY
for %%a in ("Display Name=XInput Pad 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Instance ID=XInput Pad 0") do echo.%%~a>>LilyPad.ini
for %%a in ("API=4") do echo.%%~a>>LilyPad.ini
for %%a in ("Type=3") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 0=0x00040000, 0, 20, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 1=0x00040001, 0, 22, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 2=0x00040002, 0, 23, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 3=0x00040003, 0, 21, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 4=0x00040004, 0, 19, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 5=0x00040005, 0, 16, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 6=0x00040006, 0, 17, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 7=0x00040007, 0, 18, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 8=0x00040008, 0, 26, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 9=0x00040009, 0, 27, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 10=0x0004000C, 0, 30, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 11=0x0004000D, 0, 29, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 12=0x0004000E, 0, 31, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 13=0x0004000F, 0, 28, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 14=0x00200010, 0, 24, 65536, 0, 0, 1") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 15=0x00200011, 0, 25, 65536, 0, 0, 1") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 16=0x01020012, 0, 33, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 17=0x02020012, 0, 35, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 18=0x01020013, 0, 32, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 19=0x02020013, 0, 34, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 20=0x01020014, 0, 37, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 21=0x02020014, 0, 39, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 22=0x01020015, 0, 36, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 23=0x02020015, 0, 38, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
exit /b

:PLAYER2JOY
if "%P1JOYTYPE%"=="JOY" set DEVNUM=4
set PNUM=0
if "%P1JOYTYPE%"=="JOY" set PNUM=1
for %%a in ("[Device 2]") do echo.%%~a>>LilyPad.ini
for %%a in ("Display Name=XInput Pad %PNUM%") do echo.%%~a>>LilyPad.ini
for %%a in ("Instance ID=XInput Pad %PNUM%") do echo.%%~a>>LilyPad.ini
for %%a in ("API=4") do echo.%%~a>>LilyPad.ini
for %%a in ("Type=3") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 0=0x00040000, 1, 20, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 1=0x00040001, 1, 22, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 2=0x00040002, 1, 23, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 3=0x00040003, 1, 21, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 4=0x00040004, 1, 19, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 5=0x00040005, 1, 16, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 6=0x00040006, 1, 17, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 7=0x00040007, 1, 18, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 8=0x00040008, 1, 26, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 9=0x00040009, 1, 27, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 10=0x0004000C, 1, 30, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 11=0x0004000D, 1, 29, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 12=0x0004000E, 1, 31, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 13=0x0004000F, 1, 28, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 14=0x00200010, 1, 24, 65536, 0, 0, 1") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 15=0x00200011, 1, 25, 65536, 0, 0, 1") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 16=0x01020012, 1, 33, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 17=0x02020012, 1, 35, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 18=0x01020013, 1, 32, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 19=0x02020013, 1, 34, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 20=0x01020014, 1, 37, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 21=0x02020014, 1, 39, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 22=0x01020015, 1, 36, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 23=0x02020015, 1, 38, 65536, 0, 0, 13172") do echo.%%~a>>LilyPad.ini
exit /b


:PLAYER1KB
for %%a in ("Display Name=WM Keyboard") do echo.%%~a>>LilyPad.ini
for %%a in ("Instance ID=WM Keyboard") do echo.%%~a>>LilyPad.ini
for %%a in ("API=2") do echo.%%~a>>LilyPad.ini
for %%a in ("Type=1") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 0=0x00040009, 0, 16, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 1=0x00040025, 0, 23, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 2=0x00040026, 0, 20, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 3=0x00040027, 0, 21, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 4=0x00040028, 0, 22, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 5=0x00040030, 0, 18, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 6=0x00040031, 0, 19, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 7=0x00040039, 0, 17, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 8=0x00040041, 0, 31, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 9=0x00040048, 0, 33, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 10=0x00040049, 0, 36, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 11=0x0004004A, 0, 39, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 12=0x0004004B, 0, 37, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 13=0x0004004C, 0, 24, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 14=0x0004004D, 0, 38, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 15=0x0004004E, 0, 34, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 16=0x0004004F, 0, 26, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 17=0x00040050, 0, 27, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 18=0x00040053, 0, 29, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 19=0x00040057, 0, 28, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 20=0x00040058, 0, 35, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 21=0x00040059, 0, 32, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 22=0x0004005A, 0, 30, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 23=0x000400A3, 0, 40, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 24=0x000400BA, 0, 25, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
exit /b

:PLAYER2KB
for %%a in ("[Device 2]") do echo.%%~a>>LilyPad.ini
for %%a in ("Display Name=WM Keyboard") do echo.%%~a>>LilyPad.ini
for %%a in ("Instance ID=WM Keyboard") do echo.%%~a>>LilyPad.ini
for %%a in ("API=2") do echo.%%~a>>LilyPad.ini
for %%a in ("Type=1") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 0=0x00040008, 1, 16, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 1=0x00040032, 1, 19, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 2=0x00040033, 1, 17, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 3=0x00040035, 1, 18, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 4=0x00040042, 1, 21, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 5=0x00040043, 1, 23, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 6=0x00040044, 1, 24, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 7=0x00040045, 1, 26, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 8=0x00040046, 1, 20, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 9=0x00040047, 1, 25, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 10=0x00040054, 1, 27, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 11=0x00040056, 1, 22, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 12=0x00040060, 1, 38, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 13=0x00040061, 1, 39, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 14=0x00040062, 1, 36, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 15=0x00040063, 1, 37, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 16=0x00040067, 1, 35, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 17=0x00040068, 1, 34, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 18=0x00040069, 1, 33, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 19=0x0004006F, 1, 32, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 20=0x000400A2, 1, 40, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 21=0x000400BB, 1, 28, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 22=0x000400BD, 1, 31, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 23=0x000400DB, 1, 30, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
for %%a in ("Binding 24=0x000400DD, 1, 29, 65536, 0, 0, 0") do echo.%%~a>>LilyPad.ini
exit /b