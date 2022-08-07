load-plugins "plugins\"
game exe4
load-file-index "indexes\exe4bm-v10.tpi"
read-text-archives "out\armips\exe4bm.gba" 

read-text-archives "bm_text.tpl" -p
read-text-archives "bm_text2.tpl" -p
write-text-archives "out\ROCK_EXE4_BMB4BJ_00.gba"
clear

load-file-index "indexes\exe4rs-v11.tpi"
read-text-archives "out\armips\exe4rs.gba" 

read-text-archives "rs_text.tpl" -p
read-text-archives "rs_text2.tpl" -p
write-text-archives "out\ROCK_EXE4_RSB4WJ_01.gba"
clear

