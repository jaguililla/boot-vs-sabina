@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  hello-sabina startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and HELLO_SABINA_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\hello-sabina.jar;%APP_HOME%\lib\http-1.3.2.jar;%APP_HOME%\lib\jetty-webapp-9.3.0.v20150612.jar;%APP_HOME%\lib\undertow-servlet-1.2.8.Final.jar;%APP_HOME%\lib\jetty-xml-9.3.0.v20150612.jar;%APP_HOME%\lib\jetty-servlet-9.3.0.v20150612.jar;%APP_HOME%\lib\undertow-core-1.2.8.Final.jar;%APP_HOME%\lib\jboss-servlet-api_3.1_spec-1.0.0.Final.jar;%APP_HOME%\lib\jboss-annotations-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\jetty-util-9.3.0.v20150612.jar;%APP_HOME%\lib\jetty-security-9.3.0.v20150612.jar;%APP_HOME%\lib\jboss-logging-3.1.4.GA.jar;%APP_HOME%\lib\xnio-api-3.3.1.Final.jar;%APP_HOME%\lib\xnio-nio-3.3.1.Final.jar;%APP_HOME%\lib\jetty-server-9.3.0.v20150612.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\jetty-http-9.3.0.v20150612.jar;%APP_HOME%\lib\jetty-io-9.3.0.v20150612.jar

@rem Execute hello-sabina
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %HELLO_SABINA_OPTS%  -classpath "%CLASSPATH%" hello.Hello %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable HELLO_SABINA_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%HELLO_SABINA_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
