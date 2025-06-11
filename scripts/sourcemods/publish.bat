setlocal enableextensions enabledelayedexpansion
prompt $
@echo off
cls

rem https://superuser.com/questions/1566985/read-value-from-registry-via-batch-file-without-showing-the-source

for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\SOFTWARE\Valve\Steam" /v "SourceModInstallPath"') do set "_sourcemodinstallpath=%%~b"

set _root=..\..

call ..\base\copy_dir.bat "%_root%\game\ep2" "%_sourcemodinstallpath%\source_2007_mod_ep2"
call ..\base\copy_dir.bat "%_root%\game\episodic" "%_sourcemodinstallpath%\source_2007_mod_episodic"
call ..\base\copy_dir.bat "%_root%\game\hl2" "%_sourcemodinstallpath%\source_2007_mod_hl2"
call ..\base\copy_dir.bat "%_root%\game\hl2mp" "%_sourcemodinstallpath%\source_2007_mod_hl2mp"
call ..\base\copy_dir.bat "%_root%\game\lostcoast" "%_sourcemodinstallpath%\source_2007_mod_lostcoast"
call ..\base\copy_dir.bat "%_root%\game\template" "%_sourcemodinstallpath%\source_2007_mod_template"

endlocal
