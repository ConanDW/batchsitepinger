@echo off
:loop
call Waitlink camerondaycustomwebsites.net
net use o: \\camerondaycustomwebsites.net\
goto loop