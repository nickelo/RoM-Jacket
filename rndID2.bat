for /f "tokens=1,2,3,4,5 delims=-" %%a in ('"%GBC%\uuidgen.exe"') do set RNDNXF=%%~a%%~b%%~c%%~d%%~e
exit /b
SET Length=32
REM Generate first character
ECHO %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM%>NULL
SET /A WhichChar=%random%/512

GOTO s%WhichChar%

:s0
SET RandomPassword=A
GOTO loop
:s1
SET RandomPassword=B
GOTO loop
:s2
SET RandomPassword=C
GOTO loop
:s3
SET RandomPassword=D
GOTO loop
:s4
SET RandomPassword=E
GOTO loop
:s5
SET RandomPassword=F
GOTO loop
:s6
SET RandomPassword=G
GOTO loop
:s7
SET RandomPassword=H
GOTO loop
:s8
SET RandomPassword=I
GOTO loop
:s9
SET RandomPassword=J
GOTO loop
:s10
SET RandomPassword=K
GOTO loop
:s11
SET RandomPassword=L
GOTO loop
:s12
SET RandomPassword=M
GOTO loop
:s13
SET RandomPassword=N
GOTO loop
:s14
SET RandomPassword=O
GOTO loop
:s15
SET RandomPassword=P
GOTO loop
:s16
SET RandomPassword=Q
GOTO loop
:s17
SET RandomPassword=R
GOTO loop
:s18
SET RandomPassword=S
GOTO loop
:s19
SET RandomPassword=T
GOTO loop
:s20
SET RandomPassword=U
GOTO loop
:s21
SET RandomPassword=V
GOTO loop
:s22
SET RandomPassword=W
GOTO loop
:s23
SET RandomPassword=X
GOTO loop
:s24
SET RandomPassword=Y
GOTO loop
:s25
SET RandomPassword=Z
GOTO loop
:s26
SET RandomPassword=a
GOTO loop
:s27
SET RandomPassword=b
GOTO loop
:s28
SET RandomPassword=c
GOTO loop
:s29
SET RandomPassword=d
GOTO loop
:s30
SET RandomPassword=e
GOTO loop
:s31
SET RandomPassword=f
GOTO loop
:s32
SET RandomPassword=g
GOTO loop
:s33
SET RandomPassword=h
GOTO loop
:s34
SET RandomPassword=i
GOTO loop
:s35
SET RandomPassword=j
GOTO loop
:s36
SET RandomPassword=k
GOTO loop
:s37
SET RandomPassword=l
GOTO loop
:s38
SET RandomPassword=m
GOTO loop
:s39
SET RandomPassword=n
GOTO loop
:s40
SET RandomPassword=o
GOTO loop
:s41
SET RandomPassword=p
GOTO loop
:s42
SET RandomPassword=q
GOTO loop
:s43
SET RandomPassword=r
GOTO loop
:s44
SET RandomPassword=s
GOTO loop
:s45
SET RandomPassword=t
GOTO loop
:s46
SET RandomPassword=u
GOTO loop
:s47
SET RandomPassword=v
GOTO loop
:s48
SET RandomPassword=w
GOTO loop
:s49
SET RandomPassword=x
GOTO loop
:s50
SET RandomPassword=y
GOTO loop
:s51
SET RandomPassword=z
GOTO loop
:s52
SET RandomPassword=0
GOTO loop
:s53
SET RandomPassword=1
GOTO loop
:s54
SET RandomPassword=2
GOTO loop
:s55
SET RandomPassword=3
GOTO loop
:s56
SET RandomPassword=4
GOTO loop
:s57
SET RandomPassword=5
GOTO loop
:s58
SET RandomPassword=6
GOTO loop
:s59
SET RandomPassword=7
GOTO loop
:s60
SET RandomPassword=8
GOTO loop
:s61
SET RandomPassword=9
GOTO loop
:s62
SET RandomPassword=5
GOTO loop
:s63
SET RandomPassword=5
GOTO loop

REM Generate subsequent characters
:loop

IF "%Length%"=="1" GOTO TheEnd

SET /A Length=%Length%-1

ECHO %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM%>NULL
SET /A WhichChar=%random%/512

GOTO x%WhichChar%

