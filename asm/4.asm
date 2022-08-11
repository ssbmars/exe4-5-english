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

// maybe this will fix weird open bus read issues
// i hate bn4

.org openbus0
	mov r0,0
.org openbus1
	mov r0,0
.org openbus2
	mov r0,0
.org openbus3
	mov r0,0
.org openbus4
	mov r0,0
.org openbus5
	mov r0,0
.org openbus6
	mov r0,0
.org openbus7
	mov r0,0
.org openbus8
	mov r0,0
.org openbus9
	mov r0,0
.org openbus10
	mov r0,0
.org openbus11
	mov r0,0

