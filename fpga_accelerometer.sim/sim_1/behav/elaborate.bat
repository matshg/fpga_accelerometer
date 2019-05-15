@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto c191c17362314ab99b749d4185f77a2d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_data_transition_behav xil_defaultlib.tb_data_transition -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
