@ECHO OFF
SET StartTime=%time%
FOR /L %%i IN (1,1,254) DO @(
    echo Pinging IP: 10.0.0.%%iy
    ping -n 1 -w 500 10.0.0.%%i | FIND /i "Reply" >> output.txt
)
ECHO Run Time = %StartTime% to %time%