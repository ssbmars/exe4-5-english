@echo off
armips build.asm -strequ GameNum 5 -strequ GameName tb
armips build.asm -strequ GameNum 5 -strequ GameName tc
echo finished armips

python badfix.py
echo finished python
sleep 1

textpet run-script compile5.tpl

timeout 2