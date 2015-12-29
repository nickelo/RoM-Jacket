:SELTYPE
del /q "%GBC%\shaderlist.ini"
echo None>"%GBC%\shaderlist.ini"
echo CRT>>"%GBC%\shaderlist.ini"
echo CRT1>>"%GBC%\shaderlist.ini"
echo CRT2>>"%GBC%\shaderlist.ini"
echo CRT3>>"%GBC%\shaderlist.ini"
pushd "%GBC%\net\%LNCH%\%ARCD%"
del /q "%GBC%\SHADERTYPE.cmd"
"%GBC%\wselect.exe" "%GBC%\shaderlist.ini" "Select a Shader" "set SHADERNUM=$item" > "%GBC%\shaderlist.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\shaderlist.cmd"
if "%SHADERTYPE%"=="None" goto :NOSHADER
if "%SHADERTYPE%"=="" goto :NOSHADER
goto :%SHADERNUM%

:NOSHADER
SET SHDRON=0
exit /b

:CRT
:CRT1
:CRT2
:CRT3
"%GBC%\fart.exe" "mame.ini" "aperture.png" "aperture.png"
"%GBC%\fart.exe" "mame.ini" "shadow_mask_alpha 0.0" "shadow_mask_alpha 0.0"
"%GBC%\fart.exe" "mame.ini" "shadow_mask_x_count 320" "shadow_mask_x_count 320"
"%GBC%\fart.exe" "mame.ini" "shadow_mask_y_count 240" "shadow_mask_y_count 240"
"%GBC%\fart.exe" "mame.ini" "shadow_mask_usize 0.09375" "shadow_mask_usize 0.09375"
"%GBC%\fart.exe" "mame.ini" "shadow_mask_vsize 0.109375" "shadow_mask_vsize 0.109375"
"%GBC%\fart.exe" "mame.ini" "curvature 0.03" "curvature 0.03"
"%GBC%\fart.exe" "mame.ini" "pincushion 0.03" "pincushion 0.03"
"%GBC%\fart.exe" "mame.ini" "scanline_alpha 1.0" "scanline_alpha 1.0"
"%GBC%\fart.exe" "mame.ini" "scanline_size 1.0" "scanline_size 1.0"
"%GBC%\fart.exe" "mame.ini" "scanline_height 1.0" "scanline_height 1.0"
"%GBC%\fart.exe" "mame.ini" "scanline_bright_scale 1.0" "scanline_bright_scale 1.0"
"%GBC%\fart.exe" "mame.ini" "scanline_bright_offset 0.0" "scanline_bright_offset 0.0"
"%GBC%\fart.exe" "mame.ini" "scanline_jitter 0.0" "scanline_jitter 0.0"
"%GBC%\fart.exe" "mame.ini" "defocus 0.0,0.0" "defocus 0.0,0.0"
"%GBC%\fart.exe" "mame.ini" "converge_x 0.3,0.0,-0.3" "converge_x 0.3,0.0,-0.3"
"%GBC%\fart.exe" "mame.ini" "converge_y 0.0,0.3,-0.3" "converge_y 0.0,0.3,-0.3"
"%GBC%\fart.exe" "mame.ini" "radial_converge_x 0.0,0.0,0.0" "radial_converge_x 0.0,0.0,0.0"
"%GBC%\fart.exe" "mame.ini" "radial_converge_y 0.0,0.0,0.0" "radial_converge_y 0.0,0.0,0.0"
"%GBC%\fart.exe" "mame.ini" "red_ratio 1.0,0.0,0.0" "red_ratio 1.0,0.0,0.0"
"%GBC%\fart.exe" "mame.ini" "grn_ratio 0.0,1.0,0.0" "grn_ratio 0.0,1.0,0.0"
"%GBC%\fart.exe" "mame.ini" "blu_ratio 0.0,0.0,1.0" "blu_ratio 0.0,0.0,1.0"
"%GBC%\fart.exe" "mame.ini" "saturation 1.4" "saturation 1.4"
"%GBC%\fart.exe" "mame.ini" "offset 0.0,0.0,0.0" "offset 0.0,0.0,0.0"
"%GBC%\fart.exe" "mame.ini" "scale 0.95,0.95,0.95" "scale 0.95,0.95,0.95"
"%GBC%\fart.exe" "mame.ini" "power 0.8,0.8,0.8" "power 0.8,0.8,0.8"
"%GBC%\fart.exe" "mame.ini" "floor 0.05,0.05,0.05" "floor 0.05,0.05,0.05"
"%GBC%\fart.exe" "mame.ini" "phosphor_life 0.4,0.4,0.4" "phosphor_life 0.4,0.4,0.4"