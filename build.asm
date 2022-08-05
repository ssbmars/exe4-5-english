// GameNum & GameName gets defined as a command line argument when building

ROMfldr equ "rom\\"
OUTfldr equ "out\\"
ASMfldr equ "asm\\"

INPUT_ROM	equ ROMfldr + "exe" + GameNum + GameName + ".gba"
OUTPUT_ROM	equ OUTfldr + "armips\\exe" + GameNum + GameName + ".gba"
ADDR_LIST	equ ASMfldr + GameNum + GameName + "_addr.asm"

.open INPUT_ROM, OUTPUT_ROM, 0x8000000
.include ADDR_LIST


.include ASMfldr+ GameNum + ".asm"

.close