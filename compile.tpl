load-plugins "plugins\"
game exe4eng
load-file-index "indexes\exe4bm-v10.tpi"
read-text-archives "rom\exe4bm.gba" 

read-text-archives "bm_text.tpl" -p
write-text-archives "out\ROCK_EXE4_BMB4BJ_00.gba"
clear

load-file-index "indexes\exe4rs-v11.tpi"
read-text-archives "rom\exe4rs.gba" 

read-text-archives "rs_text.tpl" -p
write-text-archives "out\ROCK_EXE4_RSB4WJ_01.gba"
clear

