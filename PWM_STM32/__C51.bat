@echo off
::This file was created automatically by CrossIDE to compile with C51.
C:
cd "\Users\Brady\OneDrive\Documents\GitHub\ELEC291-Project_2\PWM_STM32\"
"C:\Apps\CrossIDE\Call51\Bin\c51.exe" --use-stdout  "C:\Users\Brady\OneDrive\Documents\GitHub\ELEC291-Project_2\PWM_STM32\main.c"
if not exist hex2mif.exe goto done
if exist main.ihx hex2mif main.ihx
if exist main.hex hex2mif main.hex
:done
echo done
echo Crosside_Action Set_Hex_File C:\Users\Brady\OneDrive\Documents\GitHub\ELEC291-Project_2\PWM_STM32\main.hex
