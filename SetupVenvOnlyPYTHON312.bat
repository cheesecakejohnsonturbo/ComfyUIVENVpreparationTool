@echo off
SETLOCAL
cd..
cd comfyui
    (
    echo @echo off
    echo set PYTHON=venv\Scripts\python.exe
    echo set VENV_DIR=.\venv
    echo %%PYTHON%% main.py --verbose %%*
) > LaunchVENVed.bat
::Make sure that you have installed python 3.12.X first
"%USERPROFILE%\AppData\Local\Programs\Python\Python312\python.exe" -m venv venv
call venv\scripts\activate
:: Define the target file and shortcut location
set targetFile=%~dp0ComfyUI\LaunchVENVed.bat
set shortcutLocation=%~dp0LaunchVENVed.lnk
:: Create a VBScript to generate the shortcut
echo Set WshShell = WScript.CreateObject("WScript.Shell") > "%temp%\CreateShortcut.vbs"
echo Set Shortcut = WshShell.CreateShortcut("%shortcutLocation%") >> "%temp%\CreateShortcut.vbs"
echo Shortcut.TargetPath = "%targetFile%" >> "%temp%\CreateShortcut.vbs"
echo Shortcut.WorkingDirectory = "%~dp0ComfyUI" >> "%temp%\CreateShortcut.vbs"
echo Shortcut.WindowStyle = 1 >> "%temp%\CreateShortcut.vbs"
echo Shortcut.Save >> "%temp%\CreateShortcut.vbs"
:: Run the VBScript
cscript //nologo "%temp%\CreateShortcut.vbs"
:: Clean up the temporary VBScript
del "%temp%\CreateShortcut.vbs"
echo Hope everything went well for you. You should find your conda environment in the VENV folder of your main instance.
ENDLOCAL
pause
conda deactivate
