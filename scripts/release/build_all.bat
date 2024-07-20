setlocal enableextensions enabledelayedexpansion
prompt $
echo off
cls

set _version=1.0.0
set _platform_RID=win-x86

call build.bat "..\.." %_version% %_platform_RID% game\ep2 source_2007_mod_ep2
call build.bat "..\.." %_version% %_platform_RID% game\episodic source_2007_mod_episodic
call build.bat "..\.." %_version% %_platform_RID% game\hl2 source_2007_mod_hl2
call build.bat "..\.." %_version% %_platform_RID% game\hl2mp source_2007_mod_hl2mp
call build.bat "..\.." %_version% %_platform_RID% game\template source_2007_mod_template

endlocal
