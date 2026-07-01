@echo off
setlocal enabledelayedexpansion

for /f "tokens=1,* delims==" %%A in (%~dp0config.txt) do (
    if "%%A"=="UE_ROOT" set "UE_ROOT=%%B"
    if "%%A"=="GAME_ROOT" set "GAME_ROOT=%%B"
)

"%UE_ROOT%\Engine\Binaries\Win64\UnrealPak.exe" "%GAME_ROOT%\pakchunk67-WindowsNoEditor_testing_P.pak" -create="%~dp0Saved\Cooked\WindowsNoEditor\devPrjZ\Content"

endlocal
