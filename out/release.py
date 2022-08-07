import os
import sys
import re
import shutil

games = ["4","5"]
patchnames = {
	"4": ["ROCK_EXE4_BMB4BJ_00.bps","ROCK_EXE4_RSB4WJ_01.bps"],
	"5": ["ROCKEXE5_TOBBRBJ_00.bps","ROCKEXE5_TOCBRKJ_00.bps"],
}
txt = ""
base = ""
latest = ""
overrides = ""
for game in games:
	try:
		# load _versions file into memory and fetch the latest version number to print out
		with open("tango_patches/{}_versions.toml".format(game), 'r', encoding = 'utf-8') as file:
			txt = file.read()
			latest = re.findall("(?<=')\d\.\d\.\d(?='\])",txt)
			if len(latest) > 0:
				latest = latest[len(latest)-1]
			else:
				latest = "none"
		# get input from user in format X.Y.Z
		sys.stdout.write("New EXE {} version? Last = {} | v[X.Y.Z]： ".format(game,latest))
		version = input()
	except IOError:
		print("_versions: Could not open file.")
	try:
		with open("tango_patches/{}_saveedit.txt".format(game), 'r', encoding = 'utf-8') as file:
			overrides = file.read()
	except IOError:
		print("_saveedit: Could not open file.")
	try:
		with open("tango_patches/{}_versions.toml".format(game), 'a', encoding = 'utf-8') as file:

			# skip if user input is obviously invalid
			if version == "" or len(version) < 5:
				continue
			append = "[versions.'{}']\n".format(version)
			append += "saveedit_overrides = {{ charset = \"{}\" }}\n".format(overrides)
			append += "netplay_compatibility = \"exe{}\"\n".format(game)
			txt += append
			#file.write(append)
	except IOError:
		print("_versions: Could not open file.")

	# load the base of the info.toml file
	try:
		with open("tango_patches/{}_base.toml".format(game), 'r') as file:
			base = file.read()

	except IOError:
		print("_base: Could not open file.")

	txt = base + txt

	os.mkdir("tango_patches/exe{}_english/v{}".format(game,version),0o666)

	newfile = open("tango_patches/exe{}_english/info.toml".format(game,version), 'w', encoding = 'utf-8')
	bb = newfile.write(txt)
	newfile.close()

	for name in patchnames[game]:
		shutil.copy(name,"tango_patches/exe{}_english/v{}/{}".format(game,version,name))