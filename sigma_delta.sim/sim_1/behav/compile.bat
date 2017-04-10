@echo off
set xv_path=C:\\Xilinx_64bit\\Vivado\\2014.4\\bin
echo "xvlog -m64 -prj sigma_delta_tb_vlog.prj"
call %xv_path%/xvlog  -m64 -prj sigma_delta_tb_vlog.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
