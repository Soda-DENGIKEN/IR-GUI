@echo off
title IR/Line GUI Local Server
echo =======================================================
echo    IR / Line Sensor GUI ローカルサーバーを起動します
echo =======================================================
echo.
echo 1. ブラウザを開き、以下のURLにアクセスしてください：
echo    http://localhost:8000
echo.
echo 2. この黒い画面を閉じると、サーバーが停止します。
echo =======================================================
echo.
python -m http.server 8000
if %errorlevel% neq 0 (
  echo.
  echo [エラー] Pythonがインストールされていないか、PATHが通っていません。
  echo index.html を直接ブラウザにドラッグ＆ドロップして開くか、Pythonをインストールしてください。
  pause
)
