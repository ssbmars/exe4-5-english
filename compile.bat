@echo off
armips build.asm -strequ GameNum 4 -strequ GameName bm
armips build.asm -strequ GameNum 4 -strequ GameName rs
textpet run-script compile.tpl
timeout 3