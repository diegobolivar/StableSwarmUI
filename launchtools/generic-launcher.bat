@echo off
setlocal enabledelayedexpansion

set CUDA_VISIBLE_DEVICES=%1
set COMMANDLINE_ARGS="%4"

cd /D %2

set PYTHONUNBUFFERED=true

set "argument=%~4"
set "argument=!argument: =^ !"

if "%5" neq "py" (
    call %3 %argument%
) ELSE (
    call %6 %3 %argument%
)
