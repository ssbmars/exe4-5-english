@archive 6DE644
@size 255
script 0 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Want to save
	your progress?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 1 mmbn4 {
	checkFlag
		flag = 4454
		jumpIfTrue = continue
		jumpIfFalse = 2
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	Data exists.
	Overwrite?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 2,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 2 mmbn4 {
	callSave
		jumpIfSuccessful = 3
		jumpIfFailed = continue
		jumpUnused = 4
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	Looks like
	there was a 
	saving error.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let me try
	again.
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 2,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	OK!
	Save complete!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	mugshotHide
	clearMsg
	"""
	Data rewritten
	I couldn't
	save game!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let me try
	again.
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 0,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	mugshotHide
	clearMsg
	"""
	Data rewritten
	. I couldn't
	save game
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let me try
	again.
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4s {
	"Playtime"
	end
}
script 7 mmbn4s {
	"Library"
	end
}
script 8 mmbn4s {
	"BtlChips"
	end
}
script 9 mmbn4s {
	"Credit"
	end
}
script 10 mmbn4s {
	"  "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	end
}
script 11 mmbn4s {
	"S/M/G"
	end
}
script 12 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan.
	Watch rest?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 16 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We did it,Lan!
	We won a Free
	Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was some
	match! Let's
	do it again!
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was
	close. We'll
	win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"What do we do?\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"Edit folder\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Use folder"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printFolderName
		buffer = 1
		entry = 0
	"""
	 has been
	equipped!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You haven't
	put 30 chips
	in yet! Still
	"""
	keyWait
		any = false
	clearMsg
	"want to stop?\n"
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 4 of the
	same chip!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 1 MegaChip
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 1 GigaChip
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	" MegaChips"
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	" GigaChips"
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	There isn't
	enough Regular
	Memory!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"What do we do?\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"Use folder\n"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't use
	SpareFolder!
	It's locked!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't handle
	this folder
	yet.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Edit a folder
	and re-equip!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	What should
	we do?
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"Edit folder"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
}
script 40 mmbn4s {
	"""
	50 HP
	recovered!
	"""
	end
}
script 41 mmbn4s {
	"""
	MAX HP
	recovered!
	"""
	end
}
script 42 mmbn4s {
	"""
	Won't meet
	weak virus
	for a while
	"""
	end
}
script 43 mmbn4s {
	"""
	Remove trap
	on mystery
	data
	"""
	end
}
script 44 mmbn4s {
	"""
	More likely
	to meet
	last enemy
	"""
	end
}
script 45 mmbn4s {
	"""
	Analyzing
	encrypted
	data
	"""
	end
}
script 46 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Let's not
	use that
	just yet.
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You want to
	use "
	"""
	printItem
		buffer = 1
		item = 0
	"\"?\n"
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 48 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	MegaMan HP
	has re-
	covered 50!
	"""
	keyWait
		any = false
	end
}
script 49 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	MegaMan HP
	has fully
	recovered!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	You used
	"
	"""
	printItem
		buffer = 1
		item = 0
	"\""
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You're al-
	ready using
	"
	"""
	printItem
		buffer = 1
		item = 0
	"\"!"
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	There isn't
	any locked
	data!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	No viruses
	encountered
	here yet!
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 112
		jumpIfTrue = 80
		jumpIfFalse = continue
	checkFlag
		flag = 113
		jumpIfTrue = 77
		jumpIfFalse = continue
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"My status:"
	waitHold
}
script 61 mmbn4s {
	"Attack LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 62 mmbn4s {
	"Speed  LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 63 mmbn4s {
	"Charge LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 64 mmbn4s {
	ereaderDesc
		data = 2
	end
}
script 65 mmbn4s {
	ereaderDesc
		data = 3
	end
}
script 66 mmbn4s {
	ereaderDesc
		data = 4
	end
}
script 67 mmbn4s {
	ereaderDesc
		data = 5
	end
}
script 68 mmbn4s {
	ereaderDesc
		data = 6
	end
}
script 69 mmbn4s {
	ereaderDesc
		data = 7
	end
}
script 70 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"Reception OK!"
	keyWait
		any = false
	waitHold
}
script 71 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Rare chip data
	received,but I
	already have
	"""
	keyWait
		any = false
	clearMsg
	"""
	Unable to
	receive data.
	"""
	keyWait
		any = false
	waitHold
}
script 73 mmbn4s {
	"Reg.Mem "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"[MB]"
	end
}
script 74 mmbn4s {
	"MegaChip "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 75 mmbn4s {
	"GigaChip "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 76 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Equipped
	folder can
	not be used.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Since you do
	n't have Spare
	Folder,take it
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundPlay
		track = 115
	"""
	Lan got:
	"
	"""
	printFolderName
		buffer = 0
		entry = 3
	"\"\n"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Switching
	folders.
	"""
	keyWait
		any = false
	waitHold
}
script 77 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"My status:\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"records"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 78 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"My status:\n"
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"NaviCust\n"
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"records"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 79 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	"Rare chip got!\n"
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"Receive data\n"
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Quit"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 80 mmbn4 {
	checkFlag
		flag = 113
		jumpIfTrue = 78
		jumpIfFalse = continue
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"My status:\n"
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"NaviCust\n"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 81 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	"Card received\n"
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"Modify\n"
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Quit"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 82 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Error in data
	transmission
	"""
	keyWait
		any = false
	waitHold
}
script 83 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transmitting
	data⋯
	"""
	keyWait
		any = false
	waitHold
}
script 84 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Error!
	Error in data
	transmission
	"""
	keyWait
		any = false
	waitHold
}
script 85 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"Data received!"
	keyWait
		any = false
	waitHold
}
script 86 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	"Wait for data"
	waitHold
}
script 87 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"Receiving data"
	waitHold
}
script 88 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't use
	equip folder.
	Switch Spare!
	"""
	keyWait
		any = false
	waitHold
}
script 89 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"Transmit OK!"
	keyWait
		any = false
	waitHold
}
script 90 mmbn4 {
	positionText
		left = 102
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You've got new
	mail!
	"""
	waitHold
}
script 91 mmbn4 {
	positionText
		left = 102
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Which mail do
	you want to
	read,Lan?
	"""
	waitHold
}
script 92 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You haven't
	gotten
	anything,Lan!
	"""
	waitHold
}
script 93 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 94
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	This card is
	for Blue Moon.
	Cannot receive
	"""
	keyWait
		any = false
	waitHold
}
script 94 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	This card is
	for Red Sun.
	Cannot receive
	"""
	keyWait
		any = false
	waitHold
}
script 95 mmbn4 {
	positionText
		left = 102
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I'm booting up
	the training
	program!
	"""
	keyWait
		any = false
	waitHold
}
script 100 mmbn4 {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	"""
	Quit and
	return to the
	menu screen?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 1
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 101 mmbn4s {
	"Booting⋯"
	end
}
script 102 mmbn4s {
	"OK!"
	end
}
script 103 mmbn4 {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = Lan
	"""
	OK!
	Boot complete!
	"""
	keyWait
		any = false
	clearMsg
	"""
	How do you
	feel,
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4480
		jumpIfTrue = 105
		jumpIfFalse = 104
}
script 104 mmbn4 {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = MegaMan
	"""
	All systems
	normal! 
	I knew it,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Quit the
	NaviCust
	program?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 105 mmbn4 {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = MegaMan
	"""
	Feels a little
	odd,but
	I'm all right!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Quit the
	NaviCust
	program?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 106 mmbn4 {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	"Remove all \nprograms?\n"
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 1
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 109 mmbn4s {
	"OFF"
	end
}
script 110 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	"Custom set!"
	waitHold
}
script 111 mmbn4s {
	"ON"
	end
}
script 112 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	"Custom reset!"
	waitHold
}
script 113 mmbn4s {
	"0A"
	end
}
script 114 mmbn4s {
	"0B"
	end
}
script 115 mmbn4s {
	"0C"
	end
}
script 116 mmbn4s {
	"0D"
	end
}
script 117 mmbn4s {
	"0E"
	end
}
script 118 mmbn4s {
	"0F"
	end
}
script 119 mmbn4s {
	"Custom"
	end
}
script 120 mmbn4s {
	"Standard Chip"
	end
}
script 121 mmbn4s {
	"MegaChip"
	end
}
script 122 mmbn4s {
	"GigaChip"
	end
}
script 123 mmbn4s {
	"P.A. Memo"
	end
}
script 124 mmbn4s {
	"   ??"
	end
}
script 125 mmbn4s {
	"Secret"
	end
}
script 126 mmbn4 {
	"""
	Did it. Showed
	'em about
	RS Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 127 mmbn4 {
	"""
	Did it. Showed
	'em about
	RS Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 128 mmbn4 {
	"""
	Too bad!We owe
	RS Tournament
	team apology
	"""
	keyWait
		any = false
	waitHold
}
script 129 mmbn4 {
	"""
	Too bad!We owe
	RS Tournament
	team apology
	"""
	keyWait
		any = false
	waitHold
}
script 130 mmbn4 {
	"""
	Did it. Showed
	'em about
	BM Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 131 mmbn4 {
	"""
	Did it. Showed
	'em about
	BM Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 132 mmbn4 {
	"""
	Too bad!We owe
	BM Tournament
	team apology
	"""
	keyWait
		any = false
	waitHold
}
script 133 mmbn4 {
	"""
	Too bad!We owe
	BM Tournament
	team apology
	"""
	keyWait
		any = false
	waitHold
}
script 140 mmbn4s {
	"Pwr ChargeS"
	end
}
script 141 mmbn4s {
	"Pwr HeatLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 142 mmbn4s {
	"Pwr AquaLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 143 mmbn4s {
	"Pwr ElecLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 144 mmbn4s {
	"Pwr WoodLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 145 mmbn4s {
	"Pwr   Invis"
	end
}
script 146 mmbn4s {
	"Pwr    Cube"
	end
}
script 147 mmbn4s {
	"Pwr  WtrGun"
	end
}
script 148 mmbn4s {
	"Pwr  Flower"
	end
}
script 149 mmbn4s {
	"Pwr  Custom"
	end
}
script 152 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"BM Record: "
	printRecordName
		buffer = 4
		name = 0
	"\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	"\n"
	positionOptionFromCenter
		width = 12
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Back  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"Delete"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 153 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	BM Record:
	Lan:
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	keyWait
		any = false
	waitHold
}
script 154 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	"""
	Did it,showed
	'em about
	RS Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 155 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	"""
	Too bad!We owe
	RS Tournament
	team apology
	"""
	keyWait
		any = false
	waitHold
}
script 156 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	"""
	Did it. Showed
	'em about
	BM Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 157 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	"""
	Too bad!We owe
	BM Tournament
	team apology
	"""
	keyWait
		any = false
	waitHold
}
script 158 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	We'll try
	harder
	next time⋯!
	"""
	keyWait
		any = false
	waitHold
}
script 159 mmbn4s {
	"      -"
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	" W"
	end
}
script 160 mmbn4s {
	"      +"
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	" W"
	end
}
script 161 mmbn4s {
	"VS BM Battles:"
	end
}
script 162 mmbn4s {
	"VS RS Battles:"
	end
}
script 163 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	"""
	Good work,Lan
	Nice operating
	A perfect win!
	"""
	keyWait
		any = false
	waitHold
}
script 164 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	"""
	That was a
	total loss for
	us,Lan⋯
	"""
	keyWait
		any = false
	waitHold
}
script 165 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	We'll try
	harder
	next time⋯!
	"""
	keyWait
		any = false
	waitHold
}
script 166 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Run"
	keyWait
		any = false
	waitHold
}
script 167 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	error. 
	Stop battle
	"""
	keyWait
		any = false
	waitHold
}
script 168 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can't both
	trade nothing!
	"""
	keyWait
		any = false
	waitHold
}
script 169 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Choose the
	same mode as
	your friend!
	"""
	keyWait
		any = false
	waitHold
}
script 170 mmbn4s {
	":-"
	end
}
script 171 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 152
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"RS Record: "
	printRecordName
		buffer = 4
		name = 0
	"\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	"\n"
	positionOptionFromCenter
		width = 12
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Back  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"Delete"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 172 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 153
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	RS Record:
	Lan:
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	":"
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	keyWait
		any = false
	waitHold
}
script 173 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"Trade complete"
	keyWait
		any = false
	clearMsg
	"""
	But was that
	trade really
	worth it⋯?
	"""
	keyWait
		any = false
	waitHold
}
script 174 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	mugshotAnimation
		animation = 0
	"""
	Communication
	error! Trade
	cancelled!
	"""
	keyWait
		any = false
	waitHold
}
script 175 mmbn4 {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"Trade complete"
	keyWait
		any = false
	waitHold
}
script 176 mmbn4s {
	"Selecting"
	end
}
script 177 mmbn4s {
	"None"
	end
}
script 178 mmbn4s {
	"VS Results"
	end
}
script 179 mmbn4s {
	"   "
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	"B"
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	"W"
	end
}
script 180 mmbn4s {
	"Menu"
	end
}
script 181 mmbn4s {
	"NetBattle"
	end
}
script 182 mmbn4s {
	"Compare"
	end
}
script 183 mmbn4s {
	"Trade"
	end
}
script 184 mmbn4s {
	"WaitingRoom"
	end
}
script 185 mmbn4s {
	"SinglBattle"
	end
}
script 186 mmbn4s {
	"TriplBattle"
	end
}
script 187 mmbn4s {
	"SelctBattle"
	end
}
script 188 mmbn4s {
	"Practice"
	end
}
script 189 mmbn4s {
	"Real Thing"
	end
}
script 190 mmbn4s {
	"CompLibrary"
	end
}
script 191 mmbn4s {
	"ComprRecord"
	end
}
script 192 mmbn4s {
	"BattleChips"
	end
}
script 193 mmbn4s {
	"Program"
	end
}
script 194 mmbn4s {
	"Reception"
	end
}
script 195 mmbn4s {
	"Visit"
	end
}
script 196 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Delete which
	entry?
	"""
	waitHold
}
script 197 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Navis in room.\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"Accept entry\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Delete entry"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 198 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Delete "
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	's
	entry?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 199 mmbn4s {
	"-NO ENTRY-"
	end
}
script 200 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Battle with a
	friend!
	"""
	waitHold
}
script 201 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Comp data and
	exchange info
	with friend!
	"""
	waitHold
}
script 202 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange chips
	and programs
	with a friend!
	"""
	waitHold
}
script 203 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Entering the
	WaitingRoom!
	"""
	waitHold
}
script 204 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This is a 1-
	round battle.
	Go for it!
	"""
	waitHold
}
script 205 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This is a
	3-round win
	the battle!
	"""
	waitHold
}
script 206 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	3-rnd battle
	of different
	tournaments!
	"""
	waitHold
}
script 207 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Trade data
	library with
	a friend!
	"""
	waitHold
}
script 208 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange top
	record with
	a friend!
	"""
	waitHold
}
script 209 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	BattleChips
	with a friend!
	"""
	waitHold
}
script 210 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	programs
	with a friend!
	"""
	waitHold
}
script 211 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Accept battle
	with a Navi
	sent by friend
	"""
	waitHold
}
script 212 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send a trusted
	Navi to your
	friend's match
	"""
	waitHold
}
script 213 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Practice Mode!"
	keyWait
		any = false
	clearMsg
	"""
	The loser
	doesn't lose
	a chip.
	"""
	waitHold
}
script 214 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Real Battle
	Mode!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The loser
	gives up
	a chip
	"""
	waitHold
}
script 215 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Your friend
	isn't ready.
	Please wait.
	"""
	waitHold
}
script 216 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"""
	Comparing
	libraries!
	"""
	wait
		frames = 60
	"・"
	wait
		frames = 60
	"・"
	wait
		frames = 60
	"・"
	controlUnlock
	waitHold
}
script 217 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	error.Please
	try again.
	"""
	waitHold
}
script 218 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	There is new
	data in the
	data library!
	"""
	waitHold
}
script 219 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	There isn't
	any new data
	in the library
	"""
	waitHold
}
script 220 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You've got to
	pick the same
	mode as friend
	"""
	waitHold
}
script 221 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Your friend is
	in a different
	tournament.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can only
	compare in the
	same one.
	"""
	waitHold
}
script 222 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"Compare record"
	wait
		frames = 60
	"・"
	wait
		frames = 60
	"・"
	wait
		frames = 60
	"・"
	controlUnlock
	waitHold
}
script 223 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Records
	updated!
	"""
	waitHold
}
script 224 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Records not
	updated⋯
	"""
	waitHold
}
script 225 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I'm booting up
	the chip
	trade screen
	"""
	waitHold
}
script 226 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I'm booting up
	the program
	trade screen
	"""
	waitHold
}
script 227 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You don't have
	non-Gigachip
	chips in pack
	"""
	waitHold
}
script 228 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	There aren't
	Navis to go
	along with me
	"""
	keyWait
		any = false
	waitHold
}
script 229 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Go to waiting
	screen
	"""
	waitHold
}
script 230 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Go to visit
	screen
	"""
	waitHold
}
script 231 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Deleted entry:\n"
	printEnemy
		buffer = 1
		enemy = 0
	printShortString
		bufferOffset = 1
	keyWait
		any = false
	waitHold
}
script 232 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The Navi seems
	to be in a
	tournament.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can't delete
	the entry
	"""
	keyWait
		any = false
	waitHold
}
script 233 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Receiving data"
	waitHold
}
script 234 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Accept entry\n"
	printEnemy
		buffer = 2
		enemy = 0
	printBufferedShortString
		bufferOffset = 0
	"?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 235 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Huh? We didn't
	receive the
	data⋯!
	"""
	keyWait
		any = false
	waitHold
}
script 236 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send which
	Navi?
	"""
	waitHold
}
script 237 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Send "
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 0
		name = 0
	"?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 238 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	stopped.
	"""
	keyWait
		any = false
	clearMsg
	"Try again?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 239 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Sending entry
	data
	"""
	waitHold
}
script 240 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	OK!
	"""
	keyWait
		any = false
	waitHold
}
script 241 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Entry
	completed!
	"""
	keyWait
		any = false
	waitHold
}
script 242 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Only two Navis
	of the same
	type may entry
	"""
	keyWait
		any = false
	waitHold
}
script 243 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	WaitingRoom
	is full now.
	Overwrite?
	"""
	waitHold
}
script 244 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Same Navi."
	keyWait
		any = false
	waitHold
}
script 245 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"Overwrite\n"
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"No"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 246 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Friend chips
	aren't enough.
	Stop battle
	"""
	waitHold
}
script 247 mmbn4 {
	"""
	We did it,
	barely⋯
	That was tough
	"""
	keyWait
		any = false
	waitHold
}
script 248 mmbn4 {
	"""
	We did it,Lan
	Nice operating
	"""
	keyWait
		any = false
	waitHold
}
script 249 mmbn4 {
	"""
	That was close
	We'll win next
	"""
	keyWait
		any = false
	waitHold
}
script 250 mmbn4 {
	"""
	I'm sorry,Lan.
	It's my fault.
	"""
	keyWait
		any = false
	waitHold
}
script 251 mmbn4 {
	positionText
		left = 69
		top = 109
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	We can't
	battle in same
	tournament
	"""
	waitHold
}

@archive 745E98
@size 256

script 0 mmbn4s {
	end
}
script 1 mmbn4s {
	"Cannon"
	end
}
script 2 mmbn4s {
	"HiCannon"
	end
}
script 3 mmbn4s {
	"M-Cannon"
	end
}
script 4 mmbn4s {
	"AirShot"
	end
}
script 5 mmbn4s {
	"Blizzard"
	end
}
script 6 mmbn4s {
	"HeatBrth"
	end
}
script 7 mmbn4s {
	"Silence"
	end
}
script 8 mmbn4s {
	"Tornado"
	end
}
script 9 mmbn4s {
	"WideSht1"
	end
}
script 10 mmbn4s {
	"WideSht2"
	end
}
script 11 mmbn4s {
	"WideSht3"
	end
}
script 12 mmbn4s {
	"FlmLine1"
	end
}
script 13 mmbn4s {
	"FlmLine2"
	end
}
script 14 mmbn4s {
	"FlmLine3"
	end
}
script 15 mmbn4s {
	"Vulcan1"
	end
}
script 16 mmbn4s {
	"Vulcan2"
	end
}
script 17 mmbn4s {
	"Vulcan3"
	end
}
script 18 mmbn4s {
	"Spreader"
	end
}
script 19 mmbn4s {
	"HeatShot"
	end
}
script 20 mmbn4s {
	"Heat-V"
	end
}
script 21 mmbn4s {
	"HeatSide"
	end
}
script 22 mmbn4s {
	"Bubbler"
	end
}
script 23 mmbn4s {
	"Bub-V"
	end
}
script 24 mmbn4s {
	"BublSide"
	end
}
script 25 mmbn4s {
	"ElemFlar"
	end
}
script 26 mmbn4s {
	"ElemIce"
	end
}
script 27 mmbn4s {
	"Static"
	end
}
script 28 mmbn4s {
	"LifeSync"
	end
}
script 29 mmbn4s {
	"MiniBomb"
	end
}
script 30 mmbn4s {
	"EnergBom"
	end
}
script 31 mmbn4s {
	"MegEnBom"
	end
}
script 32 mmbn4s {
	"GunSol1"
	end
}
script 33 mmbn4s {
	"GunSol2"
	end
}
script 34 mmbn4s {
	"GunSol3"
	end
}
script 35 mmbn4s {
	"MagBolt1"
	end
}
script 36 mmbn4s {
	"MagBolt2"
	end
}
script 37 mmbn4s {
	"MagBolt3"
	end
}
script 38 mmbn4s {
	"Binder1"
	end
}
script 39 mmbn4s {
	"Binder2"
	end
}
script 40 mmbn4s {
	"Binder3"
	end
}
script 41 mmbn4s {
	"BugBomb"
	end
}
script 42 mmbn4s {
	"ElecShok"
	end
}
script 43 mmbn4s {
	"WoodPwdr"
	end
}
script 44 mmbn4s {
	"Ball"
	end
}
script 45 mmbn4s {
	"Geyser"
	end
}
script 46 mmbn4s {
	"BlkBomb"
	end
}
script 47 mmbn4s {
	"SandRing"
	end
}
script 48 mmbn4s {
	"Sword"
	end
}
script 49 mmbn4s {
	"WideSwrd"
	end
}
script 50 mmbn4s {
	"LongSwrd"
	end
}
script 51 mmbn4s {
	"WideBlde"
	end
}
script 52 mmbn4s {
	"LongBlde"
	end
}
script 53 mmbn4s {
	"WindRack"
	end
}
script 54 mmbn4s {
	"CustSwrd"
	end
}
script 55 mmbn4s {
	"VarSwrd"
	end
}
script 56 mmbn4s {
	"Slasher"
	end
}
script 57 mmbn4s {
	"Thunder1"
	end
}
script 58 mmbn4s {
	"Thunder2"
	end
}
script 59 mmbn4s {
	"Thunder3"
	end
}
script 60 mmbn4s {
	"Counter1"
	end
}
script 61 mmbn4s {
	"Counter2"
	end
}
script 62 mmbn4s {
	"Counter3"
	end
}
script 63 mmbn4s {
	"AirHoc1"
	end
}
script 64 mmbn4s {
	"AirHoc2"
	end
}
script 65 mmbn4s {
	"AirHoc3"
	end
}
script 66 mmbn4s {
	"CircGun1"
	end
}
script 67 mmbn4s {
	"CircGun2"
	end
}
script 68 mmbn4s {
	"CircGun3"
	end
}
script 69 mmbn4s {
	"TwnFng1"
	end
}
script 70 mmbn4s {
	"TwnFng2"
	end
}
script 71 mmbn4s {
	"TwnFng3"
	end
}
script 72 mmbn4s {
	"WhitWeb1"
	end
}
script 73 mmbn4s {
	"WhitWeb2"
	end
}
script 74 mmbn4s {
	"WhitWeb3"
	end
}
script 75 mmbn4s {
	"Boomer1"
	end
}
script 76 mmbn4s {
	"Boomer2"
	end
}
script 77 mmbn4s {
	"Boomer3"
	end
}
script 78 mmbn4s {
	"SidBmbo1"
	end
}
script 79 mmbn4s {
	"SidBmbo2"
	end
}
script 80 mmbn4s {
	"SidBmbo3"
	end
}
script 81 mmbn4s {
	"Lance"
	end
}
script 82 mmbn4s {
	"Hole"
	end
}
script 83 mmbn4s {
	"Wind"
	end
}
script 84 mmbn4s {
	"Fan"
	end
}
script 85 mmbn4s {
	"BoyBomb1"
	end
}
script 86 mmbn4s {
	"BoyBomb2"
	end
}
script 87 mmbn4s {
	"BoyBomb3"
	end
}
script 88 mmbn4s {
	"Guard1"
	end
}
script 89 mmbn4s {
	"Guard2"
	end
}
script 90 mmbn4s {
	"Guard3"
	end
}
script 91 mmbn4s {
	"CrakOut"
	end
}
script 92 mmbn4s {
	"DublCrak"
	end
}
script 93 mmbn4s {
	"TripCrak"
	end
}
script 94 mmbn4s {
	"Magnum"
	end
}
script 95 mmbn4s {
	"MetaGel"
	end
}
script 96 mmbn4s {
	"Snake"
	end
}
script 97 mmbn4s {
	"TimeBomb"
	end
}
script 98 mmbn4s {
	"Mine"
	end
}
script 99 mmbn4s {
	"RockCube"
	end
}
script 100 mmbn4s {
	"Fanfare"
	end
}
script 101 mmbn4s {
	"Discord"
	end
}
script 102 mmbn4s {
	"Timpani"
	end
}
script 103 mmbn4s {
	"VDoll"
	end
}
script 104 mmbn4s {
	"BigHamr1"
	end
}
script 105 mmbn4s {
	"BigHamr2"
	end
}
script 106 mmbn4s {
	"BigHamr3"
	end
}
script 107 mmbn4s {
	"Recov10"
	end
}
script 108 mmbn4s {
	"Recov30"
	end
}
script 109 mmbn4s {
	"Recov50"
	end
}
script 110 mmbn4s {
	"Recov80"
	end
}
script 111 mmbn4s {
	"Recov120"
	end
}
script 112 mmbn4s {
	"Recov150"
	end
}
script 113 mmbn4s {
	"Recov200"
	end
}
script 114 mmbn4s {
	"Recov300"
	end
}
script 115 mmbn4s {
	"Repair"
	end
}
script 116 mmbn4s {
	"PanlGrab"
	end
}
script 117 mmbn4s {
	"AreaGrab"
	end
}
script 118 mmbn4s {
	"GrabRvng"
	end
}
script 119 mmbn4s {
	"GrabBnsh"
	end
}
script 120 mmbn4s {
	"SloGauge"
	end
}
script 121 mmbn4s {
	"FstGauge"
	end
}
script 122 mmbn4s {
	"PnlRetrn"
	end
}
script 123 mmbn4s {
	"Geddon1"
	end
}
script 124 mmbn4s {
	"Geddon2"
	end
}
script 125 mmbn4s {
	"Geddon3"
	end
}
script 126 mmbn4s {
	"ElemLeaf"
	end
}
script 127 mmbn4s {
	"ColorPt"
	end
}
script 128 mmbn4s {
	"ElemSand"
	end
}
script 129 mmbn4s {
	"Blinder"
	end
}
script 130 mmbn4s {
	"MokoRus1"
	end
}
script 131 mmbn4s {
	"MokoRus2"
	end
}
script 132 mmbn4s {
	"MokoRus3"
	end
}
script 133 mmbn4s {
	"Invis"
	end
}
script 134 mmbn4s {
	"PopUp"
	end
}
script 135 mmbn4s {
	"Barrier"
	end
}
script 136 mmbn4s {
	"Barr100"
	end
}
script 137 mmbn4s {
	"Barr200"
	end
}
script 138 mmbn4s {
	"NrthWind"
	end
}
script 139 mmbn4s {
	"HolyPanl"
	end
}
script 140 mmbn4s {
	"AntiFire"
	end
}
script 141 mmbn4s {
	"AntiWatr"
	end
}
script 142 mmbn4s {
	"AntiElec"
	end
}
script 143 mmbn4s {
	"AntiWood"
	end
}
script 144 mmbn4s {
	"AntiNavi"
	end
}
script 145 mmbn4s {
	"AntiDmg"
	end
}
script 146 mmbn4s {
	"AntiSwrd"
	end
}
script 147 mmbn4s {
	"AntiRecv"
	end
}
script 148 mmbn4s {
	"CopyDmg"
	end
}
script 149 mmbn4s {
	"Atk+10"
	end
}
script 150 mmbn4s {
	"Navi+20"
	end
}
script 151 mmbn4s {
	"RollAro1"
	end
}
script 152 mmbn4s {
	"RollAro2"
	end
}
script 153 mmbn4s {
	"RollAro3"
	end
}
script 154 mmbn4s {
	"GutPnch1"
	end
}
script 155 mmbn4s {
	"GutPnch2"
	end
}
script 156 mmbn4s {
	"GutPnch3"
	end
}
script 157 mmbn4s {
	"PropBom1"
	end
}
script 158 mmbn4s {
	"PropBom2"
	end
}
script 159 mmbn4s {
	"PropBom3"
	end
}
script 160 mmbn4s {
	"SeekBom1"
	end
}
script 161 mmbn4s {
	"SeekBom2"
	end
}
script 162 mmbn4s {
	"SeekBom3"
	end
}
script 163 mmbn4s {
	"Meteors1"
	end
}
script 164 mmbn4s {
	"Meteors2"
	end
}
script 165 mmbn4s {
	"Meteors3"
	end
}
script 166 mmbn4s {
	"Ligtnin1"
	end
}
script 167 mmbn4s {
	"Ligtnin2"
	end
}
script 168 mmbn4s {
	"Ligtnin3"
	end
}
script 169 mmbn4s {
	"HawkCut1"
	end
}
script 170 mmbn4s {
	"HawkCut2"
	end
}
script 171 mmbn4s {
	"HawkCut3"
	end
}
script 172 mmbn4s {
	"NumbrBl1"
	end
}
script 173 mmbn4s {
	"NumbrBl2"
	end
}
script 174 mmbn4s {
	"NumbrBl3"
	end
}
script 175 mmbn4s {
	"MetlGer1"
	end
}
script 176 mmbn4s {
	"MetlGer2"
	end
}
script 177 mmbn4s {
	"MetlGer3"
	end
}
script 178 mmbn4s {
	"PanlSht1"
	end
}
script 179 mmbn4s {
	"PanlSht2"
	end
}
script 180 mmbn4s {
	"PanlSht3"
	end
}
script 181 mmbn4s {
	"AquaUp1"
	end
}
script 182 mmbn4s {
	"AquaUp2"
	end
}
script 183 mmbn4s {
	"AquaUp3"
	end
}
script 184 mmbn4s {
	"GreenWd1"
	end
}
script 185 mmbn4s {
	"GreenWd2"
	end
}
script 186 mmbn4s {
	"GreenWd3"
	end
}
script 187 mmbn4s {
	"DrkCanon"
	end
}
script 188 mmbn4s {
	"DrkSword"
	end
}
script 189 mmbn4s {
	"DarkBomb"
	end
}
script 190 mmbn4s {
	"DrkVulcn"
	end
}
script 191 mmbn4s {
	"DrkLance"
	end
}
script 192 mmbn4s {
	"DrkSpred"
	end
}
script 193 mmbn4s {
	"DrkStage"
	end
}
script 194 mmbn4s {
	"DrkRecov"
	end
}
script 201 mmbn4s {
	"LifeAura"
	end
}
script 202 mmbn4s {
	"Muramasa"
	end
}
script 203 mmbn4s {
	"Guardian"
	end
}
script 204 mmbn4s {
	"Anubis"
	end
}
script 205 mmbn4s {
	"Atk+30"
	end
}
script 206 mmbn4s {
	"BugFix"
	end
}
script 207 mmbn4s {
	"DblPoint"
	end
}
script 208 mmbn4s {
	"Snctuary"
	end
}
script 209 mmbn4s {
	"FullCust"
	end
}
script 210 mmbn4s {
	"ShotStar"
	end
}
script 211 mmbn4s {
	"BugChain"
	end
}
script 212 mmbn4s {
	"Jealousy"
	end
}
script 213 mmbn4s {
	"ElemDark"
	end
}
script 214 mmbn4s {
	"BlakWing"
	end
}
script 215 mmbn4s {
	"GodHammr"
	end
}
script 216 mmbn4s {
	"DrkLine"
	end
}
script 217 mmbn4s {
	"NeoVari"
	end
}
script 218 mmbn4s {
	"Z Saver"
	end
}
script 219 mmbn4s {
	"GunSolEX"
	end
}
script 220 mmbn4s {
	"SuprVulc"
	end
}
script 221 mmbn4s {
	"Roll"
	end
}
script 222 mmbn4s {
	"RollSP"
	end
}
script 223 mmbn4s {
	"RollDS"
	end
}
script 224 mmbn4s {
	"GutsMan"
	end
}
script 225 mmbn4s {
	"GutsMnSP"
	end
}
script 226 mmbn4s {
	"GutsMnDS"
	end
}
script 227 mmbn4s {
	"WindMan"
	end
}
script 228 mmbn4s {
	"WindMnSP"
	end
}
script 229 mmbn4s {
	"WindMnDS"
	end
}
script 230 mmbn4s {
	"SerchMan"
	end
}
script 231 mmbn4s {
	"SrchMnSP"
	end
}
script 232 mmbn4s {
	"SrchMnDS"
	end
}
script 233 mmbn4s {
	"FireMan"
	end
}
script 234 mmbn4s {
	"FireMnSP"
	end
}
script 235 mmbn4s {
	"FireMnDS"
	end
}
script 236 mmbn4s {
	"ThunMan"
	end
}
script 237 mmbn4s {
	"ThunMnSP"
	end
}
script 238 mmbn4s {
	"ThunMnDS"
	end
}
script 239 mmbn4s {
	"ProtoMan"
	end
}
script 240 mmbn4s {
	"ProtoMSP"
	end
}
script 241 mmbn4s {
	"ProtoMDS"
	end
}
script 242 mmbn4s {
	"NumbrMan"
	end
}
script 243 mmbn4s {
	"NumbMnSP"
	end
}
script 244 mmbn4s {
	"NumbMnDS"
	end
}
script 245 mmbn4s {
	"MetalMan"
	end
}
script 246 mmbn4s {
	"MetlMnSP"
	end
}
script 247 mmbn4s {
	"MetlMnDS"
	end
}
script 248 mmbn4s {
	"JunkMan"
	end
}
script 249 mmbn4s {
	"JunkMnSP"
	end
}
script 250 mmbn4s {
	"JunkMnDS"
	end
}
script 251 mmbn4s {
	"AquaMan"
	end
}
script 252 mmbn4s {
	"AquaMnSP"
	end
}
script 253 mmbn4s {
	"AquaMnDS"
	end
}
script 254 mmbn4s {
	"WoodMan"
	end
}
script 255 mmbn4s {
	"WoodMnSP"
	end
}
@archive 746830
@size 133

script 0 mmbn4s {
	"WoodMnDS"
	end
}
script 1 mmbn4s {
	"TopMan"
	end
}
script 2 mmbn4s {
	"TopMnSP"
	end
}
script 3 mmbn4s {
	"TopMnDS"
	end
}
script 4 mmbn4s {
	"ShadeMan"
	end
}
script 5 mmbn4s {
	"ShadMnSP"
	end
}
script 6 mmbn4s {
	"ShadMnDS"
	end
}
script 7 mmbn4s {
	"BurnMan"
	end
}
script 8 mmbn4s {
	"BurnMnSP"
	end
}
script 9 mmbn4s {
	"BurnMnDS"
	end
}
script 10 mmbn4s {
	"ColdMan"
	end
}
script 11 mmbn4s {
	"ColdMnSP"
	end
}
script 12 mmbn4s {
	"ColdMnDS"
	end
}
script 13 mmbn4s {
	"SparkMan"
	end
}
script 14 mmbn4s {
	"SprkMnSP"
	end
}
script 15 mmbn4s {
	"SprkMnDS"
	end
}
script 16 mmbn4s {
	"LaserMan"
	end
}
script 17 mmbn4s {
	"LasrMnSP"
	end
}
script 18 mmbn4s {
	"LasrMnDS"
	end
}
script 19 mmbn4s {
	"KendoMan"
	end
}
script 20 mmbn4s {
	"KendMnSP"
	end
}
script 21 mmbn4s {
	"KendMnDS"
	end
}
script 22 mmbn4s {
	"VideoMan"
	end
}
script 23 mmbn4s {
	"VideMnSP"
	end
}
script 24 mmbn4s {
	"VideMnDS"
	end
}
script 25 mmbn4s {
	"Marking"
	end
}
script 26 mmbn4s {
	"CannMode"
	end
}
script 27 mmbn4s {
	"CannBall"
	end
}
script 28 mmbn4s {
	"SwrdMode"
	end
}
script 29 mmbn4s {
	"FirePlus"
	end
}
script 30 mmbn4s {
	"ThunPlus"
	end
}
script 31 mmbn4s {
	"AquaPowr"
	end
}
script 32 mmbn4s {
	"WoodPowr"
	end
}
script 33 mmbn4s {
	"BlakWeap"
	end
}
script 34 mmbn4s {
	"FinalGun"
	end
}
script 45 mmbn4s {
	"Bass"
	end
}
script 46 mmbn4s {
	"DeltaRay"
	end
}
script 47 mmbn4s {
	"BugCurse"
	end
}
script 48 mmbn4s {
	"RedSun"
	end
}
script 49 mmbn4s {
	"SignlRed"
	end
}
script 50 mmbn4s {
	"BassAnly"
	end
}
script 51 mmbn4s {
	"HolyDrem"
	end
}
script 52 mmbn4s {
	"BlakBarr"
	end
}
script 53 mmbn4s {
	"BlueMoon"
	end
}
script 54 mmbn4s {
	"BugCharg"
	end
}
script 55 mmbn4s {
	"Duo"
	end
}
script 56 mmbn4s {
	"PrixPowr"
	end
}
script 64 mmbn4s {
	"DarkNeo"
	end
}
script 65 mmbn4s {
	"HeatSprd"
	end
}
script 66 mmbn4s {
	"BubSprd"
	end
}
script 67 mmbn4s {
	"GigaCan1"
	end
}
script 68 mmbn4s {
	"GigaCan2"
	end
}
script 69 mmbn4s {
	"GigaCan3"
	end
}
script 70 mmbn4s {
	"SuprSpr1"
	end
}
script 71 mmbn4s {
	"SuprSpr2"
	end
}
script 72 mmbn4s {
	"SuprSpr3"
	end
}
script 73 mmbn4s {
	"FlmCros1"
	end
}
script 74 mmbn4s {
	"FlmCros2"
	end
}
script 75 mmbn4s {
	"FlmCros3"
	end
}
script 76 mmbn4s {
	"PitRng1"
	end
}
script 77 mmbn4s {
	"PitRng2"
	end
}
script 78 mmbn4s {
	"PitRng3"
	end
}
script 79 mmbn4s {
	"BstFang1"
	end
}
script 80 mmbn4s {
	"BstFang2"
	end
}
script 81 mmbn4s {
	"BstFang3"
	end
}
script 82 mmbn4s {
	"PitHoky1"
	end
}
script 83 mmbn4s {
	"PitHoky2"
	end
}
script 84 mmbn4s {
	"PitHoky3"
	end
}
script 85 mmbn4s {
	"MagShok1"
	end
}
script 86 mmbn4s {
	"MagShok2"
	end
}
script 87 mmbn4s {
	"MagShok3"
	end
}
script 88 mmbn4s {
	"LifeSrd"
	end
}
script 89 mmbn4s {
	"P.Driver"
	end
}
script 90 mmbn4s {
	"TimeBom+"
	end
}
script 91 mmbn4s {
	"PoisPhar"
	end
}
script 92 mmbn4s {
	"BodyGrd"
	end
}
script 93 mmbn4s {
	"H-Burst"
	end
}
script 96 mmbn4s {
	"MegaSoul"
	end
}
script 97 mmbn4s {
	"RollSoul"
	end
}
script 98 mmbn4s {
	"GutsSoul"
	end
}
script 99 mmbn4s {
	"WindSoul"
	end
}
script 100 mmbn4s {
	"SrchSoul"
	end
}
script 101 mmbn4s {
	"FireSoul"
	end
}
script 102 mmbn4s {
	"ThunSoul"
	end
}
script 103 mmbn4s {
	"ProtSoul"
	end
}
script 104 mmbn4s {
	"NumSoul"
	end
}
script 105 mmbn4s {
	"MetlSoul"
	end
}
script 106 mmbn4s {
	"JunkSoul"
	end
}
script 107 mmbn4s {
	"AquaSoul"
	end
}
script 108 mmbn4s {
	"WoodSoul"
	end
}
script 109 mmbn4s {
	"DuoSoul"
	end
}
script 110 mmbn4s {
	"FrteSoul"
	end
}
script 111 mmbn4s {
	"DarkSoul"
	end
}
script 112 mmbn4s {
	"DarkLase"
	end
}
script 113 mmbn4s {
	"????"
	end
}
script 114 mmbn4s {
	"FtrSword"
	end
}
script 115 mmbn4s {
	"SonicBom"
	end
}
script 116 mmbn4s {
	"Curse"
	end
}
script 117 mmbn4s {
	"Punisher"
	end
}
script 118 mmbn4s {
	"CrosSwrd"
	end
}
script 119 mmbn4s {
	"SprSonic"
	end
}
script 120 mmbn4s {
	"DblDream"
	end
}
script 121 mmbn4s {
	"FastFwd"
	end
}
script 122 mmbn4s {
	"Rewind"
	end
}
script 123 mmbn4s {
	"Training"
	end
}
script 124 mmbn4s {
	"GearChng"
	end
}
script 125 mmbn4s {
	"Poltrgst"
	end
}
script 126 mmbn4s {
	"IceCube"
	end
}
script 127 mmbn4s {
	"Rush"
	end
}
script 128 mmbn4s {
	"Beat"
	end
}
script 129 mmbn4s {
	"Tango"
	end
}
script 130 mmbn4s {
	"FinalGun"
	end
}
script 131 mmbn4s {
	"GutsMG"
	end
}
script 132 mmbn4s {
	" "
	end
}
@archive 749F30
@size 256
script 0 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 1 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cannon to
	attack
	1 enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 2 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cannon to
	attack
	1 enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 3 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cannon to
	attack
	1 enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 4 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Knocks
	enemy
	back 1
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 5 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Snowstorm
	attack!
	Ice Panel
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 6 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Magma
	Firestorm
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 7 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MuteAnt
	to blind
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 8 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Creates 8
	whirlwind
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 9 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 3sq
	shotgun
	blast!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 10 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 3sq
	shotgun
	blast!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 11 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 3sq
	shotgun
	blast!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 12 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebeam
	2sq ahead
	3sq long!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 13 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebeam
	2sq ahead
	3sq long!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 14 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebeam
	2sq ahead
	3sq long!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 15 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-shot to
	pierce 1
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 16 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5-shot to
	pierce 1
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 17 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	7-shot to
	pierce 1
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Creates a
	large
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	1 square
	behind
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	2 diag.
	squares
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	up,down
	on hit
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	1 square
	behind
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	2 diag.
	squares
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 24 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	up,down
	on hit
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 25 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on magma!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 26 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on ice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 27 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A static
	blast 2sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 28 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Makes
	enmy's HP
	same
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 29 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb 3
	squares
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 30 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws
	bomb 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 31 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws
	bomb 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 32 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Sunshine
	appear w/
	Button
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 33 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Sunshine
	appear w/
	Button
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 34 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Sunshine
	appear w/
	Button
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 35 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Shocks an
	enemy
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 36 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Shocks an
	enemy
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 37 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Shocks an
	enemy
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 38 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	sonic
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 39 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	sonic
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 40 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	sonic
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 41 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bug-bomb
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 42 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cracker
	Electric
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 43 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Changes
	panels
	to grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 44 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Breaks
	3rd panel
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 45 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Geyser 3
	squares
	forward
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 46 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebomb
	hits 3rd
	sq ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 47 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Opens a
	pitfall
	trap
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 48 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	Range: 1
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 49 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	Range: 3
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 50 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	Range: 2
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 51 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	Range: 3
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 52 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	Range: 2
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 53 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Blow enmy
	in front!
	Range: 3
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 54 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cust
	Gauge=
	Atk Str
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 55 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A magical
	shifting
	sword
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 56 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut while
	A Button
	is held!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 57 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Pralyzing
	electric
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 58 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Pralyzing
	electric
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 59 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Pralyzing
	electric
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 60 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Counter-
	attack to
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 61 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Counter-
	attack to
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 62 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Counter-
	attack to
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 63 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ricochet
	attack to
	right
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 64 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ricochet
	attack to
	right
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 65 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ricochet
	attack to
	right
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 66 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop site
	w/ Button
	and attck
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 67 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop site
	w/ Button
	and attck
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 68 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop site
	w/ Button
	and attck
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 69 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launch 2
	fangs up
	and down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 70 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launch 2
	fangs up
	and down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 71 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launch 2
	fangs up
	and down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 72 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stretches
	web over
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 73 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stretches
	web on
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 74 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stretches
	web under
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 75 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Boomerang
	encircles
	field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 76 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Boomerang
	encircles
	field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 77 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Boomerang
	encircles
	field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 78 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lance
	attck 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 79 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lance
	attck 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 80 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lance
	attck 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 81 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lances
	through
	back line
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 82 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Appears
	Hole
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 83 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WindBox
	blows at
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 84 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VacuumFan
	pulls
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 85 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places
	BoyBom in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 86 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places
	BoyBom in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 87 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places
	BoyBom in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 88 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	enemy's
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 89 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	enemy's
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 90 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	enemy's
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 91 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Destroys
	1 panel
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 92 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Destroys
	2 panels
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 93 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Destroys
	3 panels
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 94 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cursor
	destroys
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 95 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gel attck
	steals a
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 96 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Snake
	from hole
	in area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 97 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	An area-
	wide time
	bomb
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 98 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	mine in
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 99 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	rock cube
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 100 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Take no
	dmg for a
	while
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 101 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Confuses
	enemies
	w/ music
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 102 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Paralyzes
	enemies
	w/ music
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 103 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws
	VDoll
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 104 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hammr atk
	smashes
	in front!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 105 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hammr atk
	smashes
	in front!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 106 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hammr atk
	smashes
	in front!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 107 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	10HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 108 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	30HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 109 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	50HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 110 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	80HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 111 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	120HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 112 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	150HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 113 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	200HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 114 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	300HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 115 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	HP of 
	items
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 116 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Steals 1
	enemy
	square!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 117 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Steals
	left edge
	from enmy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 118 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Retaliate
	stolen
	panels!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 119 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Retaliate
	stolen
	panels!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 120 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CustGauge
	Temporary
	slow-down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 121 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CustGauge
	Temporary
	speed-up
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 122 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fix your
	area's
	panels
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 123 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cracks
	all panel
	on screen
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 124 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Breaks
	all empty
	panels
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 125 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Turns all
	panels to
	swamp
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 126 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 127 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+10 for
	next chip
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 128 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on pitfal
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 129 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Blinds
	enemy w/
	light
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 130 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 Molokos
	charge
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 131 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 Molokos
	charge
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 132 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 Molokos
	charge
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 133 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Invisible
	for a
	while
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 134 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attacks
	frm under
	ground
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 135 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Nullifies
	10 HP of
	damage
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 136 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Nullifies
	100 HP of
	damage
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 137 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Nullifies
	200 HP of
	damage
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 138 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Wind blws
	off aura,
	barriers
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 139 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Creates a
	HolyPanl
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 140 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fire atk
	damages
	you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 141 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water atk
	damages
	you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 142 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Elec atk
	damages
	you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 143 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Wood atk
	damages
	you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 144 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Takes the
	enemy's
	Navi away
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 145 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Sets trap
	and throw
	stars
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 146 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Retaliate
	for sword
	damage
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 147 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Damages
	enemy in
	recovery
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 148 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Duplicate
	damage to
	2nd enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 149 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+10 for
	selected
	atk chip
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 150 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+20 for
	selected
	Navi chip
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 151 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollArrow
	destroys
	chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 152 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollArrow
	destroys
	chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 153 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollArrow
	destroys
	chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 154 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launches
	GutPunch
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 155 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launches
	GutStrgt
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 156 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launches
	GutImpct
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 157 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rushing
	causes an
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 158 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rushing
	causes an
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 159 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rushing
	causes an
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 160 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb at
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 161 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb at
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 162 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb at
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 163 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 5
	Meteors
	at enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 164 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 5
	Meteors
	at enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 165 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 5
	Meteors
	at enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 166 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Thunder
	strikes
	obstacles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 167 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Thunder
	strikes
	obstacles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 168 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Thunder
	strikes
	obstacles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 169 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut twice
	once wide
	once long
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 170 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut twice
	once wide
	once long
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 171 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut twice
	once wide
	once long
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 172 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-shot
	ball atk
	reduce HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 173 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	4-shot
	ball atk
	reduce HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 174 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5-shot
	ball atk
	reduce HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 175 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gear
	crushes
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 176 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gear
	crushes
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 177 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gear
	crushes
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 178 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lifts
	panel and
	throws it
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 179 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lifts
	panel and
	throws it
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 180 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lifts
	panel and
	throws it
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 181 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	AquaTowrs
	frm crack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 182 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	AquaTowrs
	frm crack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 183 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	AquaTowrs
	frm crack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 184 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	WoodTowrs
	frm grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 185 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	WoodTowrs
	frm grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 186 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	WoodTowrs
	frm grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 187 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 188 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 189 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 190 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 191 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 192 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 193 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 194 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 195 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 196 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 197 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call1
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 198 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call2
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 199 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call3
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 200 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call4
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 201 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	all attck
	under 200
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 202 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Power=
	HP lost
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 203 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Statue
	retaliate
	when hit
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 204 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Anubis
	poisons
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 205 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+30 for
	selected
	atk chip
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 206 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repairs &
	removes
	bugs
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 207 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+20 for
	next chip
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 208 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Chng all
	own panel
	to holy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 209 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CustGauge
	instantly
	refills
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 210 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Drop many
	meteor on
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 211 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires
	bugs into
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 212 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	More chip
	mean more
	damage
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 213 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Powerful
	ovr swamp
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 214 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Wings
	descend
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 215 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	stone
	statue
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 216 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Turns all
	rows into
	Holes
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 217 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A magical
	shifting
	sword
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 218 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repliroid
	swrd cuts
	3 times
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 219 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	spread
	sunbeam
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 220 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	12-shot
	vulcan
	cannon
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 221 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attcks an
	enmy,then
	heals you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 222 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attcks an
	enmy,then
	heals you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 223 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attcks an
	enmy,then
	heals you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 224 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsHammr
	destroys
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 225 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsHammr
	destroys
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 226 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsHammr
	destroys
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 227 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Whirlwind
	that spin
	acrss 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 228 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Whirlwind
	that spin
	acrss 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 229 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Whirlwind
	that spin
	acrss 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 230 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop site
	and fire
	5 shots
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 231 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop site
	and fire
	5 shots
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 232 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop site
	and fire
	5 shots
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 233 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fire burn
	to front
	side
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 234 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fire burn
	to front
	side
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 235 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fire burn
	to front
	side
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 236 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lightning
	strikes
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 237 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lightning
	strikes
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 238 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lightning
	strikes
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 239 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rush up
	to enemy
	and slice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 240 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rush up
	to enemy
	and slice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 241 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rush up
	to enemy
	and slice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 242 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Bomb 3
	ahead!
	Hits 9sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 243 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Bomb 3
	ahead!
	Hits 9sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 244 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Bomb 3
	ahead!
	Hits 9sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 245 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Iron fist
	crushes
	1sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 246 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Iron fist
	crushes
	1sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 247 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Iron fist
	crushes
	1sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 248 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throw any
	objects
	on field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 249 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throw any
	objects
	on field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 250 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throw any
	objects
	on field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 251 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water Gun
	sprays
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 252 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water Gun
	sprays
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 253 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water Gun
	sprays
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 254 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodTowr
	pierce to
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 255 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodTowr
	pierce to
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 74C670
@size 113
script 0 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodTowr
	pierce in
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 1 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attck hit
	3 panels
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 2 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attck hit
	3 panels
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 3 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attck hit
	3 panels
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 4 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CrshNoise
	attck all
	direction
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 5 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CrshNoise
	attck all
	direction
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 6 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CrshNoise
	attck all
	direction
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 7 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-direct
	burnr fry
	2 ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 8 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-direct
	burnr fry
	2 ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 9 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-direct
	burnr fry
	2 ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 10 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ices over
	all and
	slides!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 11 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ices over
	all and
	slides!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 12 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ices over
	all and
	slides!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 13 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SparkWave
	blinds
	enemy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 14 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SparkWave
	blinds
	enemy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 15 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SparkWave
	blinds
	enemy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 16 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A laser
	pierces
	1 thru!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 17 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A laser
	pierces
	1 thru!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A laser
	pierces
	1 thru!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attck hit
	an enemy
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attck hit
	an enemy
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attck hit
	an enemy
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attack
	tape slam
	2.5 in
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attack
	tape slam
	2.5 in
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 24 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attack
	tape slam
	2.5 in
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 25 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 26 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 27 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 28 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 29 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 30 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 31 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 32 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 33 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 34 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 35 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 36 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 37 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 38 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 39 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 40 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 41 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 42 mmbn4 {
	textSpeed
		delay = 0
	msgCloseQuick
}
script 43 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 44 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 45 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Buster
	rake half
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 46 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A Button
	power up
	by 3 swrd
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 47 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Make enmy
	buggy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 48 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A RedSun
	bombards
	3 ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 49 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Enmy chip
	is no use
	while red
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 50 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A ring
	that hits
	4 times
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 51 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Holy shot
	sucks in
	HolyPanl!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 52 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A dark
	barrier
	regenrate
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 53 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Blue moon
	drains
	3 ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 54 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Gets powr
	with turn
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 55 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MetrKnukl
	of justic
	rain down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 56 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GrandPrix
	3 Navis
	atk tgthr
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 57 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 58 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 59 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 60 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 61 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 62 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 63 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 64 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fuses the
	powr into
	darkness!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 65 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explosion
	by Wide
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 66 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Bubbles
	by Wide
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 67 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A cannon
	driven by
	GigaPower
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 68 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A cannon
	driven by
	GigaPower
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 69 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A cannon
	driven by
	GigaPower
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 70 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A 3-hit
	wide shot
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 71 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A 3-hit
	wide shot
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 72 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A 3-hit
	wide shot
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 73 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	The burn-
	ing flame
	in cross!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 74 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	The burn-
	ing flame
	in cross!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 75 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	The burn-
	ing flame
	in cross!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 76 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 boome-
	rang atk
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 77 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 boome-
	rang atk
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 78 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 boome-
	rang atk
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 79 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Numerous
	Fangs are
	continued
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 80 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Numerous
	Fangs are
	continued
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 81 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Numerous
	Fangs are
	continued
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 82 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	The rico-
	cheting
	Hockey
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 83 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	The rico-
	cheting
	Hockey
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 84 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	The rico-
	cheting
	Hockey
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 85 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Powerful
	magnet
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 86 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Powerful
	magnet
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 87 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Powerful
	magnet
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 88 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Big sword
	2 long
	3 wide!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 89 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A sun
	generator
	fries all
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 90 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Sets a
	TimeBom
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 91 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	poisoned
	Pharaoh
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 92 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Assassin
	who sneak
	into enmy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 93 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explosion
	spreads
	into 1!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 94 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 95 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 96 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"MegaSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 97 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"RollSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 98 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"GutsSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 99 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"WindSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 100 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"SrchSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 101 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"FireSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 102 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ThunSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 103 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ProtSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 104 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"NumSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 105 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"MetlSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 106 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"JunkSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 107 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"AquaSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 108 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"WoodSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 109 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"DuoSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 110 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"FrteSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 111 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"DarkSoul"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 112 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	" "
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 6E66B8
@size 48

script 0 mmbn4s {
	"NONE"
	end
}
script 1 mmbn4s {
	"SprArmr"
	end
}
script 2 mmbn4s {
	"Custom1"
	end
}
script 3 mmbn4s {
	"Custom2"
	end
}
script 4 mmbn4s {
	"MegFldr1"
	end
}
script 5 mmbn4s {
	"MegFldr2"
	end
}
script 6 mmbn4s {
	"GigFldr1"
	end
}
script 7 mmbn4s {
	"FstBarr"
	end
}
script 8 mmbn4s {
	"Shield"
	end
}
script 9 mmbn4s {
	"Reflect"
	end
}
script 10 mmbn4s {
	"AntiMagc"
	end
}
script 11 mmbn4s {
	"FlotShoe"
	end
}
script 12 mmbn4s {
	"AirShoes"
	end
}
script 13 mmbn4s {
	"UnderSht"
	end
}
script 14 mmbn4s {
	"SneakRun"
	end
}
script 15 mmbn4s {
	"OilBody"
	end
}
script 16 mmbn4s {
	"Fish"
	end
}
script 17 mmbn4s {
	"Battery"
	end
}
script 18 mmbn4s {
	"Jungle"
	end
}
script 19 mmbn4s {
	"Collect"
	end
}
script 20 mmbn4s {
	"Humor"
	end
}
script 21 mmbn4s {
	"BustPack"
	end
}
script 22 mmbn4s {
	"BodyPack"
	end
}
script 23 mmbn4s {
	"HubBatc"
	end
}
script 24 mmbn4s {
	"BugStop"
	end
}
script 25 mmbn4s {
	"SoulClen"
	end
}
script 26 mmbn4s {
	"Rush"
	end
}
script 27 mmbn4s {
	"Beat"
	end
}
script 28 mmbn4s {
	"Tango"
	end
}
script 29 mmbn4s {
	"HeatWepn"
	end
}
script 30 mmbn4s {
	"AquaWepn"
	end
}
script 31 mmbn4s {
	"ElecWepn"
	end
}
script 32 mmbn4s {
	"WoodWepn"
	end
}
script 33 mmbn4s {
	"Invisibl"
	end
}
script 34 mmbn4s {
	"Attack+1"
	end
}
script 35 mmbn4s {
	"Speed+1"
	end
}
script 36 mmbn4s {
	"Charge+1"
	end
}
script 37 mmbn4s {
	"AttckMAX"
	end
}
script 38 mmbn4s {
	"SpeedMAX"
	end
}
script 39 mmbn4s {
	"ChargMAX"
	end
}
script 40 mmbn4s {
	"WeapLV+1"
	end
}
script 41 mmbn4s {
	"HP+50"
	end
}
script 42 mmbn4s {
	"HP+100"
	end
}
script 43 mmbn4s {
	"HP+200"
	end
}
script 44 mmbn4s {
	"HP+300"
	end
}
script 45 mmbn4s {
	"HP+400"
	end
}
script 46 mmbn4s {
	"HP+500"
	end
}
script 47 mmbn4s {
	"  RUN!"
	end
}
@archive 6E6888
@size 48

script 0 mmbn4s {
	end
}
script 1 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You won't
	get push-
	ed back!
	"""
	waitHold
	end
}
script 2 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can pick
	1 more
	chip!
	"""
	waitHold
	end
}
script 3 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can pick
	2 more
	chips!
	"""
	waitHold
	end
}
script 4 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	1 more
	MegaChip
	in folder
	"""
	waitHold
	end
}
script 5 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	2 more
	MegaChips
	in folder
	"""
	waitHold
	end
}
script 6 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	1 more
	GigaChip
	in folder
	"""
	waitHold
	end
}
script 7 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Barrier
	activated
	frm start
	"""
	waitHold
	end
}
script 8 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Zero dmg
	with
	B + Left!
	"""
	waitHold
	end
}
script 9 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Return
	dmg with
	B + Left!
	"""
	waitHold
	end
}
script 10 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	When hit,
	B + Left
	hurl star
	"""
	waitHold
	end
}
script 11 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	No effect
	frm panel
	type!
	"""
	waitHold
	end
}
script 12 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Walk even
	if no
	panels!
	"""
	waitHold
	end
}
script 13 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Keep 1HP
	even on
	fatal hit
	"""
	waitHold
	end
}
script 14 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Weak enmy
	stop
	appearing
	"""
	waitHold
	end
}
script 15 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Fire
	viruses!
	"""
	waitHold
	end
}
script 16 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Aqua
	viruses!
	"""
	waitHold
	end
}
script 17 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Elec
	viruses!
	"""
	waitHold
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Wood
	viruses!
	"""
	waitHold
	end
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Find more
	chip data
	on enemy
	"""
	waitHold
	end
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Install
	and try
	L Button!
	"""
	waitHold
	end
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Atk/speed
	/charge
	+3 each!
	"""
	waitHold
	end
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	4 items
	to
	protect!
	"""
	waitHold
	end
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Maximizes
	your
	potential
	"""
	waitHold
	end
}
script 24 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stops
	occurance
	of bugs
	"""
	waitHold
	end
}
script 25 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cleanses
	evil
	thoughts
	"""
	waitHold
	end
}
script 26 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VS only!
	Find an
	opponent
	"""
	waitHold
	end
}
script 27 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VS only!
	Take high
	lvl chips
	"""
	waitHold
	end
}
script 28 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VS only!
	Heals in
	a pinch
	"""
	waitHold
	end
}
script 29 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"HeatWepn"
	waitHold
	end
}
script 30 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"AquaWepn"
	waitHold
	end
}
script 31 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ElecWepn"
	waitHold
	end
}
script 32 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"WoodWepn"
	waitHold
	end
}
script 33 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"Invisibl"
	waitHold
	end
}
script 34 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegBuster
	Attack+1!
	"""
	waitHold
	end
}
script 35 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegBuster
	Speed+1!
	"""
	waitHold
	end
}
script 36 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegBuster
	Charge
	up+1!
	"""
	waitHold
	end
}
script 37 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegBuster
	AttckMAX!
	"""
	waitHold
	end
}
script 38 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegBuster
	SpeedMAX!
	"""
	waitHold
	end
}
script 39 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegBuster
	Charge
	MAX!
	"""
	waitHold
	end
}
script 40 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"WeapLV+1!"
	waitHold
	end
}
script 41 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP
	+50!
	"""
	waitHold
	end
}
script 42 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP
	+100!
	"""
	waitHold
	end
}
script 43 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP
	+200!
	"""
	waitHold
	end
}
script 44 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP
	+300!
	"""
	waitHold
	end
}
script 45 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP
	+400!
	"""
	waitHold
	end
}
script 46 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP
	+500!
	"""
	waitHold
	end
}
script 47 mmbn4s {
	"Run?"
	end
}
@archive 746ECC
@size 58
script 3 mmbn4 {
	checkChapter
		lower = 124
		upper = 124
		jumpIfInRange = 56
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! This is no time
	for us to run away!
	"""
	keyWait
		any = false
	end
}
@archive 6E7F10
@size 160

