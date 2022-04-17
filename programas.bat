echo OFF

echo. -------------------------------------------------------------
echo. Script creado por Juan Carlos.
echo. Ultima fecha de modificacion 03-04-2022
echo. -------------------------------------------------------------

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo. -------------------------------------------------------------

   echo ERROR: TIENES QUE ABRIR EL ARCHIVO COMO ADMINISTRADOR

   echo. -------------------------------------------------------------

   echo. 

   pause

   echo. ------------------------------------------------------------

   echo. Tienes que dar click derecho y ejecutarme como administrador

   echo. -------------------------------------------------------------


   pause 

   echo. -------------------------------------------------------------

   echo RAPIDO O NO INSTALARE NADA

   echo. -------------------------------------------------------------

   pause

   EXIT /B 1

)

powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

echo Chocolatey is ready to begin installing packages!

pause

@rem ----[Si llegas a editar el codigo, solo escribe el comando que quieras instalar con chocolatey] ----


choco install tightvnc
choco install googlechrome
choco install firefox
choco install 7zip
choco install discord
choco install word
choco install powerpoint
