@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  Guice-Tutorial startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and GUICE_TUTORIAL_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Guice-Tutorial.jar;%APP_HOME%\lib\hibernate-core-5.6.15.Final.jar;%APP_HOME%\lib\postgresql-42.1.4.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.2.Final.jar;%APP_HOME%\lib\guice-7.0.0.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.1.2.Final.jar;%APP_HOME%\lib\jboss-logging-3.4.3.Final.jar;%APP_HOME%\lib\javax.persistence-api-2.2.jar;%APP_HOME%\lib\byte-buddy-1.12.18.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jboss-transaction-api_1.2_spec-1.1.1.Final.jar;%APP_HOME%\lib\jandex-2.4.2.Final.jar;%APP_HOME%\lib\classmate-1.5.1.jar;%APP_HOME%\lib\jaxb-runtime-2.3.1.jar;%APP_HOME%\lib\jaxb-api-2.3.1.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\jakarta.inject-api-2.0.1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\guava-31.0.1-jre.jar;%APP_HOME%\lib\txw2-2.3.1.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.7.jar;%APP_HOME%\lib\stax-ex-1.8.jar;%APP_HOME%\lib\FastInfoset-1.2.15.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.7.1.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar


@rem Execute Guice-Tutorial
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GUICE_TUTORIAL_OPTS%  -classpath "%CLASSPATH%" com.training.main.Main %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable GUICE_TUTORIAL_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%GUICE_TUTORIAL_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
