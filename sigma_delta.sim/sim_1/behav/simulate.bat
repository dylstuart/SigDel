@echo off
set xv_path=C:\\Xilinx_64bit\\Vivado\\2014.4\\bin
call %xv_path%/xsim sigma_delta_tb_behav -key {Behavioral:sim_1:Functional:sigma_delta_tb} -tclbatch sigma_delta_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
