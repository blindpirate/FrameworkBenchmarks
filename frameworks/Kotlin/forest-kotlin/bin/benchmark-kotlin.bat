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

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  benchmark-kotlin startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and BENCHMARK_KOTLIN_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

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
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\benchmark-kotlin.jar;%APP_HOME%\lib\pg-client-extension.jar;%APP_HOME%\lib\core.jar;%APP_HOME%\lib\vertx-completable-future.jar;%APP_HOME%\lib\vertx-lang-kotlin-coroutines-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-lang-kotlin-4.0.0-milestone5.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.50.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.50.Final-linux-x86_64.jar;%APP_HOME%\lib\rocker-compiler-1.3.0.jar;%APP_HOME%\lib\rocker-runtime-1.3.0.jar;%APP_HOME%\lib\vertx-pg-client-4.0.0-milestone5.jar;%APP_HOME%\lib\kotlinx-coroutines-jdk8-1.3.7.jar;%APP_HOME%\lib\kotlinx-coroutines-core-1.3.7.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.3.61.jar;%APP_HOME%\lib\vertx-redis-client-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-web-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-web-templ-thymeleaf-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-sql-client-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-web-common-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-auth-common-4.0.0-milestone5.jar;%APP_HOME%\lib\vertx-core-4.0.0-milestone5.jar;%APP_HOME%\lib\commons-math3-3.6.1.jar;%APP_HOME%\lib\guice-4.2.3.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\annotation-magic.jar;%APP_HOME%\lib\reflectasm-1.11.9.jar;%APP_HOME%\lib\commons-lang3-3.10.jar;%APP_HOME%\lib\commons-io-2.7.jar;%APP_HOME%\lib\guava-28.2-jre.jar;%APP_HOME%\lib\commons-beanutils-1.9.4.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\jackson-databind-2.10.3.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.10.3.jar;%APP_HOME%\lib\jackson-core-2.10.3.jar;%APP_HOME%\lib\jackson-annotations-2.10.3.jar;%APP_HOME%\lib\byte-buddy-agent-1.10.11.jar;%APP_HOME%\lib\byte-buddy-1.10.11.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.50.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.49.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.49.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.49.Final.jar;%APP_HOME%\lib\netty-handler-4.1.49.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.49.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.49.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.49.Final.jar;%APP_HOME%\lib\netty-codec-4.1.49.Final.jar;%APP_HOME%\lib\netty-transport-4.1.50.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.50.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.50.Final.jar;%APP_HOME%\lib\netty-common-4.1.50.Final.jar;%APP_HOME%\lib\antlr4-runtime-4.5.3.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.3.61.jar;%APP_HOME%\lib\kotlin-stdlib-1.3.71.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.3.71.jar;%APP_HOME%\lib\vertx-bridge-common-4.0.0-milestone5.jar;%APP_HOME%\lib\thymeleaf-3.0.11.RELEASE.jar;%APP_HOME%\lib\ognl-3.1.12.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-2.10.0.jar;%APP_HOME%\lib\error_prone_annotations-2.3.4.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\snakeyaml-1.24.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\attoparser-2.0.5.RELEASE.jar;%APP_HOME%\lib\unbescape-1.1.6.RELEASE.jar

@rem Execute benchmark-kotlin
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %BENCHMARK_KOTLIN_OPTS%  -classpath "%CLASSPATH%" io.forestframework.benchmark.AppKt %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable BENCHMARK_KOTLIN_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%BENCHMARK_KOTLIN_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
