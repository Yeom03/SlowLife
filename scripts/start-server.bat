@echo off
setlocal
set URL=https://yeom03.github.io/SlowLife/pack.toml

rem 1) 서버 전용 파일만 최신화 (client side 모드는 자동 제외)
java -jar "%~dp0..\SlowLife.jar" -g -s server https://yeom03.github.io/SlowLife/pack.toml
if errorlevel 1 (
  echo [ERROR] packwiz 업데이트 실패. 로그 확인 후 재시도하세요.
  pause & exit /b 1
)

rem 2) 네오포지 서버 기동 (파일명은 설치된 서버 jar에 맞게 수정)
java -Xms6G -Xmx10G -Dfile.encoding=UTF-8 -jar neoforge-1.21.6-21.6.20-beta.jar nogui
pause
