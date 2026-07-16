@echo off
setlocal

:: 1. Initialize Conda (Assuming Conda is in the user's system PATH)
:: If this fails, users may need to run this script from their Anaconda Prompt
call conda activate RAGenv

:: 2. Get the directory where this batch file is located
set SCRIPT_DIR=%~dp0

:: 3. Run the python script dynamically from that same folder
python "%SCRIPT_DIR%uploadermd.py"

:: Optional: Log the exact time it ran to a text file for debugging
echo Ran at %date% %time% >> "%SCRIPT_DIR%last_run_log.txt"

echo Execution Complete!
pause