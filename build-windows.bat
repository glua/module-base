@echo off

echo Building Module.
echo Dependencies: GIT, PREMAKE5, VISUAL STUDIO 2015/2013/2012/2010/2008.
echo.

:: Hacky way to ensure we've got a git repository & submodules at our disposal
git init
git submodule update --init --recursive
echo.

:: Fire up a Visual Studio command-line environment and generate our solution
IF DEFINED VS140COMNTOOLS (
	echo Preparing for build with Visual Studio 2015.
	premake5 vs2015
	CALL "%VS140COMNTOOLS%VsMSBuildCmd.bat"
) ELSE IF DEFINED VS120COMNTOOLS (
	echo Preparing for build with Visual Studio 2013.
	premake5 vs2013
	CALL "%VS120COMNTOOLS%VsMSBuildCmd.bat"
) ELSE IF DEFINED VS110COMNTOOLS (
	echo Preparing for build with Visual Studio 2012.
	premake5 vs2012
	CALL "%VS110COMNTOOLS%VsMSBuildCmd.bat"
) ELSE IF DEFINED VS100COMNTOOLS (
	echo Preparing for build with Visual Studio 2010.
	premake5 vs2010
	CALL "%VS100COMNTOOLS%VsMSBuildCmd.bat"
) ELSE IF DEFINED VS90COMNTOOLS (
	echo Preparing for build with Visual Studio 2008.
	premake5 vs2008
	CALL "%VS90COMNTOOLS%VsMSBuildCmd.bat"
) ELSE (
	echo Failed to detect Visual Studio installation.
	timeout 5
	exit /B 1
)

echo.

for /R project %%X in (*.sln) do (
	msbuild %%X
)

:: We're done!
timeout 5

exit /B %ERRORLEVEL%
