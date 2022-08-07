import os
import re

tt = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
rr1 = ['ア','イ','ウ','エ','オ','カ','キ','ク','ケ','コ','サ','シ','ス','セ','ソ','タ','チ','ツ','テ','ト','ナ','ニ','ヌ','ネ','ノ','ハ']
rr2 = ['ウ','ア','イ','オ','エ','ケ','コ','カ','ク','キ','セ','サ','ソ','シ','ス','テ','ト','ツ','タ','チ','ネ','ノ','ヌ','ナ','ニ','ヒ']


item1	= ["archive(?=\s)",			"11111", "11111(?=\s)",			"archive"]
item2	= ["size(?=\s)",			"22222", "22222(?=\s)",			"size"]
item3	= ["script(?=\s)",			"33333", "33333(?=\s)",			"script"]
item4	= ["(?<=\s)end(?=\n)",		"44444", "(?<=\s)44444(?=\n)",	"end"]

item5	= ["(?<=\s)mmbn4s(?=\s)",	"55555", "(?<=\s)55555(?=\s)",	"mmbn4s"]
item6	= ["(?<=\s)mmbn5s(?=\s)",	"66666", "(?<=\s)66666(?=\s)",	"mmbn5s"]

bn4list = [item1,item2,item3,item4,item5]
bn5list = [item1,item2,item3,item4,item6]


game1 = ["bm",bn4list,rr1]
game2 = ["rs",bn4list,rr1]
game3 = ["tb",bn5list,rr2]
game4 = ["tc",bn5list,rr2]
games = [game1,game2,game3,game4]

for game in games:
	try:
		with open("snek/{}.txt".format(game[0]), 'r') as file:
			txt = file.read()
	
			## find tpl syntax words that we don't want to modify, replace with strings of numbers
			## that will be ignored during the real find/replace step
			for items in game[1]:
				txt = re.sub(items[0],items[1],txt)
	
			## replace all lowercase letters with corresponding kana
			ii = 0
			for items in tt:
				txt = re.sub(items,game[2][ii],txt)
				ii += 1
	
			## restore tpl syntax words
			for items in game[1]:
				txt = re.sub(items[2],items[3],txt)
	
			newfile = open("{}_text2.tpl".format(game[0]),'w', encoding = 'utf-8')
			bb = newfile.write(txt)
			newfile.close()
	
	except IOError:
		print("Step1: Could not open file.")