:x0
SET RandomPassword=%RandomPassword%A
GOTO loop
:x1
SET RandomPassword=%RandomPassword%B
GOTO loop
:x2
SET RandomPassword=%RandomPassword%C
GOTO loop
:x3
SET RandomPassword=%RandomPassword%D
GOTO loop
:x4
SET RandomPassword=%RandomPassword%E
GOTO loop
:x5
SET RandomPassword=%RandomPassword%F
GOTO loop
:x6
SET RandomPassword=%RandomPassword%G
GOTO loop
:x7
SET RandomPassword=%RandomPassword%H
GOTO loop
:x8
SET RandomPassword=%RandomPassword%I
GOTO loop
:x9
SET RandomPassword=%RandomPassword%J
GOTO loop
:x10
SET RandomPassword=%RandomPassword%K
GOTO loop
:x11
SET RandomPassword=%RandomPassword%L
GOTO loop
:x12
SET RandomPassword=%RandomPassword%M
GOTO loop
:x13
SET RandomPassword=%RandomPassword%N
GOTO loop
:x14
SET RandomPassword=%RandomPassword%O
GOTO loop
:x15
SET RandomPassword=%RandomPassword%P
GOTO loop
:x16
SET RandomPassword=%RandomPassword%Q
GOTO loop
:x17
SET RandomPassword=%RandomPassword%R
GOTO loop
:x18
SET RandomPassword=%RandomPassword%S
GOTO loop
:x19
SET RandomPassword=%RandomPassword%T
GOTO loop
:x20
SET RandomPassword=%RandomPassword%U
GOTO loop
:x21
SET RandomPassword=%RandomPassword%V
GOTO loop
:x22
SET RandomPassword=%RandomPassword%W
GOTO loop
:x23
SET RandomPassword=%RandomPassword%X
GOTO loop
:x24
SET RandomPassword=%RandomPassword%Y
GOTO loop
:x25
SET RandomPassword=%RandomPassword%Z
GOTO loop
:x26
SET RandomPassword=%RandomPassword%a
GOTO loop
:x27
SET RandomPassword=%RandomPassword%b
GOTO loop
:x28
SET RandomPassword=%RandomPassword%c
GOTO loop
:x29
SET RandomPassword=%RandomPassword%d
GOTO loop
:x30
SET RandomPassword=%RandomPassword%e
GOTO loop
:x31
SET RandomPassword=%RandomPassword%f
GOTO loop
:x32
SET RandomPassword=%RandomPassword%g
GOTO loop
:x33
SET RandomPassword=%RandomPassword%h
GOTO loop
:x34
SET RandomPassword=%RandomPassword%i
GOTO loop
:x35
SET RandomPassword=%RandomPassword%j
GOTO loop
:x36
SET RandomPassword=%RandomPassword%k
GOTO loop
:x37
SET RandomPassword=%RandomPassword%l
GOTO loop
:x38
SET RandomPassword=%RandomPassword%m
GOTO loop
:x39
SET RandomPassword=%RandomPassword%n
GOTO loop
:x40
SET RandomPassword=%RandomPassword%o
GOTO loop
:x41
SET RandomPassword=%RandomPassword%p
GOTO loop
:x42
SET RandomPassword=%RandomPassword%q
GOTO loop
:x43
SET RandomPassword=%RandomPassword%r
GOTO loop
:x44
SET RandomPassword=%RandomPassword%s
GOTO loop
:x45
SET RandomPassword=%RandomPassword%t
GOTO loop
:x46
SET RandomPassword=%RandomPassword%u
GOTO loop
:x47
SET RandomPassword=%RandomPassword%v
GOTO loop
:x48
SET RandomPassword=%RandomPassword%w
GOTO loop
:x49
SET RandomPassword=%RandomPassword%x
GOTO loop
:x50
SET RandomPassword=%RandomPassword%y
GOTO loop
:x5
SET RandomPassword=%RandomPassword%z
GOTO loop
:x52
SET RandomPassword=%RandomPassword%0
GOTO loop
:x53
SET RandomPassword=%RandomPassword%1
GOTO loop
:x54
SET RandomPassword=%RandomPassword%2
GOTO loop
:x55
SET RandomPassword=%RandomPassword%3
GOTO loop
:x56
SET RandomPassword=%RandomPassword%4
GOTO loop
:x57
SET RandomPassword=%RandomPassword%5
GOTO loop
:x58
SET RandomPassword=%RandomPassword%6
GOTO loop
:x59
SET RandomPassword=%RandomPassword%7
GOTO loop
:x60
SET RandomPassword=%RandomPassword%8
GOTO loop
:x61
SET RandomPassword=%RandomPassword%9
GOTO loop
:x62
SET RandomPassword=%RandomPassword%a
GOTO loop
:x63
SET RandomPassword=%RandomPassword%v
GOTO loop

:TheEnd

ECHO %RandomPassword%
