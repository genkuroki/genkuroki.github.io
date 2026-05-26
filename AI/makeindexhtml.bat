@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set F=index.html
if exist "%F%" del "%F%"

echo ^<!DOCTYPE html^> > "%F%"
echo ^<html lang="ja"^> >> "%F%"
echo ^<head^> >> "%F%"
echo ^<meta charset="UTF-8"^> >> "%F%"
echo ^<title^>生成AIで作ったノート群^</title^> >> "%F%"
echo ^<link rel=^"stylesheet^" type=^"text/css^" href=^"../default.css^"^> >> "%F%"
echo ^</head^> >> "%F%"
echo ^<body^> >> "%F%"
echo ^<h1^>生成AIで作ったノート群^</h1^> >> "%F%"
echo ^<p^>内容の正しさは保証されません。^</p^> >> "%F%"
echo ^<ul^> >> "%F%"

dir /A:-D /B /O:-N | nkf -w > list.txt
for /F "delims=" %%A in (list.txt) do (
    set N=%%A
    if not "!N!"=="run.bat" if not "!N!"=="list.txt" if not "!N!"=="%F%" (
       echo ^<li^>^<a href=^"!N!^"^>!N!^</a^> >> "%F%"
    )
)

echo ^</ul^> >> "%F%"
echo ^</body^> >> "%F%"
echo ^</html^> >> "%F%"

if exist list.txt del list.txt
pause
