@echo off
python badfix.py
echo finished python

armips build.asm -strequ GameNum 4 -strequ GameName bm
armips build.asm -strequ GameNum 4 -strequ GameName rs
armips build.asm -strequ GameNum 5 -strequ GameName tb
armips build.asm -strequ GameNum 5 -strequ GameName tc
echo finished armips
sleep 1

textpet run-script compile4.tpl

flips -c -b "rom/exe4bm.gba" "out/ROCK_EXE4_BMB4BJ_00.gba" "out/ROCK_EXE4_BMB4BJ_00.bps"
flips -c -b "rom/exe4rs.gba" "out/ROCK_EXE4_RSB4WJ_01.gba" "out/ROCK_EXE4_RSB4WJ_01.bps"

textpet run-script compile5.tpl

flips -c -b "rom/exe5tb.gba" "out/ROCKEXE5_TOBBRBJ_00.gba" "out/ROCKEXE5_TOBBRBJ_00.bps"
flips -c -b "rom/exe5tc.gba" "out/ROCKEXE5_TOCBRKJ_00.gba" "out/ROCKEXE5_TOCBRKJ_00.bps"

timeout 2