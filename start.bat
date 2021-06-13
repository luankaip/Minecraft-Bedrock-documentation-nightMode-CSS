@echo off
for /f "tokens=* delims=" %%i in ('dir /d /b *.html') do (
    echo ^<link rel^=^"stylesheet^" type^=^"text/css^" href^=^"night.css^" ^/^>>$$$~temp.html
    type "%%i">>$$$~temp.html
    del "%%i"&&rename $$$~temp.html "%%i"
)
start Index.html