script 0 mmbn4s {
	"""
	DrkLine *
	BugChain*
	Bass    X
	"""
	end
}
script 1 mmbn4s {
	"""
	DrkLine *
	BugChain*
	BassAnlyX
	"""
	end
}
script 2 mmbn4s {
	end
}
script 3 mmbn4s {
	end
}
script 4 mmbn4s {
	end
}
script 5 mmbn4s {
	"""
	HeatShotB
	HeatShotC
	HeatShotD
	"""
	end
}
script 6 mmbn4s {
	"""
	Heat-V C
	Heat-V D
	Heat-V E
	"""
	end
}
script 7 mmbn4s {
	"""
	HeatSideD
	HeatSideE
	HeatSideF
	"""
	end
}
script 8 mmbn4s {
	"""
	HeatShotD
	Heat-V  D
	HeatSideD
	"""
	end
}
script 9 mmbn4s {
	end
}
script 10 mmbn4s {
	"""
	Bubbler P
	Bubbler Q
	Bubbler R
	"""
	end
}
script 11 mmbn4s {
	"""
	Bub-V C
	Bub-V D
	Bub-V E
	"""
	end
}
script 12 mmbn4s {
	"""
	BublSideD
	BublSideE
	BublSideF
	"""
	end
}
script 13 mmbn4s {
	end
}
script 14 mmbn4s {
	end
}
script 15 mmbn4s {
	"""
	Cannon A
	Cannon B
	Cannon C
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	end
}
script 18 mmbn4s {
	end
}
script 19 mmbn4s {
	end
}
script 20 mmbn4s {
	"""
	HiCannonC
	HiCannonD
	HiCannonE
	"""
	end
}
script 21 mmbn4s {
	end
}
script 22 mmbn4s {
	end
}
script 23 mmbn4s {
	end
}
script 24 mmbn4s {
	end
}
script 25 mmbn4s {
	"""
	M-CannonE
	M-CannonF
	M-CannonG
	"""
	end
}
script 26 mmbn4s {
	end
}
script 27 mmbn4s {
	end
}
script 28 mmbn4s {
	end
}
script 29 mmbn4s {
	end
}
script 30 mmbn4s {
	"""
	WideSht1C
	WideSht1D
	WideSht1E
	"""
	end
}
script 31 mmbn4s {
	end
}
script 32 mmbn4s {
	end
}
script 33 mmbn4s {
	end
}
script 34 mmbn4s {
	end
}
script 35 mmbn4s {
	"""
	WideSht2L
	WideSht2M
	WideSht2N
	"""
	end
}
script 36 mmbn4s {
	end
}
script 37 mmbn4s {
	end
}
script 38 mmbn4s {
	end
}
script 39 mmbn4s {
	end
}
script 40 mmbn4s {
	"""
	WideSht3S
	WideSht3T
	WideSht3U
	"""
	end
}
script 41 mmbn4s {
	end
}
script 42 mmbn4s {
	end
}
script 43 mmbn4s {
	end
}
script 44 mmbn4s {
	end
}
script 45 mmbn4s {
	"""
	FlmLine1F
	FlmLine1G
	FlmLine1H
	"""
	end
}
script 46 mmbn4s {
	end
}
script 47 mmbn4s {
	end
}
script 48 mmbn4s {
	end
}
script 49 mmbn4s {
	end
}
script 50 mmbn4s {
	"""
	FlmLine2D
	FlmLine2E
	FlmLine2F
	"""
	end
}
script 51 mmbn4s {
	end
}
script 52 mmbn4s {
	end
}
script 53 mmbn4s {
	end
}
script 54 mmbn4s {
	end
}
script 55 mmbn4s {
	"""
	FlmLine3J
	FlmLine3K
	FlmLine3L
	"""
	end
}
script 56 mmbn4s {
	end
}
script 57 mmbn4s {
	end
}
script 58 mmbn4s {
	end
}
script 59 mmbn4s {
	end
}
script 60 mmbn4s {
	"""
	Boomer1 L
	Boomer1 M
	Boomer1 N
	"""
	end
}
script 61 mmbn4s {
	end
}
script 62 mmbn4s {
	end
}
script 63 mmbn4s {
	end
}
script 64 mmbn4s {
	end
}
script 65 mmbn4s {
	"""
	Boomer2 L
	Boomer2 M
	Boomer2 N
	"""
	end
}
script 66 mmbn4s {
	end
}
script 67 mmbn4s {
	end
}
script 68 mmbn4s {
	end
}
script 69 mmbn4s {
	end
}
script 70 mmbn4s {
	"""
	Boomer3 S
	Boomer3 T
	Boomer3 U
	"""
	end
}
script 71 mmbn4s {
	end
}
script 72 mmbn4s {
	end
}
script 73 mmbn4s {
	end
}
script 74 mmbn4s {
	end
}
script 75 mmbn4s {
	"""
	TwnFng1 A
	TwnFng1 B
	TwnFng1 C
	"""
	end
}
script 76 mmbn4s {
	end
}
script 77 mmbn4s {
	end
}
script 78 mmbn4s {
	end
}
script 79 mmbn4s {
	end
}
script 80 mmbn4s {
	"""
	TwnFng2 O
	TwnFng2 P
	TwnFng2 Q
	"""
	end
}
script 81 mmbn4s {
	end
}
script 82 mmbn4s {
	end
}
script 83 mmbn4s {
	end
}
script 84 mmbn4s {
	end
}
script 85 mmbn4s {
	"""
	TwnFng3 F
	TwnFng3 G
	TwnFng3 H
	"""
	end
}
script 86 mmbn4s {
	end
}
script 87 mmbn4s {
	end
}
script 88 mmbn4s {
	end
}
script 89 mmbn4s {
	end
}
script 90 mmbn4s {
	"""
	AirHoc1 D
	AirHoc1 E
	AirHoc1 F
	"""
	end
}
script 91 mmbn4s {
	end
}
script 92 mmbn4s {
	end
}
script 93 mmbn4s {
	end
}
script 94 mmbn4s {
	end
}
script 95 mmbn4s {
	"""
	AirHoc2 I
	AirHoc2 J
	AirHoc2 K
	"""
	end
}
script 96 mmbn4s {
	end
}
script 97 mmbn4s {
	end
}
script 98 mmbn4s {
	end
}
script 99 mmbn4s {
	end
}
script 100 mmbn4s {
	"""
	AirHoc3 U
	AirHoc3 V
	AirHoc3 W
	"""
	end
}
script 101 mmbn4s {
	end
}
script 102 mmbn4s {
	end
}
script 103 mmbn4s {
	end
}
script 104 mmbn4s {
	end
}
script 105 mmbn4s {
	"""
	MagBolt1B
	MagBolt1C
	MagBolt1D
	"""
	end
}
script 106 mmbn4s {
	end
}
script 107 mmbn4s {
	end
}
script 108 mmbn4s {
	end
}
script 109 mmbn4s {
	end
}
script 110 mmbn4s {
	"""
	MagBolt2E
	MagBolt2F
	MagBolt2G
	"""
	end
}
script 111 mmbn4s {
	end
}
script 112 mmbn4s {
	end
}
script 113 mmbn4s {
	end
}
script 114 mmbn4s {
	end
}
script 115 mmbn4s {
	"""
	MagBolt3A
	MagBolt3B
	MagBolt3C
	"""
	end
}
script 116 mmbn4s {
	end
}
script 117 mmbn4s {
	end
}
script 118 mmbn4s {
	end
}
script 119 mmbn4s {
	end
}
script 120 mmbn4s {
	"""
	Sword   E
	WideSwrdE
	LongSwrdE
	"""
	end
}
script 121 mmbn4s {
	"""
	Sword   L
	WideSwrdL
	LongSwrdL
	"""
	end
}
script 122 mmbn4s {
	"""
	Sword   S
	WideSwrdS
	LongSwrdS
	"""
	end
}
script 123 mmbn4s {
	"""
	Sword   S
	WideBldeS
	LongBldeS
	"""
	end
}
script 124 mmbn4s {
	end
}
script 125 mmbn4s {
	"""
	GunSol1 G
	GunSol2 G
	GunSol3 G
	"""
	end
}
script 126 mmbn4s {
	end
}
script 127 mmbn4s {
	end
}
script 128 mmbn4s {
	end
}
script 129 mmbn4s {
	end
}
script 130 mmbn4s {
	"""
	TimeBombJ
	TimeBombK
	TimeBombL
	"""
	end
}
script 131 mmbn4s {
	end
}
script 132 mmbn4s {
	end
}
script 133 mmbn4s {
	end
}
script 134 mmbn4s {
	end
}
script 135 mmbn4s {
	"""
	Hole    *
	DrkLine *
	Anubis  A
	"""
	end
}
script 136 mmbn4s {
	end
}
script 137 mmbn4s {
	end
}
script 138 mmbn4s {
	end
}
script 139 mmbn4s {
	end
}
script 140 mmbn4s {
	"""
	AntiDmg M
	AntiNaviM
	MuramasaM
	"""
	end
}
script 141 mmbn4s {
	end
}
script 142 mmbn4s {
	end
}
script 143 mmbn4s {
	end
}
script 144 mmbn4s {
	end
}
script 145 mmbn4s {
	"""
	SpreaderL
	SpreaderM
	SpreaderN
	"""
	end
}
script 146 mmbn4s {
	end
}
script 147 mmbn4s {
	end
}
script 148 mmbn4s {
	end
}
script 149 mmbn4s {
	end
}
script 150 mmbn4s {
	end
}
script 151 mmbn4s {
	end
}
script 152 mmbn4s {
	end
}
script 153 mmbn4s {
	end
}
script 154 mmbn4s {
	end
}
script 155 mmbn4s {
	end
}
script 156 mmbn4s {
	end
}
script 157 mmbn4s {
	end
}
script 158 mmbn4s {
	end
}
script 159 mmbn4s {
	end
}