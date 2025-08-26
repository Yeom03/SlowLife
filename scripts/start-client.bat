@echo off
set URL=https://yeom03.github.io/SlowLife/pack.toml

java -version
if errorlevel 1 (
  echo [ERROR] Java가 설치되어 있지 않습니다. Java 21 이상이 필요합니다.
  pause & exit /b 1
)

rem JAR 방식 테스트용 (나중에 EXE로 대체 가능)
java -jar "%~dp0..\SlowLife.jar" https://yeom03.github.io/SlowLife/pack.toml
pause
