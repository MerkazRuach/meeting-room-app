@echo off
SET PATH=%PATH%;C:\Program Files\nodejs
echo Starting Meeting Room Booking App...
echo.
echo Backend: http://localhost:3001
echo Frontend: http://localhost:5173
echo.
start "Backend Server" cmd /k "node server/index.js"
timeout /t 2 /nobreak >nul
start "Frontend (Vite)" cmd /k "node node_modules/vite/bin/vite.js"
echo Both servers started. Open http://localhost:5173 in your browser.
