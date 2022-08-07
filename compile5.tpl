load-plugins "plugins\"
game exe5
load-file-index "indexes\exe5tb.tpi"
read-text-archives "out\armips\exe5tb.gba"

read-text-archives "tb_text.tpl" -p
read-text-archives "tb_text2.tpl" -p
write-text-archives "out\ROCKEXE5_TOBBRBJ_00.gba"
clear

load-file-index "indexes\exe5tc.tpi"
read-text-archives "out\armips\exe5tc.gba"

read-text-archives "tc_text.tpl" -p
read-text-archives "tc_text2.tpl" -p
write-text-archives "out\ROCKEXE5_TOCBRKJ_00.gba"
clear

