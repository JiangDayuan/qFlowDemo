@echo off
net use \\10.202.0.9\shcc /user:shcc Sh@12345

for /f "tokens=2 delims==R" %%a in ('findstr /n "SN_Number" C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework.para') do (set SN=%%a)
if "%SN:~0,1%"==" " set "SN=%SN:~1%"

for /f "tokens=2 delims=R" %%b in ('findstr /n "SN_Number" C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework.para') do (set RE=%%b)

set /a RE=%RE%+1

for /f "skip=1 delims=" %%c in (C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework.para) do (echo %%c>>C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework_data.txt)

echo SN_Number = %SN%R%RE%>>C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework_data.txt
echo CC=SHCC>>C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework_data.txt
echo Demo_Info = -1 >>C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework_data.txt

for /f %%d in (C:\CC_Process_System\Demo_Process\Program_files\AutoImporter.para) do (set AI=%%d)

copy C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework_data.txt %AI%\Process\%SN%R%RE%_rework_data.csv

del C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework_data.txt
del C:\CC_Process_System\Demo_Process\Program_files\Rework_Creation\rework.para
