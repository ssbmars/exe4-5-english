load-plugins "plugins\"
game exe4

load-file-index "indexes\exe4bm-v10.tpi"
read-text-archives "rom\exe4bm.gba" 
write-text-archives "textdumps\exe4bm.tpl" --single
clear

load-file-index "indexes\exe4rs-v11.tpi"
read-text-archives "rom\exe4rs.gba" 
write-text-archives "textdumps\exe4rs.tpl" --single
clear

game mmbn4

load-file-index "indexes\mmbn4bm-us.tpi"
read-text-archives "rom\bn4bm.gba" 
write-text-archives "textdumps\bn4bm.tpl" --single
clear

load-file-index "indexes\mmbn4rs-us.tpi"
read-text-archives "rom\bn4rs.gba" 
write-text-archives "textdumps\bn4rs.tpl" --single
clear