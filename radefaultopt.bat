set CORECFG=retroarch-core-options
REM set CORECFG=%RATYPE%
"%GBC%\fart.exe" "retroarch.cfg" [INPUTD] "dinput"
"%GBC%\fart.exe" "retroarch.cfg" "[EMUDLL]" "cores\%RACORE%"
"%GBC%\fart.exe" "retroarch.cfg" "[EMUPTH]" "%CSTEML%"
"%GBC%\fart.exe" "retroarch.cfg" "[SHADERPTH]" "%CSTEML%\shaders"
"%GBC%\fart.exe" "retroarch.cfg" "[CSTEMU]" "%RTROA%"
"%GBC%\fart.exe" "retroarch.cfg" "[SHADERTOGGLE]" "false"
"%GBC%\fart.exe" "retroarch.cfg" "[VIDSHADER]" --remove
"%GBC%\fart.exe" "retroarch.cfg" "[VFILT]" --remove
"%GBC%\fart.exe" "retroarch.cfg" "[REWIND]" false
"%GBC%\fart.exe" "retroarch.cfg" [AUDIOSYNC] true
"%GBC%\fart.exe" "retroarch.cfg" "[DRIVER]" gl
"%GBC%\fart.exe" "retroarch.cfg" "[BUFFER]" false
"%GBC%\fart.exe" "retroarch.cfg" "[ASPCT]" true
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 6
"%GBC%\fart.exe" "retroarch.cfg" "[VSYNC]" false
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNC]" false
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNCF]" 0
"%GBC%\fart.exe" "retroarch.cfg" "[BFRAMEINS]" false
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKER]" false
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKNUM]" 0
"%GBC%\fart.exe" "retroarch.cfg" "[VSWAP]" 1
if "%ARPOP%"=="64" "%GBC%\fart.exe" "retroarch.cfg" "[THREAD]" true
if "%ARPOP%"=="32" "%GBC%\fart.exe" "retroarch.cfg" "[THREAD]" false
"%GBC%\fart.exe" "retroarch.cfg" "[ROT]" 0
"%GBC%\fart.exe" "%CORECFG%.cfg" [NDSALIGN] main_top_ext_bottom
"%GBC%\fart.exe" "%CORECFG%.cfg" [NDSFRMSK] none
"%GBC%\fart.exe" "%CORECFG%.cfg" [PAK1] memory
"%GBC%\fart.exe" "%CORECFG%.cfg" [PAK2] memory
"%GBC%\fart.exe" "%CORECFG%.cfg" [ACCUR] high
"%GBC%\fart.exe" "%CORECFG%.cfg" [GFXPLUG] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [SNDPLUG] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [PCESPRL] true
"%GBC%\fart.exe" "%CORECFG%.cfg" [GENXPAD] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [GENXFILT] rgb
"%GBC%\fart.exe" "%CORECFG%.cfg" [GENXREND] normal
"%GBC%\fart.exe" "%CORECFG%.cfg" [PICOPAD1] "3 Button"
"%GBC%\fart.exe" "%CORECFG%.cfg" [PICOPAD2] "3 Button"
"%GBC%\fart.exe" "%CORECFG%.cfg" [PICOSPRL] "enabled"
"%GBC%\fart.exe" "%CORECFG%.cfg" [CPUCORE] jit
"%GBC%\fart.exe" "%CORECFG%.cfg" [PSPSPEED] off
"%GBC%\fart.exe" "%CORECFG%.cfg" [RENDERMODE] buffer
"%GBC%\fart.exe" "%CORECFG%.cfg" [AUTOFRAMESKIP] 0
"%GBC%\fart.exe" "%CORECFG%.cfg" [FRMSKPNUM] 0
"%GBC%\fart.exe" "%CORECFG%.cfg" [PSPINTRES] 480x272
"%GBC%\fart.exe" "%CORECFG%.cfg" [PSPEXTRES] 480x272
"%GBC%\fart.exe" "%CORECFG%.cfg" [FASTMEM] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [TEXSCALELVL] 0
"%GBC%\fart.exe" "%CORECFG%.cfg" [SCALETYPE] xbrz
"%GBC%\fart.exe" "%CORECFG%.cfg" [ANTISFILT] off
"%GBC%\fart.exe" "%CORECFG%.cfg" [GPUTRANS] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [VERTCACHE] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [CPUTHREAD] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [IOTHREAD] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [UNSAFE] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [SOUNDHACK] disabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [4DORES] enabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [JAGBLIT] enabled
"%GBC%\fart.exe" "%CORECFG%.cfg" [PAK1] memory
"%GBC%\fart.exe" "%CORECFG%.cfg" [PAK2] memory
"%GBC%\fart.exe" "%CORECFG%.cfg" [ACCUR] high
"%GBC%\fart.exe" "%CORECFG%.cfg" [GFXPLUG] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [SNDPLUG] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [N64REZ] 640x480
"%GBC%\fart.exe" "%CORECFG%.cfg" [N64FILT] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [N64SPEED] 1500
"%GBC%\fart.exe" "%CORECFG%.cfg" [N64FRAMER] original
"%GBC%\fart.exe" "%CORECFG%.cfg" [PCESPRL] true
"%GBC%\fart.exe" "%CORECFG%.cfg" [GENXPAD] auto
"%GBC%\fart.exe" "%CORECFG%.cfg" [GENXFILT] rgb
"%GBC%\fart.exe" "%CORECFG%.cfg" [GENXREND] normal
"%GBC%\fart.exe" "%CORECFG%.cfg" [PICOPAD1] "6 Button"
"%GBC%\fart.exe" "%CORECFG%.cfg" [PICOPAD2] "6 Button"
"%GBC%\fart.exe" "%CORECFG%.cfg" [PICOSPRL] "enabled"
"%GBC%\fart.exe" "%CORECFG%.cfg" [DCREZ] "640x480"
"%GBC%\fart.exe" "%CORECFG%.cfg" [DCWIDE] "disabled"
