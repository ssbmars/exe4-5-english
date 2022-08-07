.gba 

// Thick font for Chip/NCP names
.org exe4charset
.import "rom\bn4bm.gba",0x68E6C0,0x680

// Thick font for library 
.org exe4charset + 0x3880
.import "rom\bn4bm.gba",0x68E6C0,0x680

// Thin font for Chip/NCP names
.org execharthin
.import "rom\bn4bm.gba",0x6C80C8,0x6A0


// Dialog boxes

// capital letters
.org exe4charset + 0x9080
.import "rom\bn4bm.gba",0x695160,0x9C0

// lowercase letters
.org exe4charset + 0xC640
.import "rom\bn4bm.gba",0x695BA0,0x9A0


