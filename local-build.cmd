REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOAD_DIR=%USERPROFILE%\Downloads
set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;%DOWNLOAD_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;%DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;%PATH%
cmake.exe -G"MinGW Makefiles" -B./build
cd build

mingw32-make.exe
pause
REM GOTO rebuild_and_startapp
