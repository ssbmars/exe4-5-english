.gba 

// Thick font for Chip/NCP names
.org exe5charset
.import "rom\bn5tb.gba",0x6CC3F0,0x680

// Duplicate thick font is not required

// Thin font for Chip/NCP names
// 6D0E20
.org exe5charset - 0x115A4
.import "rom\bn5tb.gba",0x6BAE4C,0x6A0

// Dialog boxes

// capital letters
.org exe5charset - 0x8530
.import "rom\bn5tb.gba",0x6C18E0,0x9C0

// lowercase letters
.org exe5charset - 0x4F70
.import "rom\bn5tb.gba",0x6C2320,0x9A0
