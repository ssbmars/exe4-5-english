# FF 20 68 74

# bl 0x8002DF0
# bl 0x800281C
# bl 0x800283C


import os
import sys
import re
import struct

#games = ["exe4bm","exe4rs","bn4bm","bn4rs","exe5tb","exe5tc","bn5tb","bn5tc"]	# must be manually defined, values are comma separated
games = ["exe5tb","exe5tc","bn5tb","bn5tc"]

pattern = b"\xFF\x20\x68\x74(.)\xF7(.)(.)(.)\xF7(.)(.)(.)\xF7(.)(.)"
find = re.compile(pattern)

for game in games:
	try:
		with open("rom/{}.gba".format(game), 'rb') as file:
			bbb = file.read()

			str1 = ""
			str2 = ""
			ii=0
			for match in find.finditer(bbb):
				offset = match.start()
				file.seek(offset, 0)
				suc = file.read(8)
				suc = struct.unpack_from('>Q',suc)
				#if hex(suc[0]) != hex(0xff206874):
				#	print(hex(offset))
				#	print(hex(suc[0]))
				label = "openbus{}".format(ii)
				str2 += ".definelabel {}, {}\n".format(label, hex(offset + 0x08000000))
				#str1 += "// {}\n".format(hex(suc[0])) # insert comment 
				str1 += ".org {}\n".format(label)
				str1 += "	mov r0,0\n"
				ii+=1

	except IOError:
		print("Could not open rom.")
		continue

	newfile = open("asm/snek/{}_fix.asm".format(game), 'w')
	newfile.write(str1)
	newfile.close()

	newfile = open("asm/snek/{}_fix_addr.asm".format(game), 'w')
	newfile.write(str2)
	newfile.close()

	sys.stdout.write("\n Done did {}".format(game))
