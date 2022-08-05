@echo off
armips build.asm -strequ GameNum 4 -strequ GameName bm
armips build.asm -strequ GameNum 4 -strequ GameName rs
textpet run-script compile.tpl

flips -c -b "rom/exe4bm.gba" "out/ROCK_EXE4_BMB4BJ_00.gba" "out/ROCK_EXE4_BMB4BJ_00.bps"
flips -c -b "rom/exe4rs.gba" "out/ROCK_EXE4_RSB4WJ_01.gba" "out/ROCK_EXE4_RSB4WJ_01.bps"

timeout 3