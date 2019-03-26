rem ========== PreStart ==========
@echo off
chcp 65001

rem Set version info
set /p V=<version

rem ========== Start ==========

cls
echo ###############################################################################
echo.
echo   NVidiaProfileInspectorDmW Version %V%
echo.
echo   AUTHOR: DeadManWalking  (DeadManWalkingTO-GitHub)
echo                           (https://github.com/DeadManWalkingTO)
echo.
echo ###############################################################################
echo.
echo 1. Auto Configure NVidiaProfileInspectorDmW
echo 2. Auto Build NVidiaProfileInspectorDmW
echo 3. Auto Copy NVidiaProfileInspectorDmW
echo 4. Auto Copy Portable (Original format portableapps.com)
echo.
pause
echo.
echo.

rem ========== Initializing ==========
setlocal
set DmW_Project_Name_V=NVidiaProfileInspectorDmW
set DmW_Project_VS=2017

rem Call Microsoft Visual C++ Build Tools
echo ==================================================
echo Call Microsoft Visual C++ Build Tools
echo --------------------------------------------------
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\Common7\Tools\VsDevCmd.bat"
if ERRORLEVEL 0 (goto :BT_OK) ELSE goto :BT_2015
:BT_2015
call "C:\Program Files (x86)\Microsoft Visual C++ Build Tools\vcbuildtools_msbuild.bat"
if not %ERRORLEVEL%==0 echo. & echo Fail & pause & goto :eof
set DmW_Project_VS=2015
:BT_OK
echo.
echo Done
echo ==================================================
echo.
timeout 1 > nul

rem Build Project
echo ==================================================
echo Build %DmW_Project_Name_V%
echo --------------------------------------------------
msbuild nvidiaProfileInspectorDmW.sln /verbosity:minimal /t:Rebuild /p:Configuration=Release
if %ERRORLEVEL%==0 (echo. & echo Done) else (echo. & echo Fail & pause & goto :eof) 
echo ==================================================
echo.
timeout 1 > nul

rem Copy Portable Folder
echo ==================================================
echo Copy Portable Folder
echo --------------------------------------------------
xcopy "%~dp0\NVidiaProfileInspectorDmWPortable" ..\NVidiaProfileInspectorDmWPortable /E /Y
if %ERRORLEVEL%==0 (echo. & echo Done) else (echo. & echo Fail & pause & goto :eof) 
echo ==================================================
echo.
timeout 1 > nul

rem Copy in nvidiaProfileInspectorDmW
echo ==================================================
echo Copy in nvidiaProfileInspectorDmW
echo --------------------------------------------------
xcopy "%~dp0\nspector\bin\Release" ..\NVidiaProfileInspectorDmW-%V%\ /E /Y
if %ERRORLEVEL%==0 (echo. & echo Done) else (echo. & echo Fail & pause & goto :eof) 
echo ==================================================
echo.
timeout 1 > nul

rem Copy in Portable Folde
echo ==================================================
echo Copy in Portable Folder
echo --------------------------------------------------
xcopy "%~dp0\nspector\bin\Release" ..\NVidiaProfileInspectorDmWPortable\App\NVidiaProfileInspectorDmW\ /E /Y
if %ERRORLEVEL%==0 (echo. & echo Done) else (echo. & echo Fail & pause & goto :eof) 
echo ==================================================
echo.
timeout 1 > nul

rem Back to Directory
echo ==================================================
echo Change Directory to Home
echo --------------------------------------------------
cd "%~dp0\"
if %ERRORLEVEL%==0 (echo. & echo Done) else (echo. & echo Fail & pause & goto :eof) 
echo ==================================================
echo.
timeout 1 > nul

rem Project was completed
echo ==================================================
echo %DmW_Project_Name_V% was completed successfully.
echo ==================================================

rem ========== End ==========

endlocal
pause
echo.

rem ========== EoF ==========
