@echo off
set xv_path=C:\\Xilinx_64bit\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 81bff3d55dbd4933a7fa64b86f281bfb -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot sigma_delta_tb_behav xil_defaultlib.sigma_delta_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
