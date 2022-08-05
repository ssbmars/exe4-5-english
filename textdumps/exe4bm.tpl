@archive 0196C4
@size 1

script 0 mmbn4s {
	"????"
	end
}
@archive 6DE180
@size 255

script 0 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ここまでのかつやくを
	セーブしておこうか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	clearMsg
	"""
	すでにある セーブデータに
	うわがきしちゃうけど いい?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	セーブに
	しっぱいしたみたい・・・
	"""
	keyWait
		any = false
	clearMsg
	"もういちど やってみるね\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 67,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	よし!
	セーブおわったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	mugshotHide
	clearMsg
	"""
	データが不正に
	かきかえられていて
	セーブすることが できません
	"""
	keyWait
		any = false
	clearMsg
	"もういちど やってみるね\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	mugshotHide
	clearMsg
	"""
	データが不正に
	かきかえられていて
	セーブすることが できません
	"""
	keyWait
		any = false
	clearMsg
	"もういちど やってみるね\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	"プレイジカン"
	end
}
script 7 mmbn4s {
	"データライブラリ"
	end
}
script 8 mmbn4s {
	"バトルチップ"
	end
}
script 9 mmbn4s {
	"クレジット"
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
	"枚"
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
	ざんねんだったね、熱斗くん・・
	このあとのしあいもみておく?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	やったね熱斗くん!
	フリートーナメントゆうしょう
	だよ!
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
	見ごたえのあるしあいだったね
	ボクらもまたちょうせんしよう!
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
	おしかったね熱斗くん
	こんどこそゆうしょうしよう!
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"熱斗くん、どうする?\n"
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
	"フォルダを へんしゅう\n"
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
	"フォルダを そうび"
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
		left = 57
		top = 108
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
	を
	そうびしたよ!
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
	チップフォルダが
	30枚になってないよ!
	"""
	keyWait
		any = false
	clearMsg
	"へんしゅうをやめる?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	同じチップは
	4枚までだよ!
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
	同じメガクラスチップは
	1枚しか入れられないよ
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
	同じギガクラスチップは
	1枚しか入れられないよ
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
	"メガクラスチップは\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"枚までだよ!"
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
	"ギガクラスチップは\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"枚までだよ!"
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
	レギュラーようりょうが
	たりないよ!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"熱斗くん、どうする?\n"
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
	"フォルダを そうびする\n"
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
		left = 57
		top = 108
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
	よびフォルダが ロック
	されていて、そうびを
	へんこうできないよ!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	positionText
		left = 57
		top = 108
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
	今のボクでは
	そのフォルダをあつかえないよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	フォルダをへんしゅうしなおして
	そうびしよう!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"熱斗くん、どうする?\n"
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
	"フォルダを へんしゅう\n"
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
	"HPを50かいふく!"
	end
}
script 41 mmbn4s {
	"""
	HPをマックスまで
	かいふく!
	"""
	end
}
script 42 mmbn4s {
	"""
	しばらくのあいだ
	よわいウイルスと
	であわなくなる
	"""
	end
}
script 43 mmbn4s {
	"""
	ミステリーデータに
	かかったワナをはずす
	"""
	end
}
script 44 mmbn4s {
	"""
	ちょくぜんに であった
	テキと、もういちど
	であいやすくなる
	"""
	end
}
script 45 mmbn4s {
	"""
	セキュリティのかかった
	ミステリーデータを
	かいせきする
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
	今はまだ
	つかわないで おこうよ
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
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」を
	つかうよ?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	ロックマンのHPが
	50かいふくした!
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
	ロックマンのHPが
	かんぜんかいふくした!
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
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」を
	つかった
	"""
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
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」は
	つかってるよ?
	"""
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
	カギのかかった
	ミステリーデータが
	めのまえに ないよ!
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
	このエリアにきてから
	まだウイルスに
	であってないよ?
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがボクのステータスだよ"
	waitHold
}
script 61 mmbn4s {
	"アタック   LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 62 mmbn4s {
	"ラピッド   LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 63 mmbn4s {
	"チャージ   LV"
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
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"じゅしんかんりょう!"
	keyWait
		any = false
	waitHold
}
script 71 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	レアチップデータをじゅしん
	しましたが このチップは
	すでにもっています
	"""
	keyWait
		any = false
	clearMsg
	"""
	データのじゅしんは
	おこないません
	"""
	keyWait
		any = false
	waitHold
}
script 73 mmbn4s {
	"レギュラー容量 "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"[MB]"
	end
}
script 74 mmbn4s {
	"メガクラス枚数 "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"枚"
	end
}
script 75 mmbn4s {
	"ギガクラス枚数 "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"枚"
	end
}
script 76 mmbn4 {
	positionText
		left = 57
		top = 108
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
	そうびしていた フォルダを
	つかえなくなったよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	熱斗くんは よびフォルダを
	もってないから、
	このフォルダをあげるよ
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundPlay
		track = 115
	"""
	熱斗は、
	「
	"""
	printFolderName
		buffer = 0
		entry = 3
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"このフォルダに きりかえるよ"
	keyWait
		any = false
	waitHold
}
script 77 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"これがボクのステータスだよ\n"
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
	"レコードひょうじ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがボクのステータスだよ\n"
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
	"ナビカスタマイザーきどう\n"
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
	"レコードひょうじ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"レアチップをじゅしんしました\n"
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
	"データじゅしん\n"
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
	"やめておく"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがボクのステータスだよ\n"
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
	"ナビカスタマイザーきどう\n"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"改造カードをじゅしんしました\n"
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
	"改造じっこう\n"
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
	"やめておく"
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
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	データそうしんに
	しっぱいしました
	"""
	keyWait
		any = false
	waitHold
}
script 83 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"データそうしん中・・・"
	keyWait
		any = false
	waitHold
}
script 84 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	つうしんエラー!
	データじゅしんに
	しっぱいしました
	"""
	keyWait
		any = false
	waitHold
}
script 85 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"じゅしんかんりょう"
	keyWait
		any = false
	waitHold
}
script 86 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	"データうけいれまち"
	waitHold
}
script 87 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"データじゅしん中・・・"
	waitHold
}
script 88 mmbn4 {
	positionText
		left = 57
		top = 108
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
	そうびしていた フォルダを
	つかえないから
	よびフォルダに きりかえるね
	"""
	keyWait
		any = false
	waitHold
}
script 89 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"そうしんかんりょう"
	keyWait
		any = false
	waitHold
}
script 90 mmbn4 {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	あたらしいメールが
	きてるみたいだね
	"""
	waitHold
}
script 91 mmbn4 {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	熱斗くん、
	どのメールを よむの?
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
	熱斗くん、だれからも
	きてないよ・・・
	"""
	waitHold
}
script 93 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 94
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	このカードは
	ブルームーンせんようです
	じゅしんできません
	"""
	keyWait
		any = false
	waitHold
}
script 94 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	このカードは
	レッドサンせんようです
	じゅしんできません
	"""
	keyWait
		any = false
	waitHold
}
script 95 mmbn4 {
	positionText
		left = 102
		top = 108
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
	れんしゅうプログラムを
	きどうするね
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
	プログラミングを中止し
	メニュー画面にもどる?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	"RUN・・・"
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
	よっし!
	RUNかんりょう!
	"""
	keyWait
		any = false
	clearMsg
	"""
	かんじはどうだ、
	ロックマン!?
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
	うん、いじょうなし!
	さすがだね、熱斗くん!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビカスタマイザーを
	終了する?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	ん・・すこしヘンだけど
	だいじょうぶ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビカスタマイザーを
	終了する?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	"""
	プログラムをすべて
	はずす?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"改造をONにしました"
	waitHold
}
script 111 mmbn4s {
	"ON"
	end
}
script 112 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"改造をOFFにしました"
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
	"改造"
	end
}
script 120 mmbn4s {
	"スタンダードチップ"
	end
}
script 121 mmbn4s {
	"メガクラスチップ"
	end
}
script 122 mmbn4s {
	"ギガクラスチップ"
	end
}
script 123 mmbn4s {
	"P.Aメモ"
	end
}
script 124 mmbn4s {
	"   ??"
	end
}
script 125 mmbn4s {
	"シークレット"
	end
}
script 126 mmbn4 {
	"""
	やったね 熱斗くん!
	RSトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 127 mmbn4 {
	"""
	やったね 熱斗くん!
	RSトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 128 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	RSトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 129 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	RSトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 130 mmbn4 {
	"""
	やったね 熱斗くん!
	BMトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 131 mmbn4 {
	"""
	やったね 熱斗くん!
	BMトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 132 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	BMトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 133 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	BMトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 140 mmbn4s {
	"ためうち  チャージS"
	end
}
script 141 mmbn4s {
	"ためうち ヒートLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 142 mmbn4s {
	"ためうち アクアLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 143 mmbn4s {
	"ためうち エレキLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 144 mmbn4s {
	"ためうち ウッドLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 145 mmbn4s {
	"ためうち インビジブル"
	end
}
script 146 mmbn4s {
	"ためうち   キューブ"
	end
}
script 147 mmbn4s {
	"ためうち みずてっぽう"
	end
}
script 148 mmbn4s {
	"ためうち     はな"
	end
}
script 149 mmbn4s {
	"ためうち   かいぞう"
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
	"BMレコードは"
	printRecordName
		buffer = 4
		name = 0
	"の\n"
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
	" だよ\n"
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
	"もどる  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"きろくをけす"
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
	BMレコードは
	熱斗くんの
	
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
	" だね"
	keyWait
		any = false
	waitHold
}
script 154 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やったね 熱斗くん!
	RSトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 155 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ざんねんだったね 熱斗くん!
	RSトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 156 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やったね 熱斗くん!
	BMトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 157 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ざんねんだったね 熱斗くん!
	BMトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 158 mmbn4 {
	positionText
		left = 57
		top = 108
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
	けっちゃくが つかなかったね
	つぎこそは がんばって勝とう!
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
	"勝"
	end
}
script 160 mmbn4s {
	"      +"
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	"勝"
	end
}
script 161 mmbn4s {
	"VS BM しょうり数"
	end
}
script 162 mmbn4s {
	"VS RS しょうり数"
	end
}
script 163 mmbn4 {
	positionText
		left = 57
		top = 108
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
	おみごと 熱斗くん!
	さいこうのオペレーティング!
	もんくなしの しょうりだね!
	"""
	keyWait
		any = false
	waitHold
}
script 164 mmbn4 {
	positionText
		left = 57
		top = 108
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
	か・・かんぱいだね 熱斗くん
	あいてが わるすぎたよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 165 mmbn4 {
	positionText
		left = 57
		top = 108
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
	けっちゃくが つかなかったね
	つぎこそは がんばって勝とう!
	"""
	keyWait
		any = false
	waitHold
}
script 166 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"にげた"
	keyWait
		any = false
	waitHold
}
script 167 mmbn4 {
	positionText
		left = 57
		top = 108
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
	つうしんエラーだ・・・
	たいせんを 中止するね
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
	ともだちも「ナシ」だよ
	2人とも えらんじゃ
	ダメだよ
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
	あれ・・・ともだちと
	えらんでるモードがちがうよ?
	同じモードをえらんでね!
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
	"RSレコードは"
	printRecordName
		buffer = 4
		name = 0
	"の\n"
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
	" だよ\n"
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
	"もどる  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"きろくをけす"
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
	RSレコードは
	熱斗くんの
	
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
	" だね"
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
	"トレードかんりょう"
	keyWait
		any = false
	clearMsg
	"""
	だけど、今のこうかんに
	いみは あったのかな?
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
	つうしんエラーだ・・・
	トレードを 中止するね
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
	"トレードかんりょう!"
	keyWait
		any = false
	waitHold
}
script 176 mmbn4s {
	"せんたくちゅう"
	end
}
script 177 mmbn4s {
	"ナシ"
	end
}
script 178 mmbn4s {
	"たいせんせいせき"
	end
}
script 179 mmbn4s {
	"   "
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	"戦"
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	"勝"
	end
}
script 180 mmbn4s {
	"メニュー"
	end
}
script 181 mmbn4s {
	"ネットバトル"
	end
}
script 182 mmbn4s {
	"コンペア"
	end
}
script 183 mmbn4s {
	"トレード"
	end
}
script 184 mmbn4s {
	"ひかえしつ"
	end
}
script 185 mmbn4s {
	"シングルバトル"
	end
}
script 186 mmbn4s {
	"トリプルバトル"
	end
}
script 187 mmbn4s {
	"だいひょうせん"
	end
}
script 188 mmbn4s {
	"れんしゅう"
	end
}
script 189 mmbn4s {
	"ほんばん"
	end
}
script 190 mmbn4s {
	"ライブラリコンペア"
	end
}
script 191 mmbn4s {
	"レコードコンペア"
	end
}
script 192 mmbn4s {
	"バトルチップ"
	end
}
script 193 mmbn4s {
	"プログラム"
	end
}
script 194 mmbn4s {
	"うけつけ"
	end
}
script 195 mmbn4s {
	"えんせい"
	end
}
script 196 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"だれのエントリーをけすの?"
	waitHold
}
script 197 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがひかえしつにいるナビだよ\n"
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
	"エントリーをうけつける\n"
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
	"エントリーをけす"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	の
	エントリーをけすよ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと
	ネットバトルをするよ!
	"""
	waitHold
}
script 201 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちとデータをひかくして
	じょうほうを こうかんするよ!
	"""
	waitHold
}
script 202 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちとチップやプログラムの
	こうかんをするよ!
	"""
	waitHold
}
script 203 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	トーナメントのひかえしつに
	入るよ!
	"""
	waitHold
}
script 204 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	1回しょうぶのネットバトルだよ
	きがるにたたかえるのがいいね
	"""
	waitHold
}
script 205 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	3回しょうぶのネットバトルだよ
	さきに2勝した方のかちだからね
	"""
	waitHold
}
script 206 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	べつのトーナメントどうしで
	たたかう だいひょうせん!
	バトルは3本しょうぶだよ
	"""
	waitHold
}
script 207 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと データライブラリの
	じょうほうを こうかんするよ!
	"""
	waitHold
}
script 208 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと レコードタイムの
	じょうほうを こうかんするよ!
	"""
	waitHold
}
script 209 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと バトルチップの
	こうかんをするよ!
	"""
	waitHold
}
script 210 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと プログラムの
	こうかんをするよ!
	"""
	waitHold
}
script 211 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちのトーナメントから
	えんせいしてくるナビの
	さんかうけつけをするよ
	"""
	waitHold
}
script 212 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ソウルがきょうめいしたナビを
	ともだちのトーナメントに
	えんせいさせることができるよ
	"""
	waitHold
}
script 213 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	れんしゅうモード!
	チップのうばいあいはないから
	きがるに 戦えるよ!
	"""
	waitHold
}
script 214 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ほんばんモード!
	まけると チップを1枚とられる
	しんけんしょうぶだよ!
	"""
	waitHold
}
script 215 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちの方は
	まだ じゅんび中みたい・・・
	ちょっとまってね
	"""
	waitHold
}
script 216 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"ライブラリをコンペア!"
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
		left = 57
		top = 108
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
	つうしんエラーだ・・・
	もういちど やりなおしてみてよ
	"""
	waitHold
}
script 218 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	データライブラリにあたらしい
	データがとうろくされたよ!
	"""
	waitHold
}
script 219 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	とくにあたらしいデータは
	えられなかったよ・・・
	"""
	waitHold
}
script 220 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	あれ・・・ともだちと
	えらんでるモードがちがうよ?
	同じモードをえらんでね!
	"""
	waitHold
}
script 221 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ともだちの方はべつの
	トーナメントだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	コンペアは同じトーナメント
	でないとできないよ
	"""
	waitHold
}
script 222 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"レコードをコンペア!"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"レコードがこうしんされたよ!"
	waitHold
}
script 224 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	レコードのこうしんは
	されなかったよ・・・
	"""
	waitHold
}
script 225 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	バトルチップトレードがめんを
	きどうするね
	"""
	waitHold
}
script 226 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	プログラムトレードがめんを
	きどうするね
	"""
	waitHold
}
script 227 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	リュックの中に
	ギガクラスいがいのチップが
	1枚もないよ
	"""
	waitHold
}
script 228 mmbn4 {
	positionText
		left = 57
		top = 108
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
	えんせいしてくれるような
	ソウルのひびきあう なかまが
	ボクには まだいないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 229 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"うけつけ画面に入るね"
	waitHold
}
script 230 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"えんせい画面に入るね"
	waitHold
}
script 231 mmbn4 {
	positionText
		left = 57
		top = 108
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
	printEnemy
		buffer = 1
		enemy = 0
	printShortString
		bufferOffset = 1
	"""
	の
	エントリーをけしたよ
	"""
	keyWait
		any = false
	waitHold
}
script 232 mmbn4 {
	positionText
		left = 57
		top = 108
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
	そのナビはボクらといっしょに
	トーナメントにさんか中みたい
	"""
	keyWait
		any = false
	clearMsg
	"""
	エントリーをけすことは
	できないよ
	"""
	keyWait
		any = false
	waitHold
}
script 233 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"エントリーデータじゅしんちゅう"
	waitHold
}
script 234 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printEnemy
		buffer = 2
		enemy = 0
	printBufferedShortString
		bufferOffset = 0
	"""
	のエントリー
	をうけつけていいかな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
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
	あれ・・・?
	じゅしんに しっぱいしたみたい
	"""
	keyWait
		any = false
	waitHold
}
script 236 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"どのナビをおくりこむ?"
	waitHold
}
script 237 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 0
		name = 0
	"""
	を
	おくりこむよ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	そうしんを 中止したよ
	もういちど やってみる?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"エントリーデータそうしんちゅう"
	waitHold
}
script 240 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"そうしんかんりょう!"
	keyWait
		any = false
	waitHold
}
script 241 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"エントリーかんりょう!"
	keyWait
		any = false
	waitHold
}
script 242 mmbn4 {
	positionText
		left = 57
		top = 108
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
	同じしゅるいのナビは
	2人までしかエントリー
	できないよ
	"""
	keyWait
		any = false
	waitHold
}
script 243 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	今、ひかえしつの中は
	いっぱいだよ
	だれのところにうわがきする?
	"""
	waitHold
}
script 244 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"同じナビがすでにいるよ"
	keyWait
		any = false
	waitHold
}
script 245 mmbn4 {
	positionText
		left = 57
		top = 108
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
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	のところに
	うわがきするよ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちのほうはチップが
	足りなかったみたい
	たいせんを 中止するね
	"""
	waitHold
}
script 247 mmbn4 {
	"""
	やったね 熱斗くん!
	なんとか 勝てたものの
	てごわいあいてだったね・・・
	"""
	keyWait
		any = false
	waitHold
}
script 248 mmbn4 {
	"""
	やったね 熱斗くん!
	ナイスオペレーティングだったよ
	"""
	keyWait
		any = false
	waitHold
}
script 249 mmbn4 {
	"""
	おしかったね 熱斗くん・・
	つぎこそは 勝とうね!
	"""
	keyWait
		any = false
	waitHold
}
script 250 mmbn4 {
	"""
	ざんねんだったね 熱斗くん・・
	ボクも もっと がんばらなきゃ
	"""
	keyWait
		any = false
	waitHold
}
script 251 mmbn4 {
	positionText
		left = 57
		top = 108
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
	同じトーナメントどうしでは
	たたかえないよ
	"""
	waitHold
}
@archive 6E054C
@size 255

script 0 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"セーブシマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	clearMsg
	"""
	スデニアル セーブデータ ニ
	ウワガキシマスガ イイデスカ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"セーブ ニ シッパイシマシタ"
	keyWait
		any = false
	clearMsg
	"モウチド セーブシマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 67,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"セーブガ カンリョウシマシタ!"
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	データガ フセイニ
	カキカエラレテイテ
	セーブスルコトガ デキマセン
	"""
	keyWait
		any = false
	clearMsg
	"モウイチド セーブシマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	データガ フセイニ
	カキカエラレテイテ
	セーブスルコトガ デキマセン
	"""
	keyWait
		any = false
	clearMsg
	"モウイチド セーブシマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	"プレイジカン"
	end
}
script 7 mmbn4s {
	"データライブラリ"
	end
}
script 8 mmbn4s {
	"バトルチップ"
	end
}
script 9 mmbn4s {
	"クレジット"
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
	"枚"
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
	ざんねんだったね、熱斗くん・・・
	このあとのしあいもみておく?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	やったね熱斗くん!
	フリートーナメントゆうしょう
	だよ!
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
	見ごたえのあるしあいだったね
	ボクらもまたちょうせんしよう!
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
	おしかったね熱斗くん
	こんどこそゆうしょうしよう!
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"ドウシマスカ?\n"
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
	"フォルダヲ ヘンシュウ\n"
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
	"フォルダヲ ソウビ"
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
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	printFolderName
		buffer = 1
		entry = 0
	"""
	ヲ
	ソウビシマシタ
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
	"""
	チップフォルダガ
	30マイニナッテマセン
	"""
	keyWait
		any = false
	clearMsg
	"""
	ヘンシュウヲ
	ヤメマスカ?
	
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
	"ハイ  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"イイエ"
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
	"""
	オナジ チップハ
	4マイマデ デス
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
	"""
	オナジ
	メガクラスチップ ハ
	1マイシカハイリマセン
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
	"""
	オナジ
	ギガクラスチップ ハ
	1マイシカハイリマセン
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
	"メガクラスチップ ハ\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"マイマデデス"
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
	"ギガクラスチップハ\n"
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"マイマデデス"
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
	"""
	レギュラーヨウリョウガ
	タリマセン
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ドウシマスカ?\n"
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"フォルダヲ ソウビスル\n"
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
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	ヨビフォルダガ ロック
	サレテイテ、ソウビヲ
	ヘンコウデキマセン
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	イマノ ジョウタイデハ
	ソノ フォルダハ
	アツカエマセン
	"""
	keyWait
		any = false
	clearMsg
	"""
	フォルダヲ ヘンシュウ
	シナオシテ
	ソウビシテクダサイ
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	"ドウシマスカ?\n"
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
	"フォルダヲ ヘンシュウ\n"
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
	"HPを50かいふく!"
	end
}
script 41 mmbn4s {
	"""
	HPをマックスまで
	かいふく!
	"""
	end
}
script 42 mmbn4s {
	"""
	しばらくのあいだ
	よわいウイルスと
	であわなくなる
	"""
	end
}
script 43 mmbn4s {
	"""
	ミステリーデータに
	かかったワナをはずす
	"""
	end
}
script 44 mmbn4s {
	"""
	ちょくぜんに であった
	テキと、もういちど
	であいやすくなる
	"""
	end
}
script 45 mmbn4s {
	"""
	セキュリティのかかった
	ミステリーデータを
	かいせきする
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
	"""
	イマハ マダ
	ツカウヒツヨウハ
	アリマセン
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
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」を
	つかうよ?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	ロックマンのHPが
	かいふくした!
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
	ロックマンのHPが
	かんぜんかいふくした!
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
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」を
	つかった
	"""
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
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」は
	つかってるよ?
	"""
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
	"""
	カギのかかった
	ミステリーデータが
	めのまえに ないよ!
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
	"""
	このエリアにきてから
	まだウイルスに
	であってないよ?
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがボクのステータスだよ"
	waitHold
}
script 61 mmbn4s {
	"アタック   LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 62 mmbn4s {
	"ラピッド   LV"
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 63 mmbn4s {
	"チャージ   LV"
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
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"じゅしんかんりょう!"
	keyWait
		any = false
	waitHold
}
script 71 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	レアチップデータをじゅしん
	しましたが このチップは
	すでにもっています
	"""
	keyWait
		any = false
	clearMsg
	"""
	データのじゅしんは
	おこないません
	"""
	keyWait
		any = false
	waitHold
}
script 73 mmbn4s {
	"レギュラー容量 "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"[MB]"
	end
}
script 74 mmbn4s {
	"メガクラス枚数 "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"枚"
	end
}
script 75 mmbn4s {
	"ギガクラス枚数 "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"枚"
	end
}
script 76 mmbn4 {
	positionText
		left = 57
		top = 108
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
	そうびしていた フォルダを
	つかえなくなったよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	熱斗くんはよびフォルダを
	もってないから、
	このフォルダをあげるよ
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundPlay
		track = 115
	"""
	熱斗は、
	「
	"""
	printFolderName
		buffer = 0
		entry = 3
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"このフォルダに きりかえるよ"
	keyWait
		any = false
	waitHold
}
script 77 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"これがボクのステータスだよ\n"
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
	"レコードひょうじ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがボクのステータスだよ\n"
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
	"ナビカスタマイザーきどう\n"
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
	"レコードひょうじ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"レアチップをじゅしんしました\n"
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
	"データじゅしん\n"
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
	"やめておく"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがボクのステータスだよ\n"
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"ナビカスタマイザーきどう\n"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"改造カードをじゅしんしました\n"
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
	"改造じっこう\n"
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
	"やめておく"
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
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	データそうしんに
	しっぱいしました
	"""
	keyWait
		any = false
	waitHold
}
script 83 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"データそうしん中・・・"
	keyWait
		any = false
	waitHold
}
script 84 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	つうしんエラー!
	データじゅしんに
	しっぱいしました
	"""
	keyWait
		any = false
	waitHold
}
script 85 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"じゅしんかんりょう"
	keyWait
		any = false
	waitHold
}
script 86 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	"データうけいれまち"
	waitHold
}
script 87 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"データじゅしん中・・・"
	waitHold
}
script 88 mmbn4 {
	positionText
		left = 57
		top = 108
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
	そうびしていた フォルダを
	つかえないから
	よびフォルダに きりかえるね
	"""
	keyWait
		any = false
	waitHold
}
script 89 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"そうしんかんりょう"
	keyWait
		any = false
	waitHold
}
script 90 mmbn4 {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	アタラシイ メールガ
	キテイマス
	"""
	waitHold
}
script 91 mmbn4 {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ドノメールヲ
	ヨミマスカ?
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
	"""
	ダレカラモ
	キテイマセン
	"""
	waitHold
}
script 93 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 94
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	このカードは
	ブルームーンせんようです
	じゅしんできません
	"""
	keyWait
		any = false
	waitHold
}
script 94 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	このカードは
	レッドサンせんようです
	じゅしんできません
	"""
	keyWait
		any = false
	waitHold
}
script 95 mmbn4 {
	positionText
		left = 102
		top = 108
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
	チュートリアルを
	きどうするね
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
	プログラミングを中止し
	メニュー画面にもどる?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	"RUN・・・"
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
	textSpeed
		delay = 0
	"""
	よっし!
	RUNかんりょう!
	"""
	keyWait
		any = false
	clearMsg
	"""
	かんじはどうだ、
	ロックマン!?
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
	うん、いじょうなし!
	さすがだね、熱斗くん!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビカスタマイザーを
	終了する?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	ん・・すこしヘンだけど
	だいじょうぶ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビカスタマイザーを
	終了する?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	"""
	プログラムをすべて
	はずす?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"改造をONにしました"
	waitHold
}
script 111 mmbn4s {
	"ON"
	end
}
script 112 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"改造をOFFにしました"
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
	"改造"
	end
}
script 120 mmbn4s {
	"スタンダードチップ"
	end
}
script 121 mmbn4s {
	"メガクラスチップ"
	end
}
script 122 mmbn4s {
	"ギガクラスチップ"
	end
}
script 123 mmbn4s {
	"P.Aメモ"
	end
}
script 124 mmbn4s {
	"   ??"
	end
}
script 125 mmbn4s {
	"シークレット"
	end
}
script 126 mmbn4 {
	"""
	やったね 熱斗くん!
	RSトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 127 mmbn4 {
	"""
	やったね 熱斗くん!
	RSトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 128 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	RSトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 129 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	RSトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 130 mmbn4 {
	"""
	やったね 熱斗くん!
	BMトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 131 mmbn4 {
	"""
	やったね 熱斗くん!
	BMトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 132 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	BMトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 133 mmbn4 {
	"""
	ざんねんだったね 熱斗くん!
	BMトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 140 mmbn4s {
	"ためうち  チャージS"
	end
}
script 141 mmbn4s {
	"ためうち ヒートLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 142 mmbn4s {
	"ためうち アクアLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 143 mmbn4s {
	"ためうち エレキLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 144 mmbn4s {
	"ためうち ウッドLV"
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 145 mmbn4s {
	"ためうち インビジブル"
	end
}
script 146 mmbn4s {
	"ためうち   キューブ"
	end
}
script 147 mmbn4s {
	"ためうち みずてっぽう"
	end
}
script 148 mmbn4s {
	"ためうち     はな"
	end
}
script 149 mmbn4s {
	"ためうち   かいぞう"
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
	"BMレコードは"
	printRecordName
		buffer = 4
		name = 0
	"の\n"
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
	" だよ\n"
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
	"もどる  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"きろくをけす"
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
	BMレコードは
	熱斗くんの
	
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
	" だね"
	keyWait
		any = false
	waitHold
}
script 154 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やったね 熱斗くん!
	RSトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 155 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ざんねんだったね 熱斗くん!
	RSトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 156 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やったね 熱斗くん!
	BMトーナメントのレベルの
	たかさをしめすことができたね
	"""
	keyWait
		any = false
	waitHold
}
script 157 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ざんねんだったね 熱斗くん!
	BMトーナメントのなかまたちに
	もうしわけがたたないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 158 mmbn4 {
	positionText
		left = 57
		top = 108
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
	けっちゃくが つかなかったね
	つぎこそは がんばって勝とう!
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
	"勝"
	end
}
script 160 mmbn4s {
	"      +"
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	"勝"
	end
}
script 161 mmbn4s {
	"VS BM しょうり数"
	end
}
script 162 mmbn4s {
	"VS RS しょうり数"
	end
}
script 163 mmbn4 {
	positionText
		left = 57
		top = 108
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
	おみごと 熱斗くん!
	さいこうのオペレーティング!
	もんくなしの しょうりだね!
	"""
	keyWait
		any = false
	waitHold
}
script 164 mmbn4 {
	positionText
		left = 57
		top = 108
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
	か・・かんぱいだね 熱斗くん
	あいてが わるすぎたよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 165 mmbn4 {
	positionText
		left = 57
		top = 108
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
	けっちゃくが つかなかったね
	つぎこそは がんばって勝とう!
	"""
	keyWait
		any = false
	waitHold
}
script 166 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"にげた"
	keyWait
		any = false
	waitHold
}
script 167 mmbn4 {
	positionText
		left = 57
		top = 108
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
	つうしんエラーだ・・・
	たいせんを 中止するね
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
	ともだちも「ナシ」だよ
	2人とも えらんじゃ
	ダメだよ
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
	あれ・・・ともだちと
	えらんでるモードがちがうよ?
	同じモードをえらんでね!
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
	"RSレコードは"
	printRecordName
		buffer = 4
		name = 0
	"の\n"
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
	" だよ\n"
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
	"もどる  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"きろくをけす"
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
	RSレコードは
	熱斗くんの
	
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
	" だね"
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
	"トレードかんりょう"
	keyWait
		any = false
	clearMsg
	"""
	だけど、今のこうかんに
	いみは あったのかな?
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
	つうしんエラーだ・・・
	トレードを 中止するね
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
	"トレードかんりょう!"
	keyWait
		any = false
	waitHold
}
script 176 mmbn4s {
	"せんたくちゅう"
	end
}
script 177 mmbn4s {
	"ナシ"
	end
}
script 178 mmbn4s {
	"たいせんせいせき"
	end
}
script 179 mmbn4s {
	"   "
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	"戦"
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	"勝"
	end
}
script 180 mmbn4s {
	"メニュー"
	end
}
script 181 mmbn4s {
	"ネットバトル"
	end
}
script 182 mmbn4s {
	"コンペア"
	end
}
script 183 mmbn4s {
	"トレード"
	end
}
script 184 mmbn4s {
	"ひかえしつ"
	end
}
script 185 mmbn4s {
	"シングルバトル"
	end
}
script 186 mmbn4s {
	"トリプルバトル"
	end
}
script 187 mmbn4s {
	"だいひょうせん"
	end
}
script 188 mmbn4s {
	"れんしゅう"
	end
}
script 189 mmbn4s {
	"ほんばん"
	end
}
script 190 mmbn4s {
	"ライブラリコンペア"
	end
}
script 191 mmbn4s {
	"レコードコンペア"
	end
}
script 192 mmbn4s {
	"バトルチップ"
	end
}
script 193 mmbn4s {
	"プログラム"
	end
}
script 194 mmbn4s {
	"うけつけ"
	end
}
script 195 mmbn4s {
	"えんせい"
	end
}
script 196 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"だれのエントリーをけすの?"
	waitHold
}
script 197 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"これがひかえしつにいるナビだよ\n"
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
	"エントリーをうけつける\n"
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
	"エントリーをけす"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	の
	エントリーをけすよ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと
	ネットバトルをするよ!
	"""
	waitHold
}
script 201 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちとデータをひかくして
	じょうほうを こうかんするよ!
	"""
	waitHold
}
script 202 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちとチップやプログラムの
	こうかんをするよ!
	"""
	waitHold
}
script 203 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	トーナメントのひかえしつに
	入るよ!
	"""
	waitHold
}
script 204 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	1回しょうぶのネットバトルだよ
	きがるにたたかえるのがいいね
	"""
	waitHold
}
script 205 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	3回しょうぶのネットバトルだよ
	さきに2勝した方のかちだからね
	"""
	waitHold
}
script 206 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	べつのトーナメントどうしで
	たたかう だいひょうせん!
	バトルは3本しょうぶだよ
	"""
	waitHold
}
script 207 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと データライブラリの
	じょうほうを こうかんするよ!
	"""
	waitHold
}
script 208 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと レコードタイムの
	じょうほうを こうかんするよ!
	"""
	waitHold
}
script 209 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと バトルチップの
	こうかんをするよ!
	"""
	waitHold
}
script 210 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちと プログラムの
	こうかんをするよ!
	"""
	waitHold
}
script 211 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちのトーナメントから
	えんせいしてくるナビの
	さんかうけつけをするよ
	"""
	waitHold
}
script 212 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ソウルがきょうめいしたナビを
	ともだちのトーナメントに
	えんせいさせることができるよ
	"""
	waitHold
}
script 213 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	れんしゅうモード!
	チップのうばいあいはないから
	きがるに 戦えるよ!
	"""
	waitHold
}
script 214 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ほんばんモード!
	まけると チップを1枚とられる
	しんけんしょうぶだよ!
	"""
	waitHold
}
script 215 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちの方は
	まだ じゅんび中みたい・・・
	ちょっとまってね
	"""
	waitHold
}
script 216 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"ライブラリをコンペア!"
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
		left = 57
		top = 108
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
	つうしんエラーだ・・・
	もういちど やりなおしてみてよ
	"""
	waitHold
}
script 218 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	データライブラリにあたらしい
	データがとうろくされたよ!
	"""
	waitHold
}
script 219 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	とくにあたらしいデータは
	えられなかったよ・・・
	"""
	waitHold
}
script 220 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	あれ・・・ともだちと
	えらんでるモードがちがうよ?
	同じモードをえらんでね!
	"""
	waitHold
}
script 221 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ともだちの方はべつの
	トーナメントだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	コンペアは同じトーナメント
	でないとできないよ
	"""
	waitHold
}
script 222 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"レコードをコンペア!"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"レコードがこうしんされたよ"
	waitHold
}
script 224 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	レコードのこうしんは
	されなかったよ・・・
	"""
	waitHold
}
script 225 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	バトルチップトレードがめんを
	きどうするね
	"""
	waitHold
}
script 226 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	プログラムトレードがめんを
	きどうするね
	"""
	waitHold
}
script 227 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	リュックの中に
	ギガクラスいがいのチップが
	1枚もないよ
	"""
	waitHold
}
script 228 mmbn4 {
	positionText
		left = 57
		top = 108
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
	えんせいしてくれるような
	ソウルのひびきあう なかまが
	ボクには まだいないよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 229 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"うけつけ画面に入るね"
	waitHold
}
script 230 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"えんせい画面に入るね"
	waitHold
}
script 231 mmbn4 {
	positionText
		left = 57
		top = 108
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
	printEnemy
		buffer = 1
		enemy = 0
	printShortString
		bufferOffset = 1
	"""
	の
	エントリーをけしたよ
	"""
	keyWait
		any = false
	waitHold
}
script 232 mmbn4 {
	positionText
		left = 57
		top = 108
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
	そのナビはボクらといっしょに
	トーナメントにさんか中みたい
	"""
	keyWait
		any = false
	clearMsg
	"""
	エントリーをけすことは
	できないよ
	"""
	keyWait
		any = false
	waitHold
}
script 233 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"エントリーデータじゅしんちゅう"
	waitHold
}
script 234 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printEnemy
		buffer = 2
		enemy = 0
	printBufferedShortString
		bufferOffset = 0
	"""
	のエントリー
	をうけつけていいかな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
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
	あれ・・・?
	じゅしんに しっぱいしたみたい
	"""
	keyWait
		any = false
	waitHold
}
script 236 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"どのナビをおくりこむ?"
	waitHold
}
script 237 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 0
		name = 0
	"""
	を
	おくりこむよ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	そうしんを 中止したよ
	もういちど やってみる?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"エントリーデータそうしんちゅう"
	waitHold
}
script 240 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"そうしんかんりょう!"
	keyWait
		any = false
	waitHold
}
script 241 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"エントリーかんりょう!"
	keyWait
		any = false
	waitHold
}
script 242 mmbn4 {
	positionText
		left = 57
		top = 108
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
	同じしゅるいのナビは
	2人までしかエントリー
	できないよ
	"""
	keyWait
		any = false
	waitHold
}
script 243 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	今、ひかえしつの中は
	いっぱいだよ
	だれのところにうわがきする?
	"""
	waitHold
}
script 244 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"同じナビがすでにいるよ"
	keyWait
		any = false
	waitHold
}
script 245 mmbn4 {
	positionText
		left = 57
		top = 108
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
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	のところに
	うわがきするよ?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	ともだちのほうはチップが
	足りなかったみたい
	たいせんを 中止するね
	"""
	waitHold
}
script 247 mmbn4 {
	"""
	やったね 熱斗くん!
	なんとか 勝てたものの
	てごわいあいてだったね・・・
	"""
	keyWait
		any = false
	waitHold
}
script 248 mmbn4 {
	"""
	やったね 熱斗くん!
	ナイスオペレーティングだったよ
	"""
	keyWait
		any = false
	waitHold
}
script 249 mmbn4 {
	"""
	おしかったね 熱斗くん・・
	つぎこそは 勝とうね!
	"""
	keyWait
		any = false
	waitHold
}
script 250 mmbn4 {
	"""
	ざんねんだったね 熱斗くん・・
	ボクも もっと がんばらなきゃ
	"""
	keyWait
		any = false
	waitHold
}
script 251 mmbn4 {
	positionText
		left = 57
		top = 108
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
	同じトーナメントどうしでは
	たたかえないよ
	"""
	waitHold
}
@archive 6E2858
@size 20

script 0 mmbn4s {
	"トレーニング"
	end
}
script 1 mmbn4s {
	"つうしんたいせん"
	end
}
script 2 mmbn4s {
	"せつめい"
	end
}
script 3 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	1人ようのれんしゅうモードだ
	ナビたちとのれんぞくバトルを
	かちぬこう!
	"""
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	つうしんたいせんモードだ
	ともだちのナビと はくねつの
	オペレーションバトル!
	"""
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	この名人 みずからが
	オペレーションバトルについての
	せつめいをしてあげるぞ!
	"""
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	おっと・・・
	つうしんエラーのようだ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	今 つうしんじょうたいを
	せいり しているところなんだ
	ちょっと まってくれたまえ
	"""
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	みごと トレーニングクリアだ!
	つぎはぜひ ともだちとの
	つうしんたいせんにいどむべし!
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	ざんねんだったな・・・しかし!
	あきらめずにトライしてくれ!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	このモードは一人で
	あそぶモードなんだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	つうしんケーブルをぬいてから
	えらんでくれたまえ!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	まだナビのデータが
	トランスミッション
	されていないぞ
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	ともだちの方は
	まだ じゅんび中みたいだね
	ちょっとまってくれたまえ
	"""
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	やったな!
	ナイスオペレーションだったぞ!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	ざんねんだったな・・・しかし!
	あきらめずにトライしてくれ!
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	オペレーションバトルへようこそ
	ナビデータチップをさしてナビを
	トランスミッションしてくれ!
	"""
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	オペレーションバトルとは
	ナビに しじをだしながら
	チップをおくって たたかう・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	まさにオペレーターのたちばで
	バトルをするモードなんだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビは きほんてきに
	じどうで こうどうしてくれるが
	"""
	keyWait
		any = false
	clearMsg
	"""
	十字ボタンの左右で
	ナビを前後にゆうどうできるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに
	十字ボタン下で作戦へんこう
	上でそうびのへんこう ができる
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただし ナビとの こうしん中は
	カスタムゲージがへっていくから
	すばやく かつ てきかくにな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	カスタムゲージがたまったら
	チップをスロットイン!
	ナビにチップがてんそうされる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただしゲージのたまりぐあいで
	つかえるチップはちがうんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゲージがきいろまで たまれば
	スタンダードチップ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゲージがあおいろまで たまれば
	メガクラスチップ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゲージがあかいろまで たまれば
	ギガクラスチップが
	スロットインできるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただしチップごとに つかえる
	かいすうが きまっているから
	つかいどころをかんがえるんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	カスタムゲージはじかんで
	たまっていくが ダメージを
	うけると へってしまう・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	うまくナビをコントロールして
	ゲージをためていくことが
	しょうりへの ちかみちだな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいごに Lボタンのきのうだが
	・・・これについてはヒミツだ
	キミの手でさぐってみてくれ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	名人からのせつめいはいじょうだ
	けんとうを いのっているぞ!
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	おっと・・・
	つうしんエラーのようだ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	チップゲートのせつぞくを
	かくにんしてくれたまえ
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 18,
			jump = continue
		]
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"チップゲートがささってないぞ!"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	チップゲートのせつぞくを
	かくにんしてくれたまえ
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 18,
			jump = continue
		]
	waitHold
}
@archive 6E2CCC
@size 136

script 134 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"すべての改造をOFF"
	waitHold
}
script 135 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"すべての改造をON"
	waitHold
}
@archive 6E2D18
@size 11

script 0 mmbn4s {
	"フォルダ1"
	end
}
script 1 mmbn4s {
	"フォルダ2"
	end
}
script 2 mmbn4s {
	"ヘッポコフォルダ"
	end
}
script 3 mmbn4s {
	"オマケフォルダ"
	end
}
script 4 mmbn4s {
	"ミナライフォルダ"
	end
}
script 5 mmbn4s {
	"メイジンフォルダ"
	end
}
script 6 mmbn4s {
	"ヘッポコフォルダ"
	end
}
script 7 mmbn4s {
	"ヘッポコフォルダ"
	end
}
script 10 mmbn4s {
	"リュック"
	end
}
@archive 6E2D74
@size 102

script 0 mmbn4s {
	"パパ______"
	end
}
script 1 mmbn4s {
	"熱斗______"
	end
}
script 2 mmbn4s {
	"ソウルユニゾン"
	end
}
script 3 mmbn4s {
	"________"
	end
}
script 4 mmbn4s {
	"光熱斗_____"
	end
}
script 5 mmbn4s {
	"チサオはあずかった"
	end
}
script 6 mmbn4s {
	"チサオ_____"
	end
}
script 7 mmbn4s {
	"熱斗くん____"
	end
}
script 8 mmbn4s {
	"たちゅけて"
	end
}
script 9 mmbn4s {
	"ジョーモン電気_"
	end
}
script 10 mmbn4s {
	"光熱斗さま___"
	end
}
script 11 mmbn4s {
	"PETのメンテナンス"
	end
}
script 12 mmbn4s {
	"デンサンめるまが"
	end
}
script 13 mmbn4s {
	"光熱斗さま___"
	end
}
script 14 mmbn4s {
	"今日のうんせい!!"
	end
}
script 15 mmbn4s {
	"NNBきょうかい_"
	end
}
script 16 mmbn4s {
	"光熱斗さま____"
	end
}
script 17 mmbn4s {
	"おしらせ"
	end
}
script 18 mmbn4s {
	"ママ_______"
	end
}
script 19 mmbn4s {
	"熱斗_______"
	end
}
script 20 mmbn4s {
	"かえってらっしゃい"
	end
}
script 21 mmbn4s {
	"WNBきょうかい_"
	end
}
script 22 mmbn4s {
	"光熱斗さま____"
	end
}
script 23 mmbn4s {
	"まちあわせばしょ"
	end
}
script 24 mmbn4s {
	"ロール______"
	end
}
script 25 mmbn4s {
	"光熱斗______"
	end
}
script 26 mmbn4s {
	"ちょうせんじょう"
	end
}
script 27 mmbn4s {
	"デンサンニュース_"
	end
}
script 28 mmbn4s {
	"秋原ML_____"
	end
}
script 29 mmbn4s {
	"ウイルスチェック"
	end
}
script 30 mmbn4s {
	"サロマ_"
	end
}
script 31 mmbn4s {
	"光熱斗______"
	end
}
script 32 mmbn4s {
	"おひさしぶりです"
	end
}
script 33 mmbn4s {
	"サロマ_"
	end
}
script 34 mmbn4s {
	"光熱斗______"
	end
}
script 35 mmbn4s {
	"チカラをかしてください"
	end
}
script 36 mmbn4s {
	"パパ_______"
	end
}
script 37 mmbn4s {
	"熱斗_______"
	end
}
script 38 mmbn4s {
	"ナビカスタマイザー"
	end
}
script 39 mmbn4s {
	"ママ_______"
	end
}
script 40 mmbn4s {
	"熱斗_______"
	end
}
script 41 mmbn4s {
	"どうしたらいいの!?"
	end
}
script 42 mmbn4s {
	"ジャック・ボマー_"
	end
}
script 43 mmbn4s {
	"光熱斗______"
	end
}
script 44 mmbn4s {
	"よういができたらきな!"
	end
}
script 45 mmbn4s {
	"Cマスター____"
	end
}
script 46 mmbn4s {
	"光熱斗______"
	end
}
script 47 mmbn4s {
	"おこまりのようだな"
	end
}
script 48 mmbn4s {
	"パパ_______"
	end
}
script 49 mmbn4s {
	"熱斗_______"
	end
}
script 50 mmbn4s {
	"ガッツソウル"
	end
}
script 51 mmbn4s {
	"パパ_______"
	end
}
script 52 mmbn4s {
	"熱斗_______"
	end
}
script 53 mmbn4s {
	"ファイアソウル"
	end
}
script 54 mmbn4s {
	"パパ_______"
	end
}
script 55 mmbn4s {
	"熱斗_______"
	end
}
script 56 mmbn4s {
	"ロールソウル"
	end
}
script 57 mmbn4s {
	"パパ_______"
	end
}
script 58 mmbn4s {
	"熱斗_______"
	end
}
script 59 mmbn4s {
	"ウインドソウル"
	end
}
script 60 mmbn4s {
	"パパ_______"
	end
}
script 61 mmbn4s {
	"熱斗_______"
	end
}
script 62 mmbn4s {
	"サンダーソウル"
	end
}
script 63 mmbn4s {
	"パパ_______"
	end
}
script 64 mmbn4s {
	"熱斗_______"
	end
}
script 65 mmbn4s {
	"サーチソウル"
	end
}
script 66 mmbn4s {
	"パパ_______"
	end
}
script 67 mmbn4s {
	"熱斗_______"
	end
}
script 68 mmbn4s {
	"アクアソウル"
	end
}
script 69 mmbn4s {
	"パパ_______"
	end
}
script 70 mmbn4s {
	"熱斗_______"
	end
}
script 71 mmbn4s {
	"ナンバーソウル"
	end
}
script 72 mmbn4s {
	"パパ_______"
	end
}
script 73 mmbn4s {
	"熱斗_______"
	end
}
script 74 mmbn4s {
	"ウッドソウル"
	end
}
script 75 mmbn4s {
	"パパ_______"
	end
}
script 76 mmbn4s {
	"熱斗_______"
	end
}
script 77 mmbn4s {
	"メタルソウル"
	end
}
script 78 mmbn4s {
	"パパ_______"
	end
}
script 79 mmbn4s {
	"熱斗_______"
	end
}
script 80 mmbn4s {
	"ジャンクソウル"
	end
}
script 81 mmbn4s {
	"パパ_______"
	end
}
script 82 mmbn4s {
	"熱斗_______"
	end
}
script 83 mmbn4s {
	"ブルースソウル"
	end
}
script 84 mmbn4s {
	"伊集院炎山____"
	end
}
script 85 mmbn4s {
	"光熱斗______"
	end
}
script 86 mmbn4s {
	"ウラだ"
	end
}
script 87 mmbn4s {
	"きしょうだい___"
	end
}
script 88 mmbn4s {
	"せんしゅかくい__"
	end
}
script 89 mmbn4s {
	"いじょうきしょう"
	end
}
script 90 mmbn4s {
	"やいと______"
	end
}
script 91 mmbn4s {
	"光くん______"
	end
}
script 92 mmbn4s {
	"たのんだわよ!"
	end
}
script 93 mmbn4s {
	"デカオ______"
	end
}
script 94 mmbn4s {
	"熱斗_______"
	end
}
script 95 mmbn4s {
	"さすがだぜ!"
	end
}
script 96 mmbn4s {
	"ジョーモン電気__"
	end
}
script 97 mmbn4s {
	"光熱斗さま____"
	end
}
script 98 mmbn4s {
	"おしらせ"
	end
}
script 99 mmbn4s {
	"ARPホテル___"
	end
}
script 100 mmbn4s {
	"光熱斗さま____"
	end
}
script 101 mmbn4s {
	"おきゃくさまかくい"
	end
}
@archive 6E305C
@size 101

script 0 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ロックマンが あたらしい
	チカラを 手にいれたようだな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ロックマンのたましい、
	すなわちソウルが ほかのナビの
	ソウルに きょうめいし、
	"""
	keyWait
		any = false
	clearMsg
	"""
	きょうめいしたナビの ソウルと
	ロックマンのソウルが
	まじわることで、
	"""
	keyWait
		any = false
	clearMsg
	"""
	そのナビの チカラを
	一時てきに じぶんのものに
	できるのうりょく
	"""
	keyWait
		any = false
	clearMsg
	"・・・ソウルユニゾン!"
	keyWait
		any = false
	clearMsg
	"""
	れんしゅうようプログラムを
	てんぷしたから、
	ちょっと、れんしゅうしてみろ
	"""
	keyWait
		any = false
	flagSet
		flag = 157
	flagSet
		flag = 869
	end
}
script 1 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	チサオは あずかった
	かえしてほしくば、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワタシの ちょうせんを
	うけてもらう
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワタシの いどころを見つける
	ヒントを いくつか よういした
	"""
	keyWait
		any = false
	clearMsg
	"""
	そのヒントを もとに
	ワタシを 見つけてみろ
	"""
	keyWait
		any = false
	clearMsg
	"""
	それが できなかったばあいは
	チサオのイノチは・・・ない
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただし、じょうけんがある
	このちょうせんを うけるのは
	光熱斗だ
	"""
	keyWait
		any = false
	clearMsg
	"""
	それいがいの人間が
	ジャマを すると
	ひとじちの イノチはない
	"""
	keyWait
		any = false
	clearMsg
	"""
	まず、さいしょの ヒントは
	コレだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	きさおにひ
	きんじいろ
	なにいるば
	"""
	keyWait
		any = false
	clearMsg
	"こくごの きょうかしょ"
	keyWait
		any = false
	clearMsg
	"""
	わかるかな?
	それが わかれば みちも
	ひらけるだろう
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	たちゅけてー!
	今、こうえんのリ・・
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	まいど おせわになっております
	日ごろの ごあいこに
	かんしゃして
	"""
	keyWait
		any = false
	clearMsg
	"""
	本日、デンサンドームまえで
	PETを むりょうメンテナンス
	いたします
	"""
	keyWait
		any = false
	clearMsg
	"""
	大会に でられるかたは
	ぜひぜひ おためしください
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	デンサンメールマガジン
	今日のあなたのうんせい!
	"""
	keyWait
		any = false
	clearMsg
	"""
	今日のあなた!
	水なんのそうが でていますよ!
	水にちゅうい!!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 50
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	こんにちは こちらは
	ニホンネットバトル
	きょうかいです
	"""
	keyWait
		any = false
	clearMsg
	"""
	このたび、ニホンさいきょうの
	ネットバトラーを けっていする
	"""
	keyWait
		any = false
	clearMsg
	"""
	ネットバトル大会、
	イーグルトーナメントを
	かいさいすることになりました
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぜひ、光さまにも
	さんかしていただきたく
	おもいます
	"""
	keyWait
		any = false
	clearMsg
	"""
	くわしくは、ごじつ
	ごれんらくします
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	熱斗、おきゃくさんが
	いらしてるわよ
	かえってらっしゃい
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	こんにちは こちらは
	世界ネットバトル
	きょうかいです
	"""
	keyWait
		any = false
	clearMsg
	"""
	そろそろアメロッパに
	おつきだとおもいます
	"""
	keyWait
		any = false
	clearMsg
	"""
	そちらに ネットバトル
	きょうかいの げんちスタッフを
	行かせております
	"""
	keyWait
		any = false
	clearMsg
	"""
	川のほとりの ひろばに行けば
	あえるとおもいます
	"""
	keyWait
		any = false
	clearMsg
	"""
	トーナメントまでの きかんは
	カレのしじに したがうように
	してください
	"""
	keyWait
		any = false
	clearMsg
	"""
	それでは、ごけんとうを
	おいのりします
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	さっきは たすけてくれて
	アリガト
	"""
	keyWait
		any = false
	clearMsg
	"""
	だけど、しあいをキケンする
	つもりはないからね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワタシのじつりょくを
	ちょっとだけ見せてあげるから
	"""
	keyWait
		any = false
	clearMsg
	"""
	メイルちゃんのへやの
	ぬいぐるみの電脳にきて
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	みなさん、ウイルスチェックは
	こまめにやっていますか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちゃんと チェックしないと
	でんしききが とつぜん
	こわれたりするかもしれません
	"""
	keyWait
		any = false
	clearMsg
	"""
	まいにち いちどは
	ウイルスチェックを
	こころがけましょう
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"おひさしぶりです、熱斗さん"
	keyWait
		any = false
	clearMsg
	"""
	つぎのしあい、
	バトルすることに
	なりましたね
	"""
	keyWait
		any = false
	clearMsg
	"おたがい、がんばりましょう"
	keyWait
		any = false
	clearMsg
	"""
	ところで、わたしは今、
	秋原町の こうえんで
	おべんとうを うっています
	"""
	keyWait
		any = false
	clearMsg
	"""
	もしよかったら、
	あしを はこんでくださいね
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	熱斗さん、スタジアムのほうは
	どうなりましたか?
	ケガとかしていませんか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	こちらは、がんばって
	せっとくしたけっか、みんなに
	わかってもらえました
	"""
	keyWait
		any = false
	clearMsg
	"ただ・・・"
	keyWait
		any = false
	clearMsg
	"""
	パークエリアへおくった、
	ウッドマンとの れんらくが
	とだえてしまったんです・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	わたし、
	もう どうしたらいいのか
	わからなくて・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	おねがいです、熱斗さん、
	チカラを かしてください・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	今、メンバーの みんなと
	いっしょに、
	シェロ・カスティロにいます
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	パパがしゅっちょうのあいだ、
	なにかあったときは
	"""
	keyWait
		any = false
	clearMsg
	"""
	おまえたちがママを
	まもってやってくれ
	"""
	keyWait
		any = false
	clearMsg
	"""
	おまえたちが
	ムチャしないようにと
	"""
	keyWait
		any = false
	clearMsg
	"""
	ママからあずかっていた
	ナビカスタマイザーをかえすぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	つかいかたはおぼえているか?
	ねんのため、かいておくぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	この ナビカスタマイザーを
	PETにくみこんで
	きどうさせると、
	"""
	keyWait
		any = false
	clearMsg
	"""
	さまざまな、プログラムを
	ロックマンに くみこむコトが
	できるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	熱斗の プログラムの
	ウデしだいで
	"""
	keyWait
		any = false
	clearMsg
	"""
	ロックマンを ドンドンつよく
	カスタマイズするコトが
	できるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビカスタマイザー用の
	プログラムも いくつか
	つけておくから
	"""
	keyWait
		any = false
	clearMsg
	"れんしゅうしてみてくれ"
	keyWait
		any = false
	clearMsg
	"""
	それと、カスタマイズの
	けっかによって、
	"""
	keyWait
		any = false
	clearMsg
	"""
	フォルダをきりかえる
	ひつようが
	でてくるはずだから、
	"""
	keyWait
		any = false
	clearMsg
	"これも おまけでつけておこう"
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 131
		jumpIfTrue = 100
		jumpIfFalse = continue
	soundPlay
		track = 115
	itemGiveNaviCustProgram
		program = 52
		color = 1
		amount = 1
	itemGiveNaviCustProgram
		program = 136
		color = 2
		amount = 1
	itemGiveNaviCustProgram
		program = 140
		color = 1
		amount = 1
	startGiveFolder
		slot = 2
		folder = 3
	"熱斗は、"
	keyWait
		any = false
	clearMsg
	"""
	ナビカスタマイザーと、
	ナビカス用プログラム、
	"""
	keyWait
		any = false
	clearMsg
	"「"
	printNaviCustProgram
		buffer = 0
		program = 13
	"""
	」
	「
	"""
	printNaviCustProgram
		buffer = 0
		program = 34
	"""
	」
	「
	"""
	printNaviCustProgram
		buffer = 0
		program = 35
	"」"
	keyWait
		any = false
	clearMsg
	"""
	そして、
	「
	"""
	printFolderName
		buffer = 0
		entry = 3
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	flagSet
		flag = 131
	flagSet
		flag = 1114
	end
}
script 13 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	熱斗、
	あなたのパソコンから けむりが
	あがってるわよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	これって、
	どうしたらいいの!?
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 は
	よういできたか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	よういできたんなら、
	川の ほとりにたっている
	"""
	keyWait
		any = false
	clearMsg
	"""
	めがみぞうの電脳に
	プラグインしな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	フットボムのおそろしさを
	みっちり おしえてやるぜ!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"おこまりのようだな・・・"
	keyWait
		any = false
	clearMsg
	"""
	もし よければ、わたしが
	カレーのすべてを
	キミに でんじゅしよう
	"""
	keyWait
		any = false
	clearMsg
	"""
	パークエリア2の
	りょうりどうじょうにて、
	キミがくるのを まってるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"クッキングマスターより"
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ガッツソウルのいけにえは
	クラックアウトなどの
	ちけいはかいけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ユニゾン中は 無属性と
	ちけいはかいけいのチップの
	攻撃力が+30される
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	目の前1マスを攻撃する
	ガッツパンチになるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに Bボタンれんだで
	むてきじょうたいで はなつ
	ガッツマシンガンはつどうだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ガッツとせんりゃくが
	きょうぞんするガッツソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ファイアソウルのいけにえは
	ヒートショットなどの
	炎属性のチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ファイアソウルに ユニゾン中は
	ロックマンの属性が炎になる
	"""
	keyWait
		any = false
	clearMsg
	"""
	水攻撃には ダメージ2ばいだ
	ちゅういするんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ユニゾンすると
	いちぶのパネルをくさむらに
	してしまう うえに
	"""
	keyWait
		any = false
	clearMsg
	"""
	ユニゾン中は 炎属性のチップを
	Aボタンためうちでつかうと
	ファイアアームがはつどうする
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	3マスのしゃていをもつ
	かえんほうしゃ になるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	やけどしそうなほどに
	アツいファイアソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ロールソウルのいけにえは
	リカバリー10などの
	リカバリーけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	あいてのチップをはかいする
	ロールアロー!
	"""
	keyWait
		any = false
	clearMsg
	"""
	そして ロールソウル中は
	チップをつかうごとになんと
	"""
	keyWait
		any = false
	clearMsg
	"""
	HPが マックスHPの
	10%ぶんだけ かいふくする!
	"""
	keyWait
		any = false
	clearMsg
	"""
	チップがたくさんえらべる
	じょうたいのときに つかえば
	かなり ゆうこうだろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	いやしとせんりゃくが
	きょうぞんするロールソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ウインドソウルのいけにえは
	エアシュートなどの
	風けいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ユニゾンしたとき あいての
	バリアやオーラをふきとばす
	スーパーキタカゼがはつどう!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ユニゾン中は ヒビなどの
	パネルのえいきょうをうけず
	あなの上でもあるけるうえに
	"""
	keyWait
		any = false
	clearMsg
	"""
	てきのエリアにスイコミの風を
	ふかせつづける!
	きんきょり攻撃があてやすいぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらになんとユニゾン中は
	風けいのチップの攻撃力が
	+10されるんだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタン攻撃は
	あいてを ふっとばす
	エアシュート!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	あいてを はしまでふきとばす
	フウジンラケットだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	風をあやつり バトルをせいする
	ウインドソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	サンダーソウルのいけにえは
	サンダーボール1などの
	電気属性のチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	サンダーソウルに ユニゾン中は
	ロックマンの属性が電気になる
	"""
	keyWait
		any = false
	clearMsg
	"""
	木攻撃には ダメージ2ばいだ
	ちゅういするんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかし そのかわり
	電気属性と無属性のチップに
	マヒこうかが つく!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちも
	あいてをマヒさせる
	ラビリングだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	れんぞく攻撃にいのちをかける
	サンダーソウル!
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	サーチソウルのいけにえは
	インビジブルなどの
	インビジブルけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	サーチソウルは へんしんすると
	あいてのインビジブルや
	ユカシタをかいじょさせる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	どこからでも ねらいうつ
	スコープガンだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに カスタム画面でえらべる
	チップをシャッフルして
	いれかえられるようになるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	これでプログラムアドバンスを
	ねらうせんりゃくが
	より みぢかになるだろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただしシャッフルきのうは
	いちどに3かいまでしか
	つかえないから 気をつけろ
	"""
	keyWait
		any = false
	clearMsg
	"""
	いっぱつぎゃくてんが
	ねらいやすいサーチソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	アクアソウルのいけにえは
	バブルショットなどの
	水属性のチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	アクアソウルは へんしん中
	ロックマンの属性が水になる
	"""
	keyWait
		any = false
	clearMsg
	"""
	こおりの上で すべらなくなるが
	電気攻撃には ダメージ2ばいだ
	ちゅういするんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは あたると
	おくに1マスあわがひろがる
	アクアショットになるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに 水属性のチップを
	Aボタンためうちでつかうと
	攻撃力が2ばいになる
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただし じかんをとめて
	はつどうする チップでは
	チップのためうちはできないぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	水属性のチップをたくさん
	フォルダに入れれば かなりの
	攻撃力がみこめるだろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	水属性攻撃のスペシャリスト
	アクアソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ナンバーソウルのいけにえは
	アタック+10などの
	すうちふかけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナンバーソウルは ユニゾン中
	無属性の攻撃チップすべてに
	攻撃力が+10されるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ヒット数がおおいチップだと
	かなりの攻撃力アップになる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	3マス前にサイコロボムだ
	出目によって攻撃力がかわるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに カスタム画面で
	えらべるチップの枚数がなんと
	10枚になるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	数字のせんりゃくせいがアツイ
	ナンバーソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ウッドソウルのいけにえは
	ブーメラン1などの
	木属性のチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウッドソウルは へんしん中
	ロックマンの属性が木になる
	"""
	keyWait
		any = false
	clearMsg
	"""
	くさむらでHPかいふくするが
	炎攻撃には ダメージ2ばいだ
	ちゅういするんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	2マス前を攻撃するコガラシだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに 木属性チップが
	つぎにえらんだ無属性チップの
	攻撃力をすいとるようになる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	攻撃力のたかい無属性チップを
	いっしょにえらべば かなりの
	攻撃力アップにつながるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかも ウッドソウル中は
	マヒや こんらんなどの
	こうかをうけつけないぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	大しぜんの つよさとやさしさを
	かねそなえた ウッドソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	メタルソウルのいけにえは
	エアホッケー1などの
	ブレイクけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	メタルソウルに ユニゾン中は
	バスターが ガードをつきやぶる
	ブレイクバスターになる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	目の前のパネルをなぐりつける
	メタルフィストだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	またブレイクか無属性チップを
	Aボタンためうちで つかうと
	攻撃力が2ばいになるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただし じかんをとめて
	はつどうする チップでは
	チップのためうちはできないぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	一撃にかけるオトコのたましい
	メタルソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ジャンクソウルのいけにえは
	ストーンキューブなどの
	おきものけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ユニゾンしたときに
	あいてを こんらんさせてしまう
	こうかがある!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	おきものを とばしてぶつける
	ポルターガイストだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに なんと
	カスタム画面で そのバトル中に
	いちど つかわれたチップ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	いわゆるジャンクチップが
	えらべるようになるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	はかいと さいせいを
	かねそなえたジャンクソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ブルースソウルのいけにえは
	ワイドソードなどの
	ソードけいのチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ブルースソウルにユニゾン中は
	B+左で リフレクト!
	攻撃をはねかえせるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンのためうちは
	ワイドソード!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらに ソードけいのチップを
	Aボタンためうちで つかうと
	2マス前にふみこんで きるうえ
	"""
	keyWait
		any = false
	clearMsg
	"なんと攻撃力が2ばいになる!"
	keyWait
		any = false
	clearMsg
	"""
	ただし じかんをとめて
	はつどうする チップでは
	チップのためうちはできないぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	まもりと攻撃を あわせもつ
	テクニカルなブルースソウル
	がんばって つかいこなせ!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ゆうりょくな じょうほうが
	入った・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	ブルースが
	ウラインターネットに
	入って行ったらしい
	"""
	keyWait
		any = false
	clearMsg
	"""
	しっているとはおもうが、
	ウラの入り口は、
	シャーロエリアのおくだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウラで ダークチップが
	からんでいるとすると
	"""
	keyWait
		any = false
	clearMsg
	"""
	ネビュラがかんよしている
	かのうせいがたかい
	気をぬくなよ
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	とつじょ はっせいした
	もうふぶきの しょうたいは、
	"""
	keyWait
		any = false
	clearMsg
	"""
	シャーロじょうくうで
	はっせいした つめたい
	くうきが、
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんらかの げんいんで
	アメロッパに やってきたものと
	おもわれます
	"""
	keyWait
		any = false
	clearMsg
	"""
	シャーロじょうくうの
	てんこうは、
	"""
	keyWait
		any = false
	clearMsg
	"""
	シャーロうちゅうセンターの
	きしょうえいせいで
	かんりしているはずですが、
	"""
	keyWait
		any = false
	clearMsg
	"""
	えいせいに トラブルが
	あったのではないかとの
	見かたが つよまっています
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ロールちゃんのコト、
	たのんだわよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	コレ、やくに たつか
	わからないけど、
	つかってちょうだい!!
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 146
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	soundPlay
		track = 115
	itemGive
		item = 146
		amount = 1
	"""
	熱斗は、
	「
	"""
	printItem
		buffer = 0
		item = 146
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	ロールが ぶじ
	もどってきたらしいな
	"""
	keyWait
		any = false
	clearMsg
	"""
	熱斗、やっぱり おめーなら
	やってくれるとおもったぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	おめーに けいいを ひょうして
	コレを おくるぜ!
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 145
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	soundPlay
		track = 115
	itemGive
		item = 145
		amount = 1
	"""
	熱斗は、
	「
	"""
	printItem
		buffer = 0
		item = 145
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"おきゃくさまかくい"
	keyWait
		any = false
	clearMsg
	"""
	ひごろ おせわになっております
	おきゃくさまがたに
	"""
	keyWait
		any = false
	clearMsg
	"""
	かんしゃの きもちと
	いたしまして、
	"""
	keyWait
		any = false
	clearMsg
	"""
	とうてんのHPの バナーを
	おくらせていただきます
	"""
	keyWait
		any = false
	clearMsg
	"""
	みなさまの よりみぢかに
	みなさまの おちからに
	なれるように、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ジョーモン電気、そうりょくを
	あげて、がんばってまいります
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんごとも よろしく
	おねがいもうしあげます
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 156
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	flagClear
		flag = 468
	soundPlay
		track = 115
	itemGive
		item = 156
		amount = 1
	"""
	熱斗は、
	「
	"""
	printItem
		buffer = 0
		item = 156
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 51
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	せんじつは とうホテルを
	ごりよういただき
	まことに ありがとうございます
	"""
	keyWait
		any = false
	clearMsg
	"""
	レッドサントーナメントに
	さんかされた せんしゅの
	かたがたに さんかしょうとして
	"""
	keyWait
		any = false
	clearMsg
	"""
	とうアメロッパホテルの
	バナーを おおくりさせて
	いただきます
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんごとも、とうホテルを
	よろしくおねがいします
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 158
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	flagClear
		flag = 466
	soundPlay
		track = 115
	itemGive
		item = 158
		amount = 1
	"""
	熱斗は、
	「
	"""
	printItem
		buffer = 0
		item = 158
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	こんにちは こちらは
	ニホンネットバトル
	きょうかいです
	"""
	keyWait
		any = false
	clearMsg
	"""
	このたび、ニホンさいきょうの
	ネットバトラーを けっていする
	"""
	keyWait
		any = false
	clearMsg
	"""
	ネットバトル大会、
	ホークトーナメントを
	かいさいすることになりました
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぜひ、光さまにも
	さんかしていただきたく
	おもいます
	"""
	keyWait
		any = false
	clearMsg
	"""
	くわしくは、ごじつ
	ごれんらくします
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	せんじつは とうホテルを
	ごりよういただき
	まことに ありがとうございます
	"""
	keyWait
		any = false
	clearMsg
	"""
	ブルームーントーナメントに
	さんかされた せんしゅの
	かたがたに さんかしょうとして
	"""
	keyWait
		any = false
	clearMsg
	"""
	とうアメロッパホテルの
	バナーを おおくりさせて
	いただきます
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんごとも、とうホテルを
	よろしくおねがいします
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 158
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	flagClear
		flag = 466
	soundPlay
		track = 115
	itemGive
		item = 158
		amount = 1
	"""
	熱斗は、
	「
	"""
	printItem
		buffer = 0
		item = 158
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4s {
	end
}
@archive 6E43CC
@size 23

script 0 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	「
	"""
	printItem
		buffer = 0
		item = 180
	"""
	」の
	こうかが きれたよ!
	"""
	keyWait
		any = false
	end
}
script 1 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	「
	"""
	printItem
		buffer = 0
		item = 178
	"""
	」の
	こうかが きれたよ!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	checkChapter
		lower = 59
		upper = 59
		jumpIfInRange = 3
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、このレールをとおるには
	とくしゅな のりものが
	ひつようみたいだ!
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4 {
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 4
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、このレールをとおるには
	とくしゅな のりものが
	ひつようみたいだ!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ベッボブン、
	(熱斗くん、)
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボボベーブボボボブビバ
	(このレールをとおるには)
	"""
	keyWait
		any = false
	clearMsg
	"""
	ビョブブバ ボビボボバ
	(とくしゅな のりものが)
	"""
	keyWait
		any = false
	clearMsg
	"""
	ビブボブビバビバ!
	(ひつようみたいだ!)
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	メールが とどいてるよ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	メールが とどいてるよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あっ、炎山くんからだ!!
	よんでみるよ!!
	"""
	keyWait
		any = false
	clearMsg
	"「ゆうりょくな じょうほうが\n 入った・・・"
	keyWait
		any = false
	clearMsg
	" ブルースがウラインターネットに\n 入って行ったらしい"
	keyWait
		any = false
	clearMsg
	" しっているとはおもうが、\n ウラの入り口は、\n シャーロエリアのおくだ"
	keyWait
		any = false
	clearMsg
	" ウラで ダークチップが\n からんでいるとすると"
	keyWait
		any = false
	clearMsg
	" ネビュラがかんよしている\n かのうせいがたかい\n 気をぬくなよ」"
	keyWait
		any = false
	clearMsg
	"だって!"
	keyWait
		any = false
	clearMsg
	"""
	熱斗くん、ウラインターネットに
	むかおう!!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	メールが とどいてるよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あ、ママからだ!!
	よんでみるね!!
	"""
	keyWait
		any = false
	clearMsg
	"「熱斗、\n あなたのパソコンから けむりが\n あがってるわよ!"
	keyWait
		any = false
	clearMsg
	" これって、\n どうしたらいいの!?」"
	keyWait
		any = false
	clearMsg
	"だって!"
	keyWait
		any = false
	clearMsg
	"""
	たいへんだよ、熱斗くん!
	いそいで ウチにかえろう!!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4s {
	"THANK YOU FOR PLAYING!YOU COMPLETED EXE4!!"
	end
}
script 21 mmbn4s {
	"PRESS START"
	end
}
script 22 mmbn4 {
	msgOpen
	textSpeed
		delay = 0
	positionText
		left = 32
		top = 108
		arrowDistance = 2
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"セーブしたところから\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"データをもちこして"
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = true
	"周目かいし"
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
	end
}
@archive 6E4728
@size 197

script 0 mmbn4 {
	positionText
		left = 57
		top = 108
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
	熱斗くんのけいたいたんまつだよ
	ボクは、このPETに
	インストールされているんだ
	"""
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 57
		top = 108
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
	しんがたのイヤホンだよ
	そとからの おとを
	しゃだんしちゃうらしいね
	"""
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 57
		top = 108
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
	プログラムくんの しゅうりに
	つかう しゅうふくデータだよ
	"""
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 57
		top = 108
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
	でんしききを くるわせる
	ちょうおんぱを まきちらす
	いっしゅの ウイルスだよ
	"""
	waitHold
}
script 4 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 195
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
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
	じゃあくな ふんいきを
	はなつ なぞのデータだよ・・・
	いったいこれは?
	"""
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 57
		top = 108
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
	でんぱとうの電脳にある
	ソナーシステムを
	うごかすためのデータだよ
	"""
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 57
		top = 108
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
	でんぱとうの電脳にある
	ソナーシステムを
	うごかすためのデータだよ
	"""
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 57
		top = 108
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
	デンサンシティ イチの
	ネットバトラーのあかしだよ!
	"""
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 57
		top = 108
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
	インターネットにある
	どこかのトビラを ひらくための
	カギみたいだ
	"""
	waitHold
}
script 9 mmbn4 {
	checkFlag
		flag = 1674
		jumpIfTrue = 192
		jumpIfFalse = continue
	checkFlag
		flag = 1675
		jumpIfTrue = 193
		jumpIfFalse = continue
	checkFlag
		flag = 1676
		jumpIfTrue = 194
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
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
	"メモのせつめい"
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 57
		top = 108
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
	びなのりどみ
	んさありえんうた
	"""
	keyWait
		any = false
	clearMsg
	"""
	ってかいてあるよ
	なんのことだろう?
	"""
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 57
		top = 108
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
	がしてみるは
	さ!なだんな
	をかなのばた
	"""
	keyWait
		any = false
	clearMsg
	"うずまき"
	keyWait
		any = false
	clearMsg
	"""
	どういうヒントが
	かくされてるんだろう?
	"""
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「1」って かかれたデータだよ
	なにに つかうんだろう?
	"""
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「2」って かかれたデータだよ
	なにに つかうんだろう?
	"""
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「3」って かかれたデータだよ
	なにに つかうんだろう?
	"""
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「4」って かかれたデータだよ
	なにに つかうんだろう?
	"""
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「5」って かかれたデータだよ
	なにに つかうんだろう?
	"""
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 57
		top = 108
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
	電気のチカラでまわるコマだよ
	すごい いきおいでまわる
	みたいだね・・・
	"""
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネットバトルどうこうかい
	ひでんのわざ、その1!
	「てきの ずじょうにらっか!」
	"""
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネットバトルどうこうかい
	ひでんのわざ、その2!
	「スピンしつつ とつげき!」
	"""
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネットバトルどうこうかい
	ひでんのわざ、その3!
	「ジグザグベーゴマ攻撃!」
	"""
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネットバトルどうこうかい
	ひでんのわざ、その4!
	「スピンで かんぜんガード!」
	"""
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 57
		top = 108
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
	メットールの せいたいについて
	くわしくかかれているデータだね
	"""
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 57
		top = 108
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
	世にもめずらしい
	コガネナナフシのオスだよ
	かなりあばれてるね
	"""
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 57
		top = 108
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
	世にもめずらしい
	コガネナナフシのメスだよ
	ぜんぜんうごかないね・・・
	"""
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 57
		top = 108
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
	おじいちゃん おばあちゃん
	ネットバトルどうこうかいの
	かいいんしょうだよ
	"""
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 57
		top = 108
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
	シェロ・カスティロ
	ごしょうたいチケット
	ってかいてあるよ
	"""
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 57
		top = 108
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
	コーンからこぼれそうなくらいに
	もりつけられたアイスクリームだ
	ボクもたべたいな・・・
	"""
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 57
		top = 108
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
	これさえあれば、
	電脳水の中でもこきゅうが
	できるよ!!
	"""
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 57
		top = 108
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
	しゅう子さんの かんりする
	エリアに 入るための
	カギだよ!!
	"""
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 57
		top = 108
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
	太陽の光を かんちして
	エネルギーにへんかんする
	プログラムだよ!
	"""
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ニホンイチの ネットバトラーの
	あかしだよ!!
	"""
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 57
		top = 108
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
	世界イチの ネットバトラーの
	あかしだよ!!
	"""
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 57
		top = 108
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
	これさえあれば、世界中の
	インターネットを 行きき
	できるよ
	"""
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 57
		top = 108
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
	カギのカタチをしたデータだよ
	4つあつめて はじめて
	きどうするみたいだね
	"""
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 57
		top = 108
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
	カギのカタチをしたデータだよ
	4つあつめて はじめて
	きどうするみたいだね
	"""
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 57
		top = 108
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
	カギのカタチをしたデータだよ
	4つあつめて はじめて
	きどうするみたいだね
	"""
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 57
		top = 108
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
	カギのカタチをしたデータだよ
	4つあつめて はじめて
	きどうするみたいだね
	"""
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「かがみ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「くし」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「たいぼく」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「どうぞう」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「こんしんの一撃」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「キッスのあらし」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おせっきょう」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ウィザーモンキー」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ウィザーキャット」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ウィザードラゴン」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 48 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「まほうふうじ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 49 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「はげしいダンス」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 50 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「さむいダジャレ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 51 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「はなのよさ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 52 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ひっかき」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 53 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「目のよさ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 54 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「つっこみ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 55 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「せんそう」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 56 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「かんじょう」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 57 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おわらい」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 58 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「プライド」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 59 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ことり」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 60 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ダンス」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 61 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「タンス」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 62 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ゾンビ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 63 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おもちゃのぶひん」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 64 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ダンサー」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 65 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「せいじか」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 66 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「のうさぎょうロボ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 67 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ガン・デル・ソル」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 68 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「しんくのマフラー」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 69 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「しんくのパンツ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 70 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「ワルシャーP37」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 71 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おてんこさま」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 72 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「太陽の光」 って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 73 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「月の光」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 74 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おこんてさま」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 75 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「てんまど」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 76 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「たいよーー!!」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 77 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おかーさーん!」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 78 mmbn4 {
	positionText
		left = 57
		top = 108
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
	「おじさんのアタマ」
	って かかれた
	おはなしデータだよ!
	"""
	waitHold
}
script 79 mmbn4 {
	positionText
		left = 57
		top = 108
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
	電脳世界をしっそうする
	のりものだよ!
	"""
	waitHold
}
script 80 mmbn4 {
	positionText
		left = 57
		top = 108
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
	タウンエリア2にある
	電脳トビラを ひらくカギだよ
	"""
	waitHold
}
script 81 mmbn4 {
	positionText
		left = 57
		top = 108
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
	パパから熱斗くんにあてた
	てがみだよ!
	"""
	waitHold
}
script 82 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビゆうれいを しずめる、
	サイバーおきょうが
	かかれた まきものだよ!
	"""
	waitHold
}
script 83 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビゆうれいの
	ばしょを さっちする
	ふしぎな すいしょうだよ!
	"""
	waitHold
}
script 84 mmbn4 {
	positionText
		left = 57
		top = 108
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
	がいこくに行くための
	ひこうきのチケットだよ!
	"""
	waitHold
}
script 85 mmbn4 {
	positionText
		left = 57
		top = 108
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
	インターネットのどこかの
	トビラをひらくカギだよ
	"""
	waitHold
}
script 86 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパこらいからつたわる
	ゆうきをもつもの の
	あかしだって!
	"""
	waitHold
}
script 87 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパこらいからつたわる
	つよさをもつもの の
	あかしだって!
	"""
	waitHold
}
script 88 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパこらいからつたわる
	えいちをもつもの の
	あかしだって!
	"""
	waitHold
}
script 89 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパこらいからつたわる
	やさしさをもつもの の
	あかしだって!
	"""
	waitHold
}
script 90 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ヒグレヤのチラシだね!
	今、
	"""
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"まい もってるよ!"
	waitHold
}
script 91 mmbn4 {
	positionText
		left = 57
		top = 108
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
	タウンエリアにある、
	ヒグレヤそうこのキーだよ!
	"""
	waitHold
}
script 92 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ウインドマンの
	チカラをおさえる、
	ランさんのフエだよ!
	"""
	waitHold
}
script 93 mmbn4 {
	positionText
		left = 57
		top = 108
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
	どんなきょうぼうなウイルスも
	これを のめばよっぱらって
	ころんでしまう おサケだよ!
	"""
	waitHold
}
script 94 mmbn4 {
	positionText
		left = 57
		top = 108
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
	きょくげんまで ほんものの
	あじに こだわったスルメだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	おサケの おつまみには
	ピッタリみたいだね!
	"""
	waitHold
}
script 95 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ビデオマンが ボクにかけた
	マキモドシを かいじょする
	データが入ったビデオだよ
	"""
	waitHold
}
script 96 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ビデオマンが ボクにかけた
	マキモドシを かいじょする
	データが入ったビデオだよ
	"""
	waitHold
}
script 97 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ビデオマンが ボクにかけた
	マキモドシを かいじょする
	データが入ったビデオだよ
	"""
	waitHold
}
script 98 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパでんとうきゅうぎ
	フットボムのシューズだよ
	"""
	waitHold
}
script 99 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アジーナエリアにある
	ゴミすてばのカギだよ
	"""
	waitHold
}
script 100 mmbn4 {
	positionText
		left = 57
		top = 108
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
	はっしんきだね
	ボクが どこにいるのか
	現実世界から わかるんだ
	"""
	waitHold
}
script 101 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ケンドーマンのケイコを
	クリアした あかしだよ
	"""
	waitHold
}
script 102 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ケンドーマンのケイコを
	クリアした あかしだよ
	"""
	waitHold
}
script 103 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ケンドーマンのケイコを
	クリアした あかしだよ
	"""
	waitHold
}
script 104 mmbn4 {
	positionText
		left = 57
		top = 108
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
	たま子さんの ししょうのいる
	エリアにつうじるトビラを
	ひらくカギだよ
	"""
	waitHold
}
script 105 mmbn4 {
	positionText
		left = 57
		top = 108
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
	電脳世界のボヤをけす
	ウォーターガンだよ
	"""
	waitHold
}
script 106 mmbn4 {
	positionText
		left = 57
		top = 108
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
	きょうりょくな水のパワーで
	火を けしさるバスターだよ
	"""
	waitHold
}
script 107 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ゆきかきようの ショベルだね
	もちろん、シャーロせい だよ
	"""
	waitHold
}
script 108 mmbn4 {
	positionText
		left = 57
		top = 108
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
	いたの カタチをした
	プログラムだよ・・・
	なににつかうんだろう?
	"""
	waitHold
}
script 109 mmbn4 {
	positionText
		left = 57
		top = 108
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
	すいしんよう
	ジェットプログラムだね・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	けど、これだけじゃ
	あんまりやくには たたないね
	"""
	waitHold
}
script 110 mmbn4 {
	positionText
		left = 57
		top = 108
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
	つばさのカタチをした
	プログラムだよ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	けど、これだけじゃ
	あんまりイミがないよ
	"""
	waitHold
}
script 111 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラが しかけた
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 112 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラが しかけた
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 113 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラが しかけた
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 114 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラが しかけた
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 115 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラが しかけた
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 116 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラが しかけた
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 117 mmbn4 {
	positionText
		left = 57
		top = 108
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
	あくにんの アジトの入り口の
	トビラをひらくカギみたいだね
	"""
	waitHold
}
script 118 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ミズガミサマを しゅうふく
	するための プログラムだよ
	"""
	waitHold
}
script 119 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アッフリクエリアにある
	トビラをひらくための
	カギだよ
	"""
	waitHold
}
script 120 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ボクにたいする のろいが
	こめられたにんぎょうだよ
	こわいね・・・
	"""
	waitHold
}
script 121 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ネビュラの だんいんが
	もっている ヒミツの
	カギみたいだね
	"""
	waitHold
}
script 122 mmbn4 {
	positionText
		left = 57
		top = 108
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
	インターネットにある
	りょうりどうじょうの
	キーだよ!
	"""
	waitHold
}
script 123 mmbn4 {
	positionText
		left = 57
		top = 108
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
	"カレー用のしょくざいだよ"
	waitHold
}
script 124 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やさしさとは なにかが
	とかれた データだよ
	"""
	waitHold
}
script 125 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ジョーモン電気の HPと
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 126 mmbn4 {
	positionText
		left = 57
		top = 108
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
	電脳のシナイだよ
	れんしゅう用だから
	ちょっと おもいね
	"""
	waitHold
}
script 127 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ミズガミサマのぞうだよ
	コレをもっていけば、
	ことしのミズンドになれるよ
	"""
	waitHold
}
script 128 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビカス中に、L・Rボタンで
	しろい プログラムパーツを
	かいてんさせることができるよ
	"""
	waitHold
}
script 129 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビカス中に、L・Rボタンで
	ピンクの プログラムパーツを
	かいてんさせることができるよ
	"""
	waitHold
}
script 130 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビカス中に、L・Rボタンで
	きいろい プログラムパーツを
	かいてんさせることができるよ
	"""
	waitHold
}
script 131 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビカス中に、L・Rボタンで
	あかい プログラムパーツを
	かいてんさせることができるよ
	"""
	waitHold
}
script 132 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビカス中に、L・Rボタンで
	あおい プログラムパーツを
	かいてんさせることができるよ
	"""
	waitHold
}
script 133 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ナビカス中に、L・Rボタンで
	みどりの プログラムパーツを
	かいてんさせることができるよ
	"""
	waitHold
}
script 144 mmbn4 {
	positionText
		left = 57
		top = 108
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
	メイルちゃんの HPと
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 145 mmbn4 {
	positionText
		left = 57
		top = 108
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
	デカオくんの HPと
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 146 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やいとちゃんの HPと
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 147 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパのホテルの HPと
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 148 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アジーナのぶつぞうの電脳と
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 149 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ヌポポぞうの電脳と
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 150 mmbn4 {
	positionText
		left = 57
		top = 108
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
	シャーロのコンピュータの電脳と
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 151 mmbn4 {
	positionText
		left = 57
		top = 108
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
	シェロ・カスティロの HPと
	インターネットを つなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 152 mmbn4 {
	positionText
		left = 57
		top = 108
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
	シャーロうちゅうセンターの
	HPと インターネットをつなぐ
	コードが かかれたテキストだよ
	"""
	waitHold
}
script 153 mmbn4 {
	positionText
		left = 57
		top = 108
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
	メイルちゃんの HPの
	バナーだよ!
	"""
	waitHold
}
script 154 mmbn4 {
	positionText
		left = 57
		top = 108
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
	デカオくんの HPの
	バナーだよ!
	"""
	waitHold
}
script 155 mmbn4 {
	positionText
		left = 57
		top = 108
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
	やいとちゃんの HPの
	バナーだよ!
	"""
	waitHold
}
script 156 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ジョーモン電気の HPの
	バナーだよ!
	"""
	waitHold
}
script 157 mmbn4 {
	positionText
		left = 57
		top = 108
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
	シェロ・カスティロの
	HPの バナーだよ!
	"""
	waitHold
}
script 158 mmbn4 {
	positionText
		left = 57
		top = 108
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
	アメロッパのホテルの
	HPの バナーだよ!
	"""
	waitHold
}
script 159 mmbn4 {
	positionText
		left = 57
		top = 108
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
	シャーロのうちゅうセンターの
	HPの バナーだよ!
	"""
	waitHold
}
script 160 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	HPのマックスを
	+20
	"""
	waitHold
}
script 161 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ナビカスの
	メモリーマップが
	ひろくなる
	"""
	waitHold
}
script 162 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	レギュラーシステムの
	ようりょうを+1
	"""
	waitHold
}
script 163 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	レギュラーシステムの
	ようりょうを+2
	"""
	waitHold
}
script 164 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	レギュラーシステムの
	ようりょうを+3
	"""
	waitHold
}
script 165 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	サブチップを
	もてるかずがふえる
	"""
	waitHold
}
script 175 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	waitHold
}
script 176 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"HPを50かいふく!"
	waitHold
}
script 177 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"HPをマックスまでかいふく!"
	waitHold
}
script 178 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	しばらくのあいだ
	よわいウイルスと
	であわなくなる
	"""
	waitHold
}
script 179 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ミステリーデータにかかった
	ワナをはずす
	"""
	waitHold
}
script 180 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ちょくぜんにであったテキと
	もういちどであいやすくなる
	"""
	waitHold
}
script 181 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	セキュリティのかかった
	ミステリーデータをかいせきする
	"""
	waitHold
}
script 192 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"1:タウンエリアにいる\n  ネットショウニンのかず"
	keyWait
		any = false
	clearMsg
	"2:タコヤキのかず"
	keyWait
		any = false
	clearMsg
	"3:タウンエリア3にある\n  ま上か ま下をさしている\n  サンカクマークのかず"
	keyWait
		any = false
	clearMsg
	"4:電気街にある\n  じはんきのかず"
	keyWait
		any = false
	clearMsg
	"5:秋原町にはえている\n  みきが見える木のかず"
	keyWait
		any = false
	clearMsg
	"6:秋原エリアの\n  「いえマーク」 のかず"
	keyWait
		any = false
	clearMsg
	"7:15+2+3-14="
	waitHold
}
script 193 mmbn4 {
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"1:JO-MONのかず"
	keyWait
		any = false
	clearMsg
	"2:秋原エリア2の\n  メインストリートは まん中の\n  ひろばから何本にわかれてる?"
	keyWait
		any = false
	clearMsg
	"3:「"
	printItem
		buffer = 0
		item = 3
	"」 は、\n  ぜんぶで なんびきいたか?"
	keyWait
		any = false
	clearMsg
	"4:今、でんぱとうの電脳にいる\n  ナビのかず"
	keyWait
		any = false
	clearMsg
	"5:タウンエリア2の\n  さかみちのかず"
	keyWait
		any = false
	clearMsg
	"6:タウンエリア3にある\n  ま上か ま下をさしている\n  サンカクマークのかず"
	keyWait
		any = false
	clearMsg
	"7:秋原町にある\n  クマのぬいぐるみ のかず"
	waitHold
}
script 194 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"1:えきしょうモニターの電脳の\n  中のプログラムくんのかず"
	keyWait
		any = false
	clearMsg
	"2:15+2+3-14="
	keyWait
		any = false
	clearMsg
	"3:タコヤキのかず"
	keyWait
		any = false
	clearMsg
	"4:タウンエリアにいる\n  ネットショウニンのかず"
	keyWait
		any = false
	clearMsg
	"5:秋原エリア2の\n  メインストリートは まん中の\n  ひろばから何本にわかれてる?"
	keyWait
		any = false
	clearMsg
	"6:今、でんぱとうの電脳にいる\n  ナビのかず"
	keyWait
		any = false
	clearMsg
	"7:秋原町にはえている\n  みきが見える木のかず"
	waitHold
}
script 195 mmbn4 {
	positionText
		left = 57
		top = 108
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
	ダークチップだよ 日暮さんが
	つかっちゃいけないって
	いってたよね・・・
	"""
	waitHold
}
script 196 mmbn4 {
	positionText
		left = 57
		top = 108
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
	熱斗くんのけいたいたんまつだよ
	ボクは、このPETに
	インストールされているんだ
	"""
	waitHold
}
@archive 6E56D0
@size 197

script 0 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	コジンヨウ ケイタイタンマツ
	ロックマンハ コノPETニ
	インストール サレテイル
	"""
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	サイシンガタ ノ イヤホン
	ソトカラノ オト ヲ
	シャダンシテシマウ
	"""
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	プログラムクン ノ
	シュウリニ ツカウ データ
	"""
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンシキキ ヲ クルワス
	デンパ ヲ ハナツ
	イッシュ ノ ウイルス
	"""
	waitHold
}
script 4 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 195
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ジャアクナ フンイキヲ
	ハナツ フキツナチップ・・・
	"""
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンパトウ ノ デンノウ ノ
	ソナーシステム ヲ キドウ
	サセルタメノ データ
	"""
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンパトウ ノ デンノウ ノ
	ソナーシステム ヲ キドウ
	サセルタメノ データ
	"""
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンサンシティ サイキョウノ
	ネットバトラーニ オクラレル
	トロフィー
	"""
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	インターネットノ ドコカノ
	エリアノ トビラヲ
	ヒラク カギ
	"""
	waitHold
}
script 9 mmbn4 {
	checkFlag
		flag = 1674
		jumpIfTrue = 192
		jumpIfFalse = continue
	checkFlag
		flag = 1675
		jumpIfTrue = 193
		jumpIfFalse = continue
	checkFlag
		flag = 1676
		jumpIfTrue = 194
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"メモのせつめい"
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	びなのりどみ
	んさありえんうた
	"""
	keyWait
		any = false
	clearMsg
	"ト、カカレタ メモ"
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	がしてみるは
	さ!なだんな
	をかなのばた
	"""
	keyWait
		any = false
	clearMsg
	"うずまき"
	keyWait
		any = false
	clearMsg
	"ト、カカレタ データ"
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"「1」 ト、カカレタデータ"
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"「2」 ト、カカレタデータ"
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"「3」 ト、カカレタデータ"
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"「4」 ト、カカレタデータ"
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"「5」 ト、カカレタデータ"
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンキ ノ チカラ デ
	カイテンスル コマ
	"""
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ネットバトル ドウコウカイ
	ヒデン ノ ワザデータ1
	"""
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ネットバトル ドウコウカイ
	ヒデン ノ ワザデータ2
	"""
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ネットバトル ドウコウカイ
	ヒデン ノ ワザデータ3
	"""
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ネットバトル ドウコウカイ
	ヒデン ノ ワザデータ4
	"""
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	メットールニ ツイテカカレタ
	ケンキュウデータ
	"""
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	メズラシイ ナナフシ
	オス
	"""
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	メズラシイ ナナフシ
	メス
	"""
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ネットバトル ドウコウカイ
	カイインショウ
	"""
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	テーマパーク
	シェロ・カスティロ ノ
	ショウタイケン
	"""
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"オイシソウナ アイスクリーム"
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンノウスイノ ナカデモ
	コキュウガ デキル
	ケイタイヨウボンベ
	"""
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	シュウコノ カンリスル
	エリアニ ハイルタメノカギ
	"""
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	タイヨウノ ヒカリヲ
	エネルギーニ ヘンカンスル
	プログラム
	"""
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"トロフィー2"
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"トロフィー3"
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ネットパスポート"
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギデータA"
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギデータB"
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギデータC"
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギデータD"
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ1"
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ2"
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ3"
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ4"
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ5"
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ6"
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ7"
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ8"
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ9"
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ10"
	waitHold
}
script 48 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ11"
	waitHold
}
script 49 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ12"
	waitHold
}
script 50 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ13"
	waitHold
}
script 51 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ14"
	waitHold
}
script 52 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ15"
	waitHold
}
script 53 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ16"
	waitHold
}
script 54 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ17"
	waitHold
}
script 55 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ18"
	waitHold
}
script 56 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ19"
	waitHold
}
script 57 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ20"
	waitHold
}
script 58 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ21"
	waitHold
}
script 59 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ22"
	waitHold
}
script 60 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ23"
	waitHold
}
script 61 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ24"
	waitHold
}
script 62 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ25"
	waitHold
}
script 63 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ26"
	waitHold
}
script 64 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ27"
	waitHold
}
script 65 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ28"
	waitHold
}
script 66 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ29"
	waitHold
}
script 67 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ30"
	waitHold
}
script 68 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ31"
	waitHold
}
script 69 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ32"
	waitHold
}
script 70 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ33"
	waitHold
}
script 71 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ34"
	waitHold
}
script 72 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ35"
	waitHold
}
script 73 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ36"
	waitHold
}
script 74 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ37"
	waitHold
}
script 75 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ38"
	waitHold
}
script 76 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ39"
	waitHold
}
script 77 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ40"
	waitHold
}
script 78 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はなしデータ41"
	waitHold
}
script 79 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"Cスライダー"
	waitHold
}
script 80 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	タウンエリア2ニアル
	デンノウトビラヲ
	ヒラクカギ
	"""
	waitHold
}
script 81 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"パパのてがみ"
	waitHold
}
script 82 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビ ノ
	ザンリュウメモリー ヲ
	ジョキョスル コード
	"""
	waitHold
}
script 83 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビ ノ
	ザンリュウメモリー ヲ
	サッチスル スイショウ
	"""
	waitHold
}
script 84 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"こうくうけん"
	waitHold
}
script 85 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	インターネットノ
	ドコカノ トビラヲ
	ヒラクタメノ カギ
	"""
	waitHold
}
script 86 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ゆうきのあかし"
	waitHold
}
script 87 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"つよさのあかし"
	waitHold
}
script 88 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"えいちのあかし"
	waitHold
}
script 89 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"やさしさのあかし"
	waitHold
}
script 90 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ヒグレヤ ノ チラシ
	ゲンザイ
	"""
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"マイ"
	waitHold
}
script 91 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	タウンエリア ニ アル
	ヒグレヤ ソウコ ノ
	デンノウ キー
	"""
	waitHold
}
script 92 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ウインドマン ノ
	チカラ ヲ オサエル フエ
	イガラシ ラン ショユウ
	"""
	waitHold
}
script 93 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	コレヲノメバ ウイルスデモ
	コロンデシマウホド
	トテモ ツヨイ オサケ
	"""
	waitHold
}
script 94 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ソザイニ コダワッタ
	ホンカクハ スルメ
	カムホドニ アジガデル
	"""
	waitHold
}
script 95 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ビデオマンガ カケタ
	マキモドシ ヲ カイジョスル
	データガ ハイッタ ビデオ
	"""
	waitHold
}
script 96 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ビデオマンガ カケタ
	マキモドシ ヲ カイジョスル
	データガ ハイッタ ビデオ
	"""
	waitHold
}
script 97 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ビデオマンガ カケタ
	マキモドシ ヲ カイジョスル
	データガ ハイッタ ビデオ
	"""
	waitHold
}
script 98 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ボムシューズ"
	waitHold
}
script 99 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ボミすてばのカギ"
	waitHold
}
script 100 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"はっしんき"
	waitHold
}
script 101 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"めんじょう1"
	waitHold
}
script 102 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"めんじょう2"
	waitHold
}
script 103 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"めんじょう3"
	waitHold
}
script 104 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	タマコノ シショウノ イル
	エリアニ ツウジル
	トビラヲ ヒラクカギ
	"""
	waitHold
}
script 105 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デンノウセカイ ボヤケシヨウ
	ウォーターガン
	"""
	waitHold
}
script 106 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	キョウリョク ナ
	ミズ ノ パワー デ
	ヒ ヲ ケス バスター
	"""
	waitHold
}
script 107 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ショベル"
	waitHold
}
script 108 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	イタ ノ カタチヲシタ
	プログラム ナニ ニ
	ツカウカ ワカラナイ・・・
	"""
	waitHold
}
script 109 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	スイシンヨウ
	ジェットプログラム
	"""
	keyWait
		any = false
	clearMsg
	"""
	コレダケデハ ヤクニ
	タタナイ
	"""
	waitHold
}
script 110 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ツバサノ カタチヲシタ
	プログラム
	"""
	keyWait
		any = false
	clearMsg
	"""
	コレダケデハ ヤクニ
	タタナイ
	"""
	waitHold
}
script 111 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギA"
	waitHold
}
script 112 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギB"
	waitHold
}
script 113 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギC"
	waitHold
}
script 114 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギD"
	waitHold
}
script 115 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギE"
	waitHold
}
script 116 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"カギF"
	waitHold
}
script 117 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"コピーキー"
	waitHold
}
script 118 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ふっかつのしずく"
	waitHold
}
script 119 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ライオンのカギ"
	waitHold
}
script 120 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"のろいの人ぎょう"
	waitHold
}
script 121 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ネピュラコード"
	waitHold
}
script 122 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	インターネット ニ アル
	リョウリドウジョウ ノ
	キー
	"""
	waitHold
}
script 123 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	カレー ヲ ツクルタメノ
	ショクザイ
	"""
	waitHold
}
script 124 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"やさしさデータ"
	waitHold
}
script 125 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ジョーモンデンキノ HPト
	インターネット ヲ ツナグ
	コード ガ カカレタ テキスト
	"""
	waitHold
}
script 128 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビカスチュウニ
	L・Rボタンデ
	"""
	keyWait
		any = false
	clearMsg
	"""
	シロイ プログラムパーツヲ
	カイテンサセルコトガデキル
	"""
	waitHold
}
script 129 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビカスチュウニ
	L・Rボタンデ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ピンクノ プログラムパーツヲ
	カイテンサセルコトガデキル
	"""
	waitHold
}
script 130 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビカスチュウニ
	L・Rボタンデ
	"""
	keyWait
		any = false
	clearMsg
	"""
	キイロイ プログラムパーツヲ
	カイテンサセルコトガデキル
	"""
	waitHold
}
script 131 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビカスチュウニ
	L・Rボタンデ
	"""
	keyWait
		any = false
	clearMsg
	"""
	アカイ プログラムパーツヲ
	カイテンサセルコトガデキル
	"""
	waitHold
}
script 132 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビカスチュウニ
	L・Rボタンデ
	"""
	keyWait
		any = false
	clearMsg
	"""
	アオイ プログラムパーツヲ
	カイテンサセルコトガデキル
	"""
	waitHold
}
script 133 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ナビカスチュウニ
	L・Rボタンデ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ミドリノ プログラムパーツヲ
	カイテンサセルコトガデキル
	"""
	waitHold
}
script 144 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	メイル ノ パソコン ト
	インターネット ヲ ツナグ
	コード ガ カカレタ テキスト
	"""
	waitHold
}
script 145 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	デカオ ノ パソコン ト
	インターネット ヲ ツナグ
	コード ガ カカレタ テキスト
	"""
	waitHold
}
script 146 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ヤイト ノ パソコン ト
	インターネット ヲ ツナグ
	コード ガ カカレタ テキスト
	"""
	waitHold
}
script 147 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ホテルのPコード"
	waitHold
}
script 148 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"アジーナコード"
	waitHold
}
script 149 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"アッフリクコード"
	waitHold
}
script 150 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"シャーロコード"
	waitHold
}
script 151 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	シェロ・カスティロ ノ
	HPト、インターネット ヲ
	ツナグ
	"""
	keyWait
		any = false
	clearMsg
	"コード ガ カカレタ テキスト"
	waitHold
}
script 152 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"スペースPコード"
	waitHold
}
script 153 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"メイル ノ HP ノ バナー"
	waitHold
}
script 154 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"デカオ ノ HP ノ バナー"
	waitHold
}
script 155 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"ヤイト ノ HP ノ バナー"
	waitHold
}
script 156 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ジョーモンデンキ ノ
	HP ノ バナー
	"""
	waitHold
}
script 157 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	シェロ・カスティロ ノ
	HP ノ バナー
	"""
	waitHold
}
script 158 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	アメロッパホテル ノ
	HP ノ バナー
	"""
	waitHold
}
script 159 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	シャーロウチュウセンター ノ
	HPノ バナー
	"""
	waitHold
}
script 160 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	HPのマックスヲ
	+20
	"""
	waitHold
}
script 161 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ナビカスノ
	メモリーマップガ
	ヒロクナル
	"""
	waitHold
}
script 162 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	レギュラーシステムノ
	ヨウリョウヲ+1
	"""
	waitHold
}
script 163 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	レギュラーシステムノ
	ヨウリョウヲ+2
	"""
	waitHold
}
script 164 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	レギュラーシステムノ
	ヨウリョウヲ+3
	"""
	waitHold
}
script 165 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	サブチップヲ
	モテルカズガフエル
	"""
	waitHold
}
script 175 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	waitHold
}
script 176 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"HPヲ50カイフク"
	waitHold
}
script 177 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"HPヲマックスマデカイフク"
	waitHold
}
script 178 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	シバラクノアイダ
	ヨワイテキト
	デアワナクナル
	"""
	waitHold
}
script 179 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ミステリーデータニカカッタ
	ワナヲハズス
	"""
	waitHold
}
script 180 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	チョクゼンニデアッタテキト
	モウイチドデアイヤスクナル
	"""
	waitHold
}
script 181 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	セキュリティノカカッタ
	ミステリーデータヲカイセキスル
	"""
	waitHold
}
script 192 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"1:タウンエリアにいる\n  ネットショウニンのかず"
	keyWait
		any = false
	clearMsg
	"2:タコヤキのかず"
	keyWait
		any = false
	clearMsg
	"3:タウンエリア3にある\n  ま上か ま下をさしている\n  サンカクマークのかず"
	keyWait
		any = false
	clearMsg
	"4:電気街にある\n  じはんきのかず"
	keyWait
		any = false
	clearMsg
	"5:秋原町にはえている\n  みきが見える木のかず"
	keyWait
		any = false
	clearMsg
	"6:秋原エリアの\n  「いえマーク」 のかず"
	keyWait
		any = false
	clearMsg
	"7:15+2+3-14="
	waitHold
}
script 193 mmbn4 {
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"1:JO-MONのかず"
	keyWait
		any = false
	clearMsg
	"2:秋原エリア2の\n  メインストリートは まん中の\n  ひろばから何本にわかれてる?"
	keyWait
		any = false
	clearMsg
	"3:「"
	printItem
		buffer = 0
		item = 3
	"」 は、\n  ぜんぶで なんびきいたか?"
	keyWait
		any = false
	clearMsg
	"4:今、でんぱとうの電脳にいる\n  ナビのかず"
	keyWait
		any = false
	clearMsg
	"5:タウンエリア2の\n  さかみちのかず"
	keyWait
		any = false
	clearMsg
	"6:タウンエリア3にある\n  ま上か ま下をさしている\n  サンカクマークのかず"
	keyWait
		any = false
	clearMsg
	"7:秋原町にある\n  クマのぬいぐるみ のかず"
	waitHold
}
script 194 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"1:えきしょうモニターの電脳の\n  中のプログラムくんのかず"
	keyWait
		any = false
	clearMsg
	"2:15+2+3-14="
	keyWait
		any = false
	clearMsg
	"3:タコヤキのかず"
	keyWait
		any = false
	clearMsg
	"4:タウンエリアにいる\n  ネットショウニンのかず"
	keyWait
		any = false
	clearMsg
	"5:秋原エリア2の\n  メインストリートは まん中の\n  ひろばから何本にわかれてる?"
	keyWait
		any = false
	clearMsg
	"6:今、でんぱとうの電脳にいる\n  ナビのかず"
	keyWait
		any = false
	clearMsg
	"7:秋原町にはえている\n  みきが見える木のかず"
	waitHold
}
script 195 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	ダークチップ・・・
	ケッシテツカッテハイケナイ
	"""
	waitHold
}
script 196 mmbn4 {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	コジンヨウ ケイタイタンマツ
	ロックマンハ コノPETニ
	インストール サレテイル
	"""
	waitHold
}
@archive 6E61F4
@size 48

script 0 mmbn4s {
	"NONE"
	end
}
script 1 mmbn4s {
	"スーパーアーマー"
	end
}
script 2 mmbn4s {
	"カスタム1"
	end
}
script 3 mmbn4s {
	"カスタム2"
	end
}
script 4 mmbn4s {
	"メガフォルダ1"
	end
}
script 5 mmbn4s {
	"メガフォルダ2"
	end
}
script 6 mmbn4s {
	"ギガフォルダ1"
	end
}
script 7 mmbn4s {
	"ファーストバリア"
	end
}
script 8 mmbn4s {
	"シールド"
	end
}
script 9 mmbn4s {
	"リフレクト"
	end
}
script 10 mmbn4s {
	"カワリミマジック"
	end
}
script 11 mmbn4s {
	"フロートシューズ"
	end
}
script 12 mmbn4s {
	"エアシューズ"
	end
}
script 13 mmbn4s {
	"アンダーシャツ"
	end
}
script 14 mmbn4s {
	"シノビダッシュ"
	end
}
script 15 mmbn4s {
	"オイルボディ"
	end
}
script 16 mmbn4s {
	"アイムフィッシュ"
	end
}
script 17 mmbn4s {
	"バッテリーモード"
	end
}
script 18 mmbn4s {
	"ジャングルランド"
	end
}
script 19 mmbn4s {
	"コレクターズアイ"
	end
}
script 20 mmbn4s {
	"ユーモアセンス"
	end
}
script 21 mmbn4s {
	"バスターパック"
	end
}
script 22 mmbn4s {
	"ボディパック"
	end
}
script 23 mmbn4s {
	"サイトバッチ"
	end
}
script 24 mmbn4s {
	"バグストッパー"
	end
}
script 25 mmbn4s {
	"ソウルクリーナー"
	end
}
script 26 mmbn4s {
	"ラッシュサポート"
	end
}
script 27 mmbn4s {
	"ビートサポート"
	end
}
script 28 mmbn4s {
	"タンゴサポート"
	end
}
script 29 mmbn4s {
	"ヒートウエポン"
	end
}
script 30 mmbn4s {
	"アクアウエポン"
	end
}
script 31 mmbn4s {
	"エレキウエポン"
	end
}
script 32 mmbn4s {
	"ウッドウエポン"
	end
}
script 33 mmbn4s {
	"インビジブル"
	end
}
script 34 mmbn4s {
	"アタック+1"
	end
}
script 35 mmbn4s {
	"ラピッド+1"
	end
}
script 36 mmbn4s {
	"チャージ+1"
	end
}
script 37 mmbn4s {
	"アタックMAX"
	end
}
script 38 mmbn4s {
	"ラピッドMAX"
	end
}
script 39 mmbn4s {
	"チャージMAX"
	end
}
script 40 mmbn4s {
	"ウエポンLV+1"
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
@archive 6E63C4
@size 48

script 0 mmbn4s {
	end
}
script 1 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	攻撃をくらっても
	のけぞらなくなる!
	"""
	waitHold
	end
}
script 2 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	カスタム画面で
	さいしょにえらべる
	チップ枚数が+1
	"""
	waitHold
	end
}
script 3 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	カスタム画面で
	さいしょにえらべる
	チップ枚数が+2
	"""
	waitHold
	end
}
script 4 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	フォルダに入れられる
	メガクラスチップの
	枚数が+1
	"""
	waitHold
	end
}
script 5 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	フォルダに入れられる
	メガクラスチップの
	枚数が+2
	"""
	waitHold
	end
}
script 6 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	フォルダに入れられる
	ギガクラスチップの
	枚数が+1
	"""
	waitHold
	end
}
script 7 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	さいしょからバリアが
	そうびされている!
	"""
	waitHold
	end
}
script 8 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	B+左のコマンドで
	ほとんどの攻撃を
	ふせぐシールド!
	"""
	waitHold
	end
}
script 9 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	B+左のコマンドで
	攻撃をはねかえす
	リフレクト!
	"""
	waitHold
	end
}
script 10 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	B+左のコマンドで
	攻撃をうけたふりして
	しゅりけんをなげる!
	"""
	waitHold
	end
}
script 11 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	地面からすこしういて
	いるのでパネルの
	えいきょうをうけない
	"""
	waitHold
	end
}
script 12 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	パネルのないマスでも
	いどうできる!
	"""
	waitHold
	end
}
script 13 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ちしりょうのダメージ
	をうけてもHP1で
	とりあえずたえる!
	"""
	waitHold
	end
}
script 14 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	自分よりよわいてきと
	であわなくなる!
	"""
	waitHold
	end
}
script 15 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	炎属性ウイルスが
	大スキなオイルをぬり
	ねらわれやすくなる!
	"""
	waitHold
	end
}
script 16 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	さかなになりきって
	水属性のウイルスから
	みつけられやすくなる
	"""
	waitHold
	end
}
script 17 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	バッテリーじょうたい
	で電気属性ウイルスが
	よってくるようになる
	"""
	waitHold
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ジャングルのかおりを
	ほうしゅつして木属性
	ウイルスをひきつける
	"""
	waitHold
	end
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	てきのざんがいから
	チップデータをみつけ
	だすがんりきがアップ
	"""
	waitHold
	end
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	きまじめすぎるナビに
	くみこんでLボタンで
	はなしてみてください
	"""
	waitHold
	end
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	バスターのアタック、
	ラピッド、チャージが
	それぞれ+3!
	"""
	waitHold
	end
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	アーマー、シャツ
	エア、フロートの
	4てんパック!
	"""
	waitHold
	end
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	せんざいのうりょくを
	100%ひきだす
	キケンなプログラム
	"""
	waitHold
	end
}
script 24 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	バグの発生をおさえる
	とくしゅなプログラム
	"""
	waitHold
	end
}
script 25 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	おのれのあくぎょうを
	くいあらためるための
	しゅぎょうプログラム
	"""
	waitHold
	end
}
script 26 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	たいせんせんよう!
	きえたあいてのニオイ
	をかぎつけとびかかる
	"""
	waitHold
	end
}
script 27 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	たいせんせんよう!
	メガクラスいじょうの
	チップをうばいさる
	"""
	waitHold
	end
}
script 28 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	たいせんせんよう!
	ひんしになったときに
	てあてをしてくれる!
	"""
	waitHold
	end
}
script 29 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ヒートウエポン"
	waitHold
	end
}
script 30 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"アクアウエポン"
	waitHold
	end
}
script 31 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"エレキウエポン"
	waitHold
	end
}
script 32 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ウッドウエポン"
	waitHold
	end
}
script 33 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"インビジブル"
	waitHold
	end
}
script 34 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ロックバスターの
	攻撃力が1アップ!
	"""
	waitHold
	end
}
script 35 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ロックバスターの
	連射力が1アップ!
	"""
	waitHold
	end
}
script 36 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ロックバスターの
	チャージ力が
	1アップ!
	"""
	waitHold
	end
}
script 37 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ロックバスターの
	攻撃力がMAXに!
	"""
	waitHold
	end
}
script 38 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ロックバスターの
	連射力がMAXに!
	"""
	waitHold
	end
}
script 39 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ロックバスターの
	チャージ力が
	MAXに!
	"""
	waitHold
	end
}
script 40 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ウエポンLV+1"
	waitHold
	end
}
script 41 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	マックスHPが
	50ふえる!
	"""
	waitHold
	end
}
script 42 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	マックスHPが
	100ふえる!
	"""
	waitHold
	end
}
script 43 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	マックスHPが
	200ふえる!
	"""
	waitHold
	end
}
script 44 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	マックスHPが
	300ふえる!
	"""
	waitHold
	end
}
script 45 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	マックスHPが
	400ふえる!
	"""
	waitHold
	end
}
script 46 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	マックスHPが
	500ふえる!
	"""
	waitHold
	end
}
script 47 mmbn4s {
	"RUNしますか?"
	end
}
@archive 6E6A3C
@size 244

script 0 mmbn4s {
	"xxうそメッセージですxx"
	end
}
script 1 mmbn4s {
	"_________秋原町■"
	end
}
script 2 mmbn4s {
	"_____熱斗のリビング■"
	end
}
script 3 mmbn4s {
	"_______熱斗のへや■"
	end
}
script 4 mmbn4s {
	"______メイルのへや■"
	end
}
script 5 mmbn4s {
	"______デカオのへや■"
	end
}
script 6 mmbn4s {
	"______やいとのへや■"
	end
}
script 7 mmbn4s {
	"________ヒグレヤ■"
	end
}
script 10 mmbn4s {
	"____電気街1ちょうめ■"
	end
}
script 11 mmbn4s {
	"____電気街2ちょうめ■"
	end
}
script 12 mmbn4s {
	"_________ひろば■"
	end
}
script 18 mmbn4s {
	"___デンサンドームまえ■"
	end
}
script 19 mmbn4s {
	"______ドームろうか■"
	end
}
script 20 mmbn4s {
	"____ドームひかえしつ■"
	end
}
script 21 mmbn4s {
	"_______スタジアム■"
	end
}
script 23 mmbn4s {
	end
}
script 24 mmbn4s {
	"___エントランスゲート■"
	end
}
script 25 mmbn4s {
	"____ちゅうおうひろば■"
	end
}
script 26 mmbn4s {
	"_______ひかえしつ■"
	end
}
script 27 mmbn4s {
	"__くうちゅうスタジアム■"
	end
}
script 28 mmbn4s {
	"____メルヒェンひろば■"
	end
}
script 29 mmbn4s {
	"__きゅうけつきのやかた■"
	end
}
script 36 mmbn4s {
	"_______アメロッパ■"
	end
}
script 37 mmbn4s {
	"__コロッセオアベニュー■"
	end
}
script 38 mmbn4s {
	"_______きゃくしつ■"
	end
}
script 39 mmbn4s {
	"__コロッセオひかえしつ■"
	end
}
script 40 mmbn4s {
	"_______コロッセオ■"
	end
}
script 41 mmbn4s {
	"________アジーナ■"
	end
}
script 42 mmbn4s {
	"_____アジーナいせき■"
	end
}
script 43 mmbn4s {
	"_______アッフリク■"
	end
}
script 44 mmbn4s {
	"________シャーロ■"
	end
}
script 45 mmbn4s {
	"____うちゅうセンター■"
	end
}
script 50 mmbn4s {
	"______かんそくしつ■"
	end
}
script 51 mmbn4s {
	"_______おくじょう■"
	end
}
script 52 mmbn4s {
	"________ANSA■"
	end
}
script 53 mmbn4s {
	"_____ANSAロビー■"
	end
}
script 55 mmbn4s {
	"___でんぱとうの電脳1■"
	end
}
script 56 mmbn4s {
	"___でんぱとうの電脳2■"
	end
}
script 58 mmbn4s {
	"_ぬいぐるみロボの電脳1■"
	end
}
script 59 mmbn4s {
	"_ぬいぐるみロボの電脳2■"
	end
}
script 60 mmbn4s {
	"_ぬいぐるみロボの電脳3■"
	end
}
script 61 mmbn4s {
	"_ぬいぐるみロボの電脳4■"
	end
}
script 65 mmbn4s {
	"_しょうわくせいの電脳1■"
	end
}
script 66 mmbn4s {
	"_しょうわくせいの電脳2■"
	end
}
script 67 mmbn4s {
	"_しょうわくせいの電脳3■"
	end
}
script 68 mmbn4s {
	"_しょうわくせいの電脳4■"
	end
}
script 69 mmbn4s {
	"___コントロールエリア■"
	end
}
script 75 mmbn4s {
	"_______熱斗のHP■"
	end
}
script 76 mmbn4s {
	"______メイルのHP■"
	end
}
script 77 mmbn4s {
	"______デカオのHP■"
	end
}
script 78 mmbn4s {
	"______やいとのHP■"
	end
}
script 79 mmbn4s {
	"______ホテルのHP■"
	end
}
script 80 mmbn4s {
	"シェロ・カスティロのHP■"
	end
}
script 81 mmbn4s {
	"__ジョーモン電気のHP■"
	end
}
script 82 mmbn4s {
	"_うちゅうセンターのHP■"
	end
}
script 83 mmbn4s {
	"______レンジの電脳■"
	end
}
script 84 mmbn4s {
	"_____ステレオの電脳■"
	end
}
script 85 mmbn4s {
	"____タコヤキきの電脳■"
	end
}
script 86 mmbn4s {
	"_ドームNBマシンの電脳■"
	end
}
script 87 mmbn4s {
	"___でんどうゴマの電脳■"
	end
}
script 88 mmbn4s {
	"えきしょうモニターの電脳■"
	end
}
script 89 mmbn4s {
	"_シェロNBマシンの電脳■"
	end
}
script 90 mmbn4s {
	"_____ぶつぞうの電脳■"
	end
}
script 91 mmbn4s {
	"____ヌポポぞうの電脳■"
	end
}
script 92 mmbn4s {
	"___コンピュータの電脳■"
	end
}
script 93 mmbn4s {
	"____ぬいぐるみの電脳■"
	end
}
script 94 mmbn4s {
	"_コロッセオNBMの電脳■"
	end
}
script 95 mmbn4s {
	"___ライオンぞうの電脳■"
	end
}
script 96 mmbn4s {
	"_____イヌ小屋の電脳■"
	end
}
script 97 mmbn4s {
	"_____ゲームきの電脳■"
	end
}
script 98 mmbn4s {
	"_____じはんきの電脳■"
	end
}
script 100 mmbn4s {
	"__カードリーダーの電脳■"
	end
}
script 101 mmbn4s {
	"_____すいどうの電脳■"
	end
}
script 102 mmbn4s {
	"____けんばいきの電脳■"
	end
}
script 103 mmbn4s {
	"______やたいの電脳■"
	end
}
script 104 mmbn4s {
	"____アンテナの電脳1■"
	end
}
script 105 mmbn4s {
	"____アンテナの電脳2■"
	end
}
script 106 mmbn4s {
	"____アンテナの電脳3■"
	end
}
script 107 mmbn4s {
	"____アンテナの電脳4■"
	end
}
script 108 mmbn4s {
	"_____だいぶつの電脳■"
	end
}
script 109 mmbn4s {
	"____めがみぞうの電脳■"
	end
}
script 110 mmbn4s {
	"___えいゆうぞうの電脳■"
	end
}
script 111 mmbn4s {
	"クッキングマシンの電脳■"
	end
}
script 116 mmbn4s {
	"__ミズガミサマの電脳1■"
	end
}
script 117 mmbn4s {
	"__ミズガミサマの電脳2■"
	end
}
script 118 mmbn4s {
	"__ミズガミサマの電脳3■"
	end
}
script 119 mmbn4s {
	"__ミズガミサマの電脳4■"
	end
}
script 120 mmbn4s {
	"__ミズガミサマの電脳5■"
	end
}
script 121 mmbn4s {
	"__ミズガミサマの電脳6■"
	end
}
script 122 mmbn4s {
	"__ミズガミサマの電脳7■"
	end
}
script 123 mmbn4s {
	"__ミズガミサマの電脳8■"
	end
}
script 124 mmbn4s {
	"__ミズガミサマの電脳9■"
	end
}
script 125 mmbn4s {
	"_ミズガミサマの電脳10■"
	end
}
script 126 mmbn4s {
	"_ミズガミサマの電脳11■"
	end
}
script 127 mmbn4s {
	"_ミズガミサマの電脳12■"
	end
}
script 128 mmbn4s {
	"_ミズガミサマの電脳13■"
	end
}
script 129 mmbn4s {
	"_ミズガミサマの電脳14■"
	end
}
script 130 mmbn4s {
	"_ミズガミサマの電脳15■"
	end
}
script 131 mmbn4s {
	"_ミズガミサマの電脳16■"
	end
}
script 132 mmbn4s {
	"______秋原エリア1■"
	end
}
script 133 mmbn4s {
	"______秋原エリア2■"
	end
}
script 134 mmbn4s {
	"______秋原エリア3■"
	end
}
script 137 mmbn4s {
	"_____タウンエリア1■"
	end
}
script 138 mmbn4s {
	"_____タウンエリア2■"
	end
}
script 139 mmbn4s {
	"_____タウンエリア3■"
	end
}
script 140 mmbn4s {
	"_____タウンエリア4■"
	end
}
script 142 mmbn4s {
	"_____パークエリア1■"
	end
}
script 143 mmbn4s {
	"_____パークエリア2■"
	end
}
script 144 mmbn4s {
	"_____パークエリア3■"
	end
}
script 147 mmbn4s {
	"_____アジーナエリア■"
	end
}
script 148 mmbn4s {
	"____アメロッパエリア■"
	end
}
script 149 mmbn4s {
	"____アッフリクエリア■"
	end
}
script 150 mmbn4s {
	"_____シャーロエリア■"
	end
}
script 152 mmbn4s {
	"__ウラインターネット1■"
	end
}
script 153 mmbn4s {
	"__ウラインターネット2■"
	end
}
script 154 mmbn4s {
	"__ウラインターネット3■"
	end
}
script 155 mmbn4s {
	"__ウラインターネット4■"
	end
}
script 156 mmbn4s {
	"__ウラインターネット5■"
	end
}
script 157 mmbn4s {
	"__ウラインターネット6■"
	end
}
script 158 mmbn4s {
	"____ブラックアース1■"
	end
}
script 159 mmbn4s {
	"____ブラックアース2■"
	end
}
script 240 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 4
		padZeros = false
		padLeft = true
	"/"
	printBuffer
		buffer = 1
		minLength = 4
		padZeros = false
		padLeft = true
	end
}
script 241 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 242 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 4
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 243 mmbn4s {
	"NAME "
	printShortString
	" "
	end
}
@archive 6E73D8
@size 40

script 0 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	これが
	ナビカスタマイザーの画面だ
	"""
	keyWait
		any = false
	clearMsg
	"""
	今、「ロックマン.EXE」という
	ネットナビプログラムは
	終了しょり中・・・
	"""
	keyWait
		any = false
	clearMsg
	"まあ、ねむっているようなものだな"
	keyWait
		any = false
	clearMsg
	"""
	そのあいだに、ここでプログラムを
	くみ、ロックマンの のうりょくを
	"""
	keyWait
		any = false
	clearMsg
	"""
	カスタマイズすることが
	できるってワケだ
	"""
	keyWait
		any = false
	clearMsg
	flagSet
		flag = 38
	"""
	カスタマイズは
	この「メモリMAP」に・・・
	"""
	waitFlag
		flag = 39
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Dad
	msgOpenQuick
	flagSet
		flag = 38
	"""
	これらの プログラムを
	セットすることで おこなうぞ
	"""
	waitFlag
		flag = 39
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Dad
	msgOpenQuick
	"""
	よし、
	じゃあ ちしりょうダメージを
	うけてもHP1で たえられる
	"""
	keyWait
		any = false
	clearMsg
	"""
	プログラム、「アンダーシャツ」を
	くみこんでみるか!
	"""
	keyWait
		any = false
	clearMsg
	"""
	右上の ウインドウから、
	「アンダーシャツ」を えらんで、
	メモリMAPに
	"""
	keyWait
		any = false
	clearMsg
	"セットするわけだが・・・"
	keyWait
		any = false
	clearMsg
	"""
	ここで まず、
	ひとつめのルールを おしえるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	メモリMAPの ちゅうしんに
	ラインが あるだろう
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 3 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	これを、
	「コマンドライン」と
	いうんだが・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	プログラムは、このコマンドライン
	の上に おかなくちゃ
	こうかが はっきされないんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	1マスでも
	かかっていればOKだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	よし、じゃあ
	「アンダーシャツ」を
	セットしてみよう!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	おっと、
	それは「アンダーシャツ」
	じゃないぞ
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	それは、
	今は えらばなくていいぞ
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	おっと、それじゃコマンドラインに
	かかってないぞ
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	よし、じゃあつぎは
	「アタック+1」を セットしよう
	"""
	keyWait
		any = false
	clearMsg
	"えらんでみろ、熱斗"
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	おっと、
	それは「アタック+1」じゃないぞ
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"それは、今は えらばなくていいぞ"
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	せっかくセットしたんだから
	今は うごかさなくてもいいぞ
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	と、ここで
	2つめのルールを おしえるぞ
	この「アタック+1」を 見てみろ
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	しかくい もようが
	入っているだろう、
	"""
	keyWait
		any = false
	clearMsg
	"""
	こういうプログラムを
	「プラスパーツ」というんだが・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	プラスパーツは、コマンドラインの
	上にセットしては いけないんだ
	ちゅういするんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	じゃあ、
	「アタック+1」を
	セットしてみろ
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	「アタック+1」は、
	プラスパーツだから
	"""
	keyWait
		any = false
	clearMsg
	"""
	コマンドラインの上に
	おいちゃダメだぞ
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	そこは「アンダーシャツ」が
	すでに おいてあるから、ダメだぞ
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	よし、さいごに
	「ラピッド+1」を セットしよう
	"""
	keyWait
		any = false
	clearMsg
	"えらんでみろ、熱斗"
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"それは、今は えらばなくていいぞ"
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	せっかくセットしたんだから
	今は うごかさなくてもいいぞ
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	さて、3つめのルールを
	おしえるぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	おなじカラーの プログラムを
	となりあって おいてはいけない!
	"""
	keyWait
		any = false
	clearMsg
	"""
	今だと、
	この「アンダーシャツ」と・・・
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 29 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	この、今えらんでいる
	「ラピッド+1」が
	おなじカラーだ
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 30 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	この2つが くっつかないように、
	きをつけるんだぞ
	"""
	keyWait
		any = false
	clearMsg
	"じゃあ、セットしてみろ"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	「ラピッド+1」は、
	プラスパーツだから
	"""
	keyWait
		any = false
	clearMsg
	"""
	コマンドラインの上に
	おいちゃダメだぞ
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	そこは、ほかのプログラムが
	すでに おいてあるから ダメだ
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	おいおい、おなじホワイトカラーの
	プログラムどうしを、となりあって
	セットしちゃ ダメだぞ
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	よし、いよいよ
	「RUN」について
	せつめいするぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	RUNは
	ロックマン.EXEという
	ネットナビプログラムを
	"""
	keyWait
		any = false
	clearMsg
	"きどうするコマンドなんだ"
	keyWait
		any = false
	clearMsg
	"""
	RUNすれば、メモリMAPに
	セットしたプログラムが
	ゆうこうになったロックマンが
	"""
	keyWait
		any = false
	clearMsg
	"""
	目をさます
	RUNしてみろ、熱斗
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	せっかくセットしたんだから
	今は うごかさなくてもいいぞ
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	よし、RUNかんりょうだ!
	ロックマンに はなしかけてみろ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	う、うまくいってるかな・・・
	ロックマン、きぶんは どうだ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"・・・う、うーん・・・"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	あれ・・・
	お、おいロックマン!?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	ふわ・・・おはよ、熱斗くん
	どうやら、うまくいった
	みたいだね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	パワーアップしたのが
	じぶんでもわかる!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	な、なんだ、ビックリするじゃん
	おどかすない!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Dad
	"""
	せいじょうに きどうしたようだな
	もし、あたらしいプログラムを
	手にいれたら、おなじように
	"""
	keyWait
		any = false
	clearMsg
	"くみこんだら いいからな"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	よーし!
	どんどんプログラムを くみこんで
	ロックマンを つよくしていくぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Dad
	"""
	ちょっとまて 熱斗、
	あらためていうが、さっきおしえた
	3つのルールは、
	"""
	keyWait
		any = false
	clearMsg
	"かならず まもるんだぞ"
	keyWait
		any = false
	clearMsg
	"""
	ルールをまもらずに まちがった
	プログラミングをすると、
	バグのげんいんに なるからな
	"""
	keyWait
		any = false
	clearMsg
	"""
	あと、プログラムのいろは
	どんないろでもおけるわけじゃない
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぜんぶで4しょくまでにしなければ
	ならないんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	5しょく以上のパーツを
	同時にくみこんでしまうと
	ロックマンにふたんがかかり、
	"""
	keyWait
		any = false
	clearMsg
	"""
	やはりバグの
	げんいんになってしまう
	"""
	keyWait
		any = false
	clearMsg
	"""
	ここに今 くみこまれている
	いろの数がひょうじされて
	いるからさんこうにするといい
	"""
	keyWait
		any = false
	clearMsg
	"""
	わくないにおさまっていれば
	OKだぞ
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	waitHold
}
script 38 mmbn4 {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Lan
	msgOpenQuick
	"""
	うん、わかった
	ありがとう、パパ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Dad
	"""
	じゃあ、
	これでナビカスタマイザーの
	せつめいを 終わる
	"""
	keyWait
		any = false
	clearMsg
	"しっかりやれよ、2人とも!"
	keyWait
		any = false
	end
}
@archive 6E7A4C
@size 160

script 0 mmbn4s {
	"""
	ダークライン *
	バグチェーン *
	フォルテ   X
	"""
	end
}
script 1 mmbn4s {
	"""
	ダークライン  *
	バグチェーン  *
	フォルテアナザーX
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
	ヒートショット B
	ヒートショット C
	ヒートショット D
	"""
	end
}
script 6 mmbn4s {
	"""
	ヒートブイ C
	ヒートブイ D
	ヒートブイ E
	"""
	end
}
script 7 mmbn4s {
	"""
	ヒートサイド D
	ヒートサイド E
	ヒートサイド F
	"""
	end
}
script 8 mmbn4s {
	"""
	ヒートショット D
	ヒートブイ   D
	ヒートサイド  D
	"""
	end
}
script 9 mmbn4s {
	end
}
script 10 mmbn4s {
	"""
	バブルショット P
	バブルショット Q
	バブルショット R
	"""
	end
}
script 11 mmbn4s {
	"""
	バブルブイ C
	バブルブイ D
	バブルブイ E
	"""
	end
}
script 12 mmbn4s {
	"""
	バブルサイド D
	バブルサイド E
	バブルサイド F
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
	キャノン A
	キャノン B
	キャノン C
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
	ハイキャノン C
	ハイキャノン D
	ハイキャノン E
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
	メガキャノン E
	メガキャノン F
	メガキャノン G
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
	ワイドショット1C
	ワイドショット1D
	ワイドショット1E
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
	ワイドショット2L
	ワイドショット2M
	ワイドショット2N
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
	ワイドショット3S
	ワイドショット3T
	ワイドショット3U
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
	フレイムライン1F
	フレイムライン1G
	フレイムライン1H
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
	フレイムライン2D
	フレイムライン2E
	フレイムライン2F
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
	フレイムライン3J
	フレイムライン3K
	フレイムライン3L
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
	ブーメラン1 L
	ブーメラン1 M
	ブーメラン1 N
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
	ブーメラン2 L
	ブーメラン2 M
	ブーメラン2 N
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
	ブーメラン3 S
	ブーメラン3 T
	ブーメラン3 U
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
	ツインファング1A
	ツインファング1B
	ツインファング1C
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
	ツインファング2O
	ツインファング2P
	ツインファング2Q
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
	ツインファング3F
	ツインファング3G
	ツインファング3H
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
	エアホッケー1 D
	エアホッケー1 E
	エアホッケー1 F
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
	エアホッケー2 I
	エアホッケー2 J
	エアホッケー2 K
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
	エアホッケー3 U
	エアホッケー3 V
	エアホッケー3 W
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
	マグボルト1 B
	マグボルト1 C
	マグボルト1 D
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
	マグボルト2 E
	マグボルト2 F
	マグボルト2 G
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
	マグボルト3 A
	マグボルト3 B
	マグボルト3 C
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
	ソード    E
	ワイドソード E
	ロングソード E
	"""
	end
}
script 121 mmbn4s {
	"""
	ソード    L
	ワイドソード L
	ロングソード L
	"""
	end
}
script 122 mmbn4s {
	"""
	ソード    S
	ワイドソード S
	ロングソード S
	"""
	end
}
script 123 mmbn4s {
	"""
	ソード     S
	ワイドブレード S
	ロングブレード S
	"""
	end
}
script 124 mmbn4s {
	end
}
script 125 mmbn4s {
	"""
	ガンデルソル1 G
	ガンデルソル2 G
	ガンデルソル3 G
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
	カウントボム J
	カウントボム K
	カウントボム L
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
	ダークホール  *
	ダークライン  *
	ポイズンアヌビスA
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
	カワリミ    M
	ナビスカウト  M
	ムラマサブレードM
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
	スプレッドガン L
	スプレッドガン M
	スプレッドガン N
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
@archive 6E7E18
@size 41

script 0 mmbn4s {
	"かがみ"
	end
}
script 1 mmbn4s {
	"くし"
	end
}
script 2 mmbn4s {
	"たいぼく"
	end
}
script 3 mmbn4s {
	"どうぞう"
	end
}
script 4 mmbn4s {
	"こんしんの一撃"
	end
}
script 5 mmbn4s {
	"キッスのあらし"
	end
}
script 6 mmbn4s {
	"おせっきょう"
	end
}
script 7 mmbn4s {
	"ウィザーモンキー"
	end
}
script 8 mmbn4s {
	"ウィザーキャット"
	end
}
script 9 mmbn4s {
	"ウィザードラゴン"
	end
}
script 10 mmbn4s {
	"まほうふうじ"
	end
}
script 11 mmbn4s {
	"はげしいダンス"
	end
}
script 12 mmbn4s {
	"さむいダジャレ"
	end
}
script 13 mmbn4s {
	"はなのよさ"
	end
}
script 14 mmbn4s {
	"ひっかき"
	end
}
script 15 mmbn4s {
	"目のよさ"
	end
}
script 16 mmbn4s {
	"つっこみ"
	end
}
script 17 mmbn4s {
	"せんそう"
	end
}
script 18 mmbn4s {
	"かんじょう"
	end
}
script 19 mmbn4s {
	"おわらい"
	end
}
script 20 mmbn4s {
	"プライド"
	end
}
script 21 mmbn4s {
	"ことり"
	end
}
script 22 mmbn4s {
	"ダンス"
	end
}
script 23 mmbn4s {
	"タンス"
	end
}
script 24 mmbn4s {
	"ゾンビ"
	end
}
script 25 mmbn4s {
	"おもちゃのぶひん"
	end
}
script 26 mmbn4s {
	"ダンサー"
	end
}
script 27 mmbn4s {
	"せいじか"
	end
}
script 28 mmbn4s {
	"のうさぎょうロボ"
	end
}
script 29 mmbn4s {
	"ガン・デル・ソル"
	end
}
script 30 mmbn4s {
	"しんくのマフラー"
	end
}
script 31 mmbn4s {
	"しんくのパンツ"
	end
}
script 32 mmbn4s {
	"ワルシャーP37"
	end
}
script 33 mmbn4s {
	"おてんこさま"
	end
}
script 34 mmbn4s {
	"太陽の光"
	end
}
script 35 mmbn4s {
	"月の光"
	end
}
script 36 mmbn4s {
	"おこんてさま"
	end
}
script 37 mmbn4s {
	"てんまど"
	end
}
script 38 mmbn4s {
	"たいよーー!!"
	end
}
script 39 mmbn4s {
	"おかーさーん!"
	end
}
script 40 mmbn4s {
	"おじさんのアタマ"
	end
}
@archive 6E7F84
@size 255

script 0 mmbn4 {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 10,
			ratio = 32
			jump = 20,
			ratio = 32
			jump = 30
		]
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 1,
			ratio = 32
			jump = 2,
			ratio = 32
			jump = 3
		]
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	するどいブーメランをとばしてくる
	ラウンダってウイルスが
	いるでしょ?
	"""
	keyWait
		any = false
	clearMsg
	"""
	あのウイルスの じゃくてんは
	クチなんだよ
	アイツにダメージをあたえるには、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ブーメランをとばした
	しゅんかんを ねらうんだ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そんなコト、とっくのむかしに
	しってるぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"クチを・・・"
	keyWait
		any = false
	clearMsg
	"ねラウンダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"だから、しってるって!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"ねラウンダ"
	keyWait
		any = false
	end
}
script 1 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"あいうえお さくぶん~!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"いえ~ぃ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"おだいは「デカオ」 !!"
	keyWait
		any = false
	clearMsg
	"まずは、デカオくんの「で」 !"
	keyWait
		any = false
	clearMsg
	"データライブラリを"
	keyWait
		any = false
	clearMsg
	"デカオくんの「か」 !"
	keyWait
		any = false
	clearMsg
	"かなり うめてる"
	keyWait
		any = false
	clearMsg
	"デカオくんの「お」 !"
	keyWait
		any = false
	clearMsg
	"おじさんを このあいだ見たよ"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"デカオと かんけいないじゃん!"
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あのね、ボク みんなから
	マジメなナビって おもわれてる
	みたいだけど、
	"""
	keyWait
		any = false
	clearMsg
	"""
	マジメキャラって、けっこう
	タイヘンなんだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	たまには ヘンなコトいって
	みんなを わらわせたりしたいんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	だから今日は、ユーモアセンスの
	チカラを かりて、ヘンなコトを
	いってみようとおもうんだ!
	"""
	keyWait
		any = false
	clearMsg
	"い、"
	waitSkip
		frames = 30
	"いくよ"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	keyWait
		any = false
	clearMsg
	"プッチョンピー!!"
	keyWait
		any = false
	clearMsg
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"ダ、ダメだ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	ロックマン、まだまだテレが
	のこってるぜ!
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、今日はステキな
	ゲストを つれてきたよ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ん・・・ゲスト?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	いっしゅんだから、
	ぜったい見のがしちゃダメだよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	それでは ゲストのかた、
	おねがいします!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Otenko
	soundDisableTextSFX
	soundPlay
		track = 438
	"太陽ぉ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	soundEnableTextSFX
	"ワッ! おてんこさまだ!"
	keyWait
		any = false
	clearMsg
	"ビックリした~"
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"カ、カオが・・・!!!"
	keyWait
		any = false
	clearMsg
	"うっ、うわーーーーーっ!!"
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 239
	"ボギャーーーーーン!!"
	keyWait
		any = false
	clearMsg
	soundEnableTextSFX
	mugshotShow
		mugshot = Lan
	"ロックマン、どうしたんだ!"
	keyWait
		any = false
	clearMsg
	"だいじょうか!!"
	keyWait
		any = false
	clearMsg
	mugshotHide
	"・"
	wait
		frames = 30
	"・"
	wait
		frames = 30
	"・"
	waitSkip
		frames = 30
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Higsby
	"""
	う・・・うん、
	だいじょうぶ みたい・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"うわぁぁぁぁぁぁぁ!!"
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 11,
			ratio = 32
			jump = 12,
			ratio = 32
			jump = 13
		]
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	なぁ、ロックマンしってるか
	炎山のアタマ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	あれ、タマゴのカラを
	かぶってるらしいぜ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ホ、ホントに・・・!?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 156
	"ピリリリリリ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	soundEnableTextSFX
	"熱斗くん、オートでんわだよ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"もしもし・・・"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Chaud
	"""
	光・・・今、オレのワルグチを
	いわなかったか・・・?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ぜ、ぜんぜん!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Chaud
	"そうか・・・"
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 209
	"ブツッ・・・"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	soundEnableTextSFX
	"なんて、じごくみみなんだ・・・"
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 156
	"ピリリリリリ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ゲッ!"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"やいとちゃんと かけまして~"
	keyWait
		any = false
	clearMsg
	"おてら と、ときます"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"その こころは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"どちらも カネをもってます"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うまい!
	電脳ザブトンいちまい!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"バグのかけら、いっきぐい!!"
	keyWait
		any = false
	clearMsg
	"バグバグバグバグバグ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	わぁぁぁぁぁ!!
	ロックマンが バグったぁ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ユーモアだよ!!"
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ボクのギャグと かけまして~"
	keyWait
		any = false
	clearMsg
	"""
	バトルチップ、ソードと
	ときます
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そのこころは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"するどい きれあじ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ハハハハ!"
	keyWait
		any = false
	clearMsg
	"それじゃ、こんどはオレが・・・"
	keyWait
		any = false
	clearMsg
	"ロックマンと かけまして~"
	keyWait
		any = false
	clearMsg
	"メットールと ときます"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そ、そのこころは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"あたまが かたい!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そ、そんなコトないよ!!"
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 21,
			ratio = 32
			jump = 22,
			ratio = 32
			jump = 23
		]
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、じつはボク、
	まえからいってみたかった
	セリフがあるんだ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"いいぜ、いってみろよ"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	そ、それじゃ おコトバに
	あまえて
	"""
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"ゴホン!"
	keyWait
		any = false
	clearMsg
	"""
	熱斗、いくぜ!
	バトルオペレーション! 
	"""
	waitSkip
		frames = 30
	"セット!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"イン!"
	keyWait
		any = false
	clearMsg
	"って、オレが たたかうのかよ!"
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = BlueShirtBoy
	msgOpen
	"""
	ねぇねぇ、熱斗くん、
	なにか おもしろい
	ハナシはない?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おもしろいハナシ・・・?
	ん~、今はちょっとないなぁ・・・
	"""
	keyWait
		any = false
	clearMsg
	"って、おまえダレだよ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = BlueShirtBoy
	"あっ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	ゴメンゴメン、ヘルメット
	かぶるのわすれてたよ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ウソォ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"じょうだん、じょうだん!"
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"アジーナって、あじ~なぁ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"うっ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"あじ~なぁ・・・"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"あまいぜ あまいぜ!"
	keyWait
		any = false
	clearMsg
	"""
	おなじネタを くりかえせば
	ウケるとおもったら、
	大まちがいだぜ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そ、そんな!!"
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いいか、ロックマン!
	ギャグは いきおいだ!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	どんなつまらない ネタでも、
	いきおいで わらわせるんや!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"いきおい・・・"
	keyWait
		any = false
	clearMsg
	"""
	熱斗はん!
	ワイ、目からウロコですわ!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボロボロおちてますわ!!
	ウロコまみれですわ!!
	"""
	keyWait
		any = false
	clearMsg
	"ウロコ・・・"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"くどい!!"
	keyWait
		any = false
	clearMsg
	"""
	ええか、いきおいが あるんと
	しつこいんとは ぜんぜん
	べつもんや!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	し、ししょう!!
	えらい すんまへん・・・
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 31,
			ratio = 32
			jump = 32,
			ratio = 32
			jump = 33
		]
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"あいうえお さくぶん~!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"いえ~ぃ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"おだいは「ねっと」!!"
	keyWait
		any = false
	clearMsg
	"まずは、熱斗くんの「ね」 !"
	keyWait
		any = false
	clearMsg
	"ネットバトルの ウデはピカイチ!"
	keyWait
		any = false
	clearMsg
	"熱斗くんの「つ」 !"
	keyWait
		any = false
	clearMsg
	"つよさの ヒミツは・・・"
	keyWait
		any = false
	clearMsg
	"熱斗くんの「と」 !"
	keyWait
		any = false
	clearMsg
	"とくになし!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"あるって! ぜったいあるって!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクってさ、
	ずっと このかみがたじゃない?
	"""
	keyWait
		any = false
	clearMsg
	"""
	そろそろ イメージチェンジ
	したいなって おもうんだけど、
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"どんな かみがたが いいんだ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	今、ちょっと目をつけてる
	かみがたが あるんだ!
	"""
	keyWait
		any = false
	clearMsg
	"えっとね"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"コレ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = BlackMan
	mugshotAnimation
		animation = 0
	wait
		frames = 60
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ブッ!!"
	keyWait
		any = false
	clearMsg
	"オレが ヤダよぉ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ウソウソ、じょうだんだって!"
	keyWait
		any = false
	clearMsg
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"クッ"
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ボクのさいきょうの
	ギャグを きかせてあげるよ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	メットールが
	メットをぬいだら・・・
	"""
	keyWait
		any = false
	clearMsg
	"メッ"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"・"
	waitSkip
		frames = 30
	"やっぱり いえない!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そのさき、すっげー気になる!!"
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	今まで どうもありがとう・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	な、なんだよ、
	きゅうに あらたまってさ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	ボク、もう たたかいに
	あけくれる まい日に
	つかれちゃった・・・
	"""
	keyWait
		any = false
	clearMsg
	"今日で おわかれだよ"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なっ、なにいってるんだよ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	だいじょうぶ、かわりの
	ナビを よんであるから
	"""
	keyWait
		any = false
	clearMsg
	"それじゃ、サヨナラ・・・"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ロ、ロックマーーーン!!"
	keyWait
		any = false
	clearMsg
	mugshotHide
	"なにも かなしむことはない"
	keyWait
		any = false
	clearMsg
	"""
	今日からは ワタシが
	おまえの ナビになってやるんだ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"えっ!?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = ShadeMan
	"キキキーーーッ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ワ、ワーーーー!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"どう、ちょっと おどろいた?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"シャレになってねーぞ!!"
	keyWait
		any = false
	end
}
@archive 6F9930
@size 48

script 0 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ウオー!かんりにんのデカオです!
	まずはようこそ このHPへ!
	ありがとうだぜっ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このケイジバンはこの秋原町イチの
	ネットバトラーであるデカオさまと
	ナビのガッツマンが
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスバスティングや
	ネットバトルについてのしつもんに
	こたえていくぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	カキコミよろしく!
	秋原小6-Aのみんなも
	かきこんでくれよー!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	あら ホントにHPつくったのね
	バトルケイジバンねぇ
	ふふん まあワルくないんじゃない
	"""
	keyWait
		any = false
	clearMsg
	"""
	じゃあ あのブーメランくわえた
	センタクバサミみたいなウイルスの
	たおし方 おしえてもらおうかしら
	"""
	keyWait
		any = false
	clearMsg
	"""
	グライドの攻撃は
	みんなはじかれちゃうし
	ブーメランはよけられないし・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	も~う どうしたらいいってのよ
	いいこうりゃく おしえなさいよね
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ガッツマンでガッツ!
	よろしくでガッツ!
	しつもんにこたえるでガス!
	"""
	keyWait
		any = false
	clearMsg
	"""
	オトコならやっぱり
	正面からたちむかうべきでガス!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ま正面からガッツバスターを
	れんしゃれんしゃでガッツ!
	これぞ こうりゃくほうでガス!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	あらあら ガッツマンたら
	そのこうりゃくじゃ
	あのウイルスはたおせないわよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	あいつはラウンダっていって
	ブーメランをくわえているときは
	攻撃をガードするウイルスなの
	"""
	keyWait
		any = false
	clearMsg
	"""
	だからさいしょはむしろ
	正面にはたたず ブーメランの
	こないまん中のれつでまつ・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	ブーメランをとばしたら
	同じれつにいどうして
	攻撃をあてればいいのよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	こうりゃくとしては
	こんなかんじかしら・・・
	ねっ デカオくん?
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	お・・おう!
	まさしくオレがかんがえてた
	こうりゃくほうと・・ほぼ同じだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかしメイルが
	そんなにウイルスバスティングに
	くわしいなんて・・いがいだぜ
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	フフ、まあねー
	いつもピンチになると熱斗に
	たよってばかりいるから・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスバスティングくらい
	じぶんの力でできなきゃ・・て
	おもってね
	"""
	keyWait
		any = false
	clearMsg
	"""
	きかいがあればネットバトルにも
	ちょうせんしてみたいな
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	メガネをかけたエイみたいな
	ウイルスがたおせない・・・
	だれか たすけて~!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	やあ、コーエツにいさんだよ!
	マサブミくんのしつもんに
	おこたえしよう!
	"""
	keyWait
		any = false
	clearMsg
	"""
	おそらくゲイラークのことだね
	あいつは攻撃はんいがひろくて
	HPもたかい・・・やっかいだね
	"""
	keyWait
		any = false
	clearMsg
	"""
	でもダイジョーブ!
	属性のことはしってるかな?
	"""
	keyWait
		any = false
	clearMsg
	"""
	炎は木に 木は電気に
	電気は水に 水は炎に・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	あいての属性にたいして
	ゆうりな属性の攻撃をあてると
	攻撃力が2ばいになるんだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゲイラークは水属性だから
	電気属性のチップがゆうりだ
	サンダーボール1なんかいいね
	"""
	keyWait
		any = false
	clearMsg
	"じゃあ がんばって!"
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ウワッ・・・電脳ものしりハカセの
	コーエツにいさんだ!
	ホンモノっすか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	オレもしつもん いいっすか!?
	あのですね・・・こないだ
	へんなモン みちゃったんすよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんとバトル中に
	ミステリーデータがあったんすよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	でも すぐウイルスの攻撃で
	こわされちゃって・・・
	あれはなにが入ってるんすか!?
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	やあ!コーエツにいさんだよ!
	ゴウくん、なかなかレアなものを
	見たようだね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	かくりつはひくいが
	バトル中にミステリーデータが
	あらわれることがあるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスにこわされたり
	じぶんで こわさないようにして
	バトルをしゅうりょうさせると
	"""
	keyWait
		any = false
	clearMsg
	"""
	ミステリーデータをGETだ!
	なにが入ってるかはわからないが
	かなりレアものみたいだぞ!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ねえねえ きいてよ!
	こないだバトルしてたら
	チップががったいしたの!
	"""
	keyWait
		any = false
	clearMsg
	"""
	たしかキャノンが3枚・・・
	がったいしてギガキャノンとかに
	なったと おもうわ
	"""
	keyWait
		any = false
	clearMsg
	"""
	だけど もっかいやろうとしても
	がったいしないのよ~
	あれってなんだったの!?
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	フフ・・そのしつもんには
	このデカオさまがこたえるぜー!
	"""
	keyWait
		any = false
	clearMsg
	"""
	チップの中にはチップコードが
	ABC・・・みたいにじゅんばんに
	なってるものがある!
	"""
	keyWait
		any = false
	clearMsg
	"""
	これを3枚 じゅんばんどおりに
	えらんで ナビにてんそうすると?
	あとはじっさいに やってみよう!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あっ じゅんばんにえらぶとき
	*のコードは1枚だけなら
	まざってもOKだぜ
	"""
	keyWait
		any = false
	clearMsg
	"""
	へへ、これですこしは
	かんりにんらしいところが
	見せれたかな・・・?
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こんにちは!
	わたしシェロ・カスティロで
	アルバイトしてるの!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビのきぐるみ きたりして
	けっこうたのしいんだけど
	それだけじゃないのよね~
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぬいぐるみキャラクターの
	メンテナンスなんかも
	しなくちゃなんなくて・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	で、メンテナンス中に
	よく出るウイルスで
	すごくつよいのがいるの
	"""
	keyWait
		any = false
	clearMsg
	"""
	マルモコっていうんだけど
	だれか たおし方を
	おしえてほしいな~
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	マルモコはかわいいけど
	やっかいなんだよねー
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウデにじしんがあるなら
	モコモコしたケをはいでから
	ソードできる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	それかバルカンみたいな
	れんしゃけいのチップで
	はなれたイチからうつ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	どちらもすこし
	ゆうきがひつようだけど
	がんばってね!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ついにねんがんのナビカスを
	手に入れました!
	"""
	keyWait
		any = false
	clearMsg
	"""
	今までプログラムって
	むずかしそうだなとおもって
	手を出さなかったんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	やってみればパズルみたいで
	おもしろい!
	"""
	keyWait
		any = false
	clearMsg
	"""
	いろんなプログラムを
	くみこんで わたしのナビを
	つよくしちゃうぞ~!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ところで
	どこかいいプログラムショップ
	あったら おしえてくださいなっ
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	プログラムをかうなら
	いい かくれショップがあるよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	シェロ・カスティロの
	ホームページの中!
	しなぞろえもよくてオススメ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	オレがこないだ かったのは
	シールドとファーストバリア!
	"""
	keyWait
		any = false
	clearMsg
	"""
	じつは ぼうぎょがにがてで
	ボルケルギアの炎なんかが
	よけきれないんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	にがてなところをおぎなったり
	とくいなところをのばしたり
	カスタマイズは人それぞれだね
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こないだインターネットで
	グライドっていうナビが
	みょうに右よりにあるいてたよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	「カラダがかってに右の方へ
	うごいてしまうのです・・・」
	とかいってたけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	ひょっとしてナビカスで
	まちがったプログラミングを
	してるんじゃないかな?
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	な、なんてことかしら!
	このやいとちゃんともあろう
	てんさいプログラマーがっ
	"""
	keyWait
		any = false
	clearMsg
	"""
	アンダーシャツを
	コマンドラインの上に
	おいてなかったわよっ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ま、まあ ひとつのミステイク
	「こうぼうもフデのあやまり」
	というやつね・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	「ころばぬさきのつえ」に
	バグストッパーを
	かってこようかしら
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	オレのともだちのナビが
	さいきん みょうに・・・
	・・・くろいんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ひやけ?
	いや、ちがうな・・・
	そんなけんこうてきなものじゃない
	"""
	keyWait
		any = false
	clearMsg
	"""
	なにかもっとこう
	まがまがしい ふんいきを
	ただよわせてるんだよ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	マックスHPも98とかって
	ちゅうとはんぱな すうちに
	なっちゃってて・・・
	"""
	keyWait
		any = false
	clearMsg
	"どうしちゃったんだろ?"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ゴウさん・・・
	それってもしかして・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	今チマタでウワサの
	・・・ダークチップのせいじゃ
	ないのかな・・・?
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんでもウラで出回ってる
	すごくきょうりょくなチップ
	らしいんだけど・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	つかうとバグが発生したり
	マックスHPが-1されたり
	しちゃうらしいよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ココロにも あくえいきょうを
	およぼしたりするとかで・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかもいちど つかってしまうと
	もうやめられない・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	すてたはずのダークチップが
	カスタム画面に出てきたりとか
	"""
	keyWait
		any = false
	clearMsg
	"""
	そんな きんだんしょうじょうも
	ほうこくされているらしいよ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ゾノさん、マジっすか!?
	ダークチップ!?
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかも マックスHPが
	へっていくだなんて・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	つかいつづけていれば
	まともなネットバトルは
	できなくなるじゃないですか!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ダークチップ・・・
	つかっちゃったら とりかえしの
	つかないことになるんですね
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	イーグルトーナメントと
	ホークトーナメント
	ついにおわりましたね~
	"""
	keyWait
		any = false
	clearMsg
	"""
	どっちかわすれちゃったけど
	小学生の子がゆうしょうしてたよ
	すごいよねー!
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	へへ、サキさん
	その小学生ってのは熱斗のことだぜ
	"""
	keyWait
		any = false
	clearMsg
	"""
	やつこそ秋原町イチの・・・
	いや ニホンイチだな
	さいきょうのネットバトラーだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	そして その熱斗がみとめる
	えいえんのライバルが
	このデカオさまというわけだぜ!
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ふふ そういうデカオくんは
	デンサンバトルトーナメントで
	まけちゃったんでしょ
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんていいつつ わたしも
	イーグルトーナメントで
	まけちゃったんだけどね
	"""
	keyWait
		any = false
	clearMsg
	"""
	やっぱり みんなつよかった~
	でも・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	それでも ゆうしょうしちゃう
	熱斗は やっぱりスゴイよね
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	フフフ、みつけましたよ!
	あのでんせつの べんりチップ
	バリアブルソードのコマンドを!
	"""
	keyWait
		any = false
	clearMsg
	"""
	いいふらしたりしちゃダメですよ
	よそのケイジバンにかくのも
	きんしだからね~
	"""
	keyWait
		any = false
	clearMsg
	"それでは かきますよ!"
	keyWait
		any = false
	clearMsg
	"""
	Aボタンをおしながら・・・
	下・右下・右でロングソード
	上・右・下でワイドソード
	"""
	keyWait
		any = false
	clearMsg
	"""
	左・下・右でファイターソード
	そして・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	おっと これいじょうはダメだ
	みんなじしんの手で
	さがしだしてくれ!
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こないだ クモみたいな
	ウイルスにやられちゃった・・
	だれか たおし方おしえて~!
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	クーモスですか・・・
	アイツうっとおしいですよね
	"""
	keyWait
		any = false
	clearMsg
	"""
	でもイアイフォームがあれば
	ぜんぜんもんだいないですよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	アメロッパエリアにうってますんで
	かいにいってみたらどうすかね?
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こないだつうしんたいせん
	してたんだよ
	もちろん ほんばんでね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	そしたらリザルト画面で
	あいてがもってないチップが
	手に入ったんだ・・・
	"""
	keyWait
		any = false
	clearMsg
	"あれはなんだったんだろう・・・"
	keyWait
		any = false
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	やあ コーエツにいさんだよ!
	それは ボーナスチップだね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	つうしんたいせんでは
	まれに 二人ともがもっていない
	チップが手に入ることがあるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	つまり つうしんたいせんを
	つづけていれば おのずと
	データライブラリがうまるわけだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただし ボーナスチップで出るのは
	スタンダードのチップだけだからね
	メガとギガはじぶんの手でさがそう
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID1D"
	keyWait
		any = false
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID1E"
	keyWait
		any = false
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID1F"
	keyWait
		any = false
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID20"
	keyWait
		any = false
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID21"
	keyWait
		any = false
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID22"
	keyWait
		any = false
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID23"
	keyWait
		any = false
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID24"
	keyWait
		any = false
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID25"
	keyWait
		any = false
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID26"
	keyWait
		any = false
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID27"
	keyWait
		any = false
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID28"
	keyWait
		any = false
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID29"
	keyWait
		any = false
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID2A"
	keyWait
		any = false
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID2B"
	keyWait
		any = false
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID2C"
	keyWait
		any = false
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID2D"
	keyWait
		any = false
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID2E"
	keyWait
		any = false
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS00 ID2F"
	keyWait
		any = false
	waitHold
}
@archive 6FA82C
@size 48

script 0 mmbn4s {
	" かんりにんデカオ ごあいさつ!       "
	end
}
script 1 mmbn4s {
	" やいと      おめでと!        "
	end
}
script 2 mmbn4s {
	" ガッツマン    こたえるでガッツ!    "
	end
}
script 3 mmbn4s {
	" メイル      ラウンダは・・・     "
	end
}
script 4 mmbn4s {
	" かんりにんデカオ RE:ラウンダは・・・  "
	end
}
script 5 mmbn4s {
	" メイル      まあね          "
	end
}
script 6 mmbn4s {
	" マサブミ     メガネのウイルス     "
	end
}
script 7 mmbn4s {
	" コーエツにいさん RE:メガネのウイルス  "
	end
}
script 8 mmbn4s {
	" ゴウ       ミステリーデータ?    "
	end
}
script 9 mmbn4s {
	" コーエツにいさん RE:ミステリーデータ? "
	end
}
script 10 mmbn4s {
	" るぅた      チップがったい?     "
	end
}
script 11 mmbn4s {
	" かんりにんデカオ RE:チップがったい?  "
	end
}
script 12 mmbn4s {
	" ひなた      ひつじ~!        "
	end
}
script 13 mmbn4s {
	" かわっち     RE:ひつじ~!     "
	end
}
script 14 mmbn4s {
	" のんちゃん    ナビカスGET!     "
	end
}
script 15 mmbn4s {
	" マーぼー     RE:ナビカスGET!  "
	end
}
script 16 mmbn4s {
	" ぼるく      バグ?          "
	end
}
script 17 mmbn4s {
	" やいと      RE:バグ?       "
	end
}
script 18 mmbn4s {
	" ゴウ       くろいナビ        "
	end
}
script 19 mmbn4s {
	" ゾノサン     RE:くろいナビ     "
	end
}
script 20 mmbn4s {
	" ゴウ       そのご・・・       "
	end
}
script 21 mmbn4s {
	" サキ       大会!          "
	end
}
script 22 mmbn4s {
	" かんりにんデカオ RE:大会!       "
	end
}
script 23 mmbn4s {
	" メイル      RE:大会!       "
	end
}
script 24 mmbn4s {
	" ベルツさん    バリアブルソード     "
	end
}
script 25 mmbn4s {
	" ニコ       クモのたおし方      "
	end
}
script 26 mmbn4s {
	" リュウジ     RE:クモのたおし方   "
	end
}
script 27 mmbn4s {
	" うるふ      つうしんたいせんで    "
	end
}
script 28 mmbn4s {
	" コーエツにいさん RE:つうしんたいせんで "
	end
}
script 29 mmbn4s {
	" BBS0  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS0  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS0  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS0  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS0  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS0  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS0  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS0  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS0  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS0  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS0  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS0  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS0  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS0  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS0  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS0  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS0  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS0  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FAA6C
@size 48

script 0 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ようこそ やいとさまのHPへ
	ここは ざつだんケイジバンです
	"""
	keyWait
		any = false
	clearMsg
	"""
	あやのこうじけは
	ゆいしょある おいえがらですが
	"""
	keyWait
		any = false
	clearMsg
	"""
	やいとさまの おはからいで
	このケイジバンはどなたさまでも
	ごりよういただけます
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	やいとちゃ~ん
	HPリニューアルおめでとー!
	へへ~ イチバンノリ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	こないだ 電気街でかった
	トルネードしきドライヤーの
	つかいごこちは どう?
	"""
	keyWait
		any = false
	clearMsg
	"""
	また いっしょに
	おかいもの いこーね~!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	おっす やいとー!
	ケイジバンせっちしたんだな
	"""
	keyWait
		any = false
	clearMsg
	"""
	じつはオレも じぶんのHPに
	ケイジバン つくったんだぜ!
	バトルせんもんだけどな
	"""
	keyWait
		any = false
	clearMsg
	"""
	きてくれたら このデカオさまが
	ウイルスバスティングのわざを
	でんじゅして さしあげるぜ!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"ふふん みんなきてくれたのね"
	keyWait
		any = false
	clearMsg
	"""
	このハイセンスなデザインは
	おきにめして もらえたかしら?
	そざいあつめに くろうしたのよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	メイルちゃん カキコミありがと
	ドライヤーのつかいごこちは
	なかなか上々よ
	"""
	keyWait
		any = false
	clearMsg
	"""
	あと ついでにデカオも
	カキコミありがと!
	"""
	keyWait
		any = false
	clearMsg
	"""
	HPのぞかせてもらったけど
	カベガミをなんとかしなさいよね
	オヤジくさいわよ
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ガッツマンでガッツ!
	デカオさまのHPのカベガミは
	たしかにオヤジくさいでガスが
	"""
	keyWait
		any = false
	clearMsg
	"""
	むかしはオニギリの
	カベガミだったでガッツ!
	それよりはイイとおもうでガス
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こら ガッツマン
	オマエまでなにいってやがる
	"""
	keyWait
		any = false
	clearMsg
	"""
	あれこそが
	オトコの「びがく」ってやつよ
	ニホンのこころってな!
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	コニチハー やいとさ~ん!
	こないだの しゃこうかいでは
	ドーモでしたー
	"""
	keyWait
		any = false
	clearMsg
	"""
	グライドさんもおげんきスカ?
	ナビしゅうげきじけんのときに
	ひがいにあわれたトカ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいきん ぶっそうな
	ネットはんざいがおおいデース
	お気をつけ くだサーイ
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こんにちは やいとさん
	ナビしゅうげきじけんか
	こわいですよね~
	"""
	keyWait
		any = false
	clearMsg
	"""
	こわいといえば しってます?
	ゆうれいナビのウワサ
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんでも インターネットで
	いぜんデリートしたはずのナビが
	とつぜんおそってくるんだとか
	"""
	keyWait
		any = false
	clearMsg
	"""
	サイバーおきょうもきかない
	なぞの そんざいなんだそうです
	ぶきみですよねー
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ウォー
	にかいどうさん はじめまして!
	やいとのともだちのデカオです!
	"""
	keyWait
		any = false
	clearMsg
	"""
	そのゆうれいナビのウワサ
	ホントなのかー!?
	おもしろそうじゃねーか!
	"""
	keyWait
		any = false
	clearMsg
	"""
	オレもちょっと
	インターネットを
	うろついてみるぜー!
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ガ・・・ガッツマンは
	あまり ユーレイとかは
	とくいじゃないでガッツが・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	デカオさまのめいれいなので
	やってみるでガッツ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	ガッツマンのガッツパンチは
	きくんでガスか・・・?
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こんにちは デカオさん
	にかいどうです!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゆうれいナビはいっせつによると
	じぶんのココロがうつしだす
	げんえいのようなものだとか
	"""
	keyWait
		any = false
	clearMsg
	"""
	つまり じぶんの中にある
	きょうふしんに うちかたないと
	ダメというわけですね
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	あら にかいどうさん
	こんにちは!
	"""
	keyWait
		any = false
	clearMsg
	"""
	いつのまにか デカオなんかと
	なかよく なっちゃったのね
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゆうれいナビのウワサは
	きいたことあるわよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	インターネットのつうろの
	おくとか はしっこで
	よく あうってきくわよ
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	いやー
	こんど 世界レベルの
	ネットバトル大会があるそうだね
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクのすんでるアメロッパが
	かいじょうになるんだとか
	たのしみです
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ふふふ じつは
	あやのこうじけは その大会の
	スポンサーになってるのよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	みんなで かんせんして
	しちょうりつを
	あげまくってよね
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	その大会って 熱斗がでてる
	やつよね?
	みんなで おうえんしようよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	せんしゅは みんなアメロッパの
	ホテルにしゅくはくしてるから
	熱斗こころぼそいかもね・・・
	"""
	keyWait
		any = false
	clearMsg
	"がんばれー熱斗!"
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	熱斗はたしかに すげーやつだ
	オレとガッツマンが ゆいいつ
	かてないあいてだからな
	"""
	keyWait
		any = false
	clearMsg
	"""
	がんばれ 熱斗!
	おまえをたおすのは
	このオレとガッツマンだぜ!
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID10"
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID11"
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID12"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID13"
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID14"
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID15"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID16"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID17"
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID18"
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID19"
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID1A"
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID1B"
	keyWait
		any = false
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID1C"
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID1D"
	keyWait
		any = false
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID1E"
	keyWait
		any = false
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID1F"
	keyWait
		any = false
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID20"
	keyWait
		any = false
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID21"
	keyWait
		any = false
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID22"
	keyWait
		any = false
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID23"
	keyWait
		any = false
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID24"
	keyWait
		any = false
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID25"
	keyWait
		any = false
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID26"
	keyWait
		any = false
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID27"
	keyWait
		any = false
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID28"
	keyWait
		any = false
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID29"
	keyWait
		any = false
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID2A"
	keyWait
		any = false
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID2B"
	keyWait
		any = false
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID2C"
	keyWait
		any = false
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID2D"
	keyWait
		any = false
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID2E"
	keyWait
		any = false
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS01 ID2F"
	keyWait
		any = false
	waitHold
}
@archive 6FB194
@size 48

script 0 mmbn4s {
	" グライド     ようこそいらっしゃいました"
	end
}
script 1 mmbn4s {
	" メイル      おめでと~!       "
	end
}
script 2 mmbn4s {
	" デカオ      おめでとーだぜ!     "
	end
}
script 3 mmbn4s {
	" やいと      ありがと!        "
	end
}
script 4 mmbn4s {
	" ガッツマン    RE:ありがと!     "
	end
}
script 5 mmbn4s {
	" デカオ      RE:ありがと!     "
	end
}
script 6 mmbn4s {
	" ハンス      HELLO!       "
	end
}
script 7 mmbn4s {
	" にかいどう    こんにちは、やいとさん  "
	end
}
script 8 mmbn4s {
	" デカオ      ゆうれいナビ!?     "
	end
}
script 9 mmbn4s {
	" ガッツマン    RE:ゆうれいナビ!?  "
	end
}
script 10 mmbn4s {
	" にかいどう    RE:ゆうれいナビ!?  "
	end
}
script 11 mmbn4s {
	" やいと      あらあら         "
	end
}
script 12 mmbn4s {
	" まつだいら    大会!?         "
	end
}
script 13 mmbn4s {
	" やいと      スポンサー        "
	end
}
script 14 mmbn4s {
	" メイル      熱斗も・・・       "
	end
}
script 15 mmbn4s {
	" デカオ      熱斗は・・・       "
	end
}
script 16 mmbn4s {
	" BBS1  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS1  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS1  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS1  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS1  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS1  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS1  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS1  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS1  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS1  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS1  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS1  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS1  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS1  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS1  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS1  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS1  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS1  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS1  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS1  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS1  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS1  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS1  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS1  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS1  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS1  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS1  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS1  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS1  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS1  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS1  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FB36C
@size 48

script 0 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ようこそアメロッパホテルへ!
	マネージャーのアナーでございます
	"""
	keyWait
		any = false
	clearMsg
	"""
	このケイジバンは おきゃくさまが
	インターネットをするうえで
	"""
	keyWait
		any = false
	clearMsg
	"""
	なれないとちでの
	ウイルスバスティングで
	キケンなめに あったりせぬように
	"""
	keyWait
		any = false
	clearMsg
	"""
	やくだつじょうほうや
	たいけんだんなどを
	かきこむためのものです
	"""
	keyWait
		any = false
	clearMsg
	"""
	どちらのクニの方でも
	カキコミかのうですので
	ごじゆうに おつかいくださいませ
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	フォフォフォ・・・ワタシは
	世界中のインターネットを
	たびするのがシュミでしての
	"""
	keyWait
		any = false
	clearMsg
	"""
	かっこくのインターネットを
	たびするうえでのちゅういてんを
	おおしえしましょう
	"""
	keyWait
		any = false
	clearMsg
	"""
	だいして
	電脳世界のあるき方ワールドへん
	つぎのカキコミからスタートですぞ
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"アジーナエリアのあるき方!"
	keyWait
		any = false
	clearMsg
	"""
	アジーナエリアでのバトルは
	くさむらやひびなどがおおく
	みせいびなエリアといえよう
	"""
	keyWait
		any = false
	clearMsg
	"""
	きをつけるべきウイルスとしては
	キルブーあたりになるじゃろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	とつぜんこちらにワープしてきて
	たけやりをつきだしてきよる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかしおそれるでないぞ
	いちばん 上のれつにいれば
	キルブーはワープしてこれない
	"""
	keyWait
		any = false
	clearMsg
	"""
	木属性なので炎属性のチップで
	攻撃するとよいじゃろう!
	おちついてたいしょするのじゃ!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"シャーロエリアのあるき方!"
	keyWait
		any = false
	clearMsg
	"""
	シャーロはこおりのだいち
	インターネットにもこおった
	パネルがおおいぞよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	レギュラーにパネルリターンを
	入れておくとラクにたいしょ
	できるであろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちゅういすべきウイルスは
	ウォーラじゃな
	"""
	keyWait
		any = false
	clearMsg
	"""
	やつのキバ攻撃はさいしょは
	ビックリするじゃろうが
	"""
	keyWait
		any = false
	clearMsg
	"""
	正面にたたなければ
	とばしてくることはない!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちがうれつを攻撃できるチップで
	やっつけるのじゃ!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"アッフリクエリアのあるき方!"
	keyWait
		any = false
	clearMsg
	"""
	アッフリクはみどりとさばくが
	いりまじった だいち!
	"""
	keyWait
		any = false
	clearMsg
	"""
	バトルではくさむらの中にある
	アリジゴクにきをつけるのじゃ
	"""
	keyWait
		any = false
	clearMsg
	"""
	パネルリターンをレギュラーに
	するのもよいが
	"""
	keyWait
		any = false
	clearMsg
	"""
	じぶんがハマるのではなく
	ウイルスの方をハメてやるのが
	うまいやり方といえよう!
	"""
	keyWait
		any = false
	clearMsg
	"""
	じゃが、あいてがとんでいるような
	ウイルスじゃと アリジゴクは
	きかぬぞ!
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	さいごに
	アメロッパのあるき方じゃ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このホテルのHPをぬければ
	そこはアメロッパエリアじゃ
	こころしてよむのじゃぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	アメロッパのインターネットは
	パネルもせいびされておるので
	バトルのときでもうごきやすい!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちゅういすべきウイルスは
	シャーロエリアからながれてきた
	ウォーラもそうじゃが
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんといっても
	マルモコEXはようちゅういじゃ
	"""
	keyWait
		any = false
	clearMsg
	"""
	あのモコモコした たいもうが
	なかなかはがれん・・・あ~
	おもいだしてもハラがたつわい!
	"""
	keyWait
		any = false
	clearMsg
	"""
	チャージ攻撃からチップ攻撃へと
	れんぞくでタイミングよく
	つかわなければ ならんじゃろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	さて、ワシのアドバイスは
	これでぜんぶじゃ
	"""
	keyWait
		any = false
	clearMsg
	"""
	いこくをあるくのはたのしいが
	それもばんぜんのよういが
	あってこそ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	トラブルやデリートにあわずに
	げんきでプラグアウトできることを
	ねがっておるぞよ!
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ヘイ!
	ミーはサウスアメロッパで
	チップショップをひらいてるネ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	レアチップあつめのたびのトチュウ
	このホテルにとまってマース!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さっきウラドオリでへんな
	チップをうりつけられたYO!
	"""
	keyWait
		any = false
	clearMsg
	"「ダークホール」ってナマエネ!"
	keyWait
		any = false
	clearMsg
	"""
	もしやちまたでウワサの
	ダークチップじゃないだろネ!?
	ジョーホーもとむYO!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ハロー!
	ワールドワイドにかつどう中の
	コーエツにいさんだよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ダークホール!
	このチップはじつは・・・
	ダークチップではないんだな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ダークホールというパネルを
	発生させるチップなんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ある とくていのチップは
	ダークホールのかずがおおいほど
	攻撃力がぞうかするらしいよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	どのチップがそうなのかは
	コーエツにいさんも
	しらないんだけどね・・・
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ミスターコーエツのいっている
	ダークホールによって
	攻撃力があがるチップ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	それはナビのこころにやどる
	ダークソウルをぬきだして
	ナビチップにしたもの・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	チップ名のうしろにDSとつく
	ナビチップがそれにあたるそうだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんでもじゃあくなこころを
	もつナビにしか つかえない
	とくべつなチップだときく・・・
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	せっしゃはあるチップをさがす
	たびのとちゅうで
	このホテルにとまっている
	"""
	keyWait
		any = false
	clearMsg
	"""
	ブラックボムというのだが・・・
	じょうほうはないでござるか?
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	マネージャーのアナーでございます
	せんじつもブラックボムをさがす
	おきゃくさまがおられましたよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	シャーロエリアにアクセスしている
	ところを おみかけいたしましたが
	"""
	keyWait
		any = false
	clearMsg
	"""
	おやくにたてれば
	こうえいでございます
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID0B"
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID0C"
	keyWait
		any = false
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID0D"
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID0E"
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID0F"
	keyWait
		any = false
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID10"
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID11"
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID12"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID13"
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID14"
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID15"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID16"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID17"
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID18"
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID19"
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID1A"
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID1B"
	keyWait
		any = false
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID1C"
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID1D"
	keyWait
		any = false
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID1E"
	keyWait
		any = false
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID1F"
	keyWait
		any = false
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID20"
	keyWait
		any = false
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID21"
	keyWait
		any = false
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID22"
	keyWait
		any = false
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID23"
	keyWait
		any = false
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID24"
	keyWait
		any = false
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID25"
	keyWait
		any = false
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID26"
	keyWait
		any = false
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID27"
	keyWait
		any = false
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID28"
	keyWait
		any = false
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID29"
	keyWait
		any = false
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID2A"
	keyWait
		any = false
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID2B"
	keyWait
		any = false
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID2C"
	keyWait
		any = false
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID2D"
	keyWait
		any = false
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID2E"
	keyWait
		any = false
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS02 ID2F"
	keyWait
		any = false
	waitHold
}
@archive 6FBB68
@size 48

script 0 mmbn4s {
	" アナー      ようこそアメロッパホテルへ"
	end
}
script 1 mmbn4s {
	" マスタッシュ   電脳世界のあるき方   "
	end
}
script 2 mmbn4s {
	" マスタッシュ   アジーナへん       "
	end
}
script 3 mmbn4s {
	" マスタッシュ   シャーロへん       "
	end
}
script 4 mmbn4s {
	" マスタッシュ   アッフリクへん      "
	end
}
script 5 mmbn4s {
	" マスタッシュ   アメロッパへん      "
	end
}
script 6 mmbn4s {
	" チャマ      ダークホール       "
	end
}
script 7 mmbn4s {
	" コーエツ     RE:ダークホール    "
	end
}
script 8 mmbn4s {
	" ロビン      RE:ダークホール    "
	end
}
script 9 mmbn4s {
	" ゴエモン     ブラックボム       "
	end
}
script 10 mmbn4s {
	" アナー      RE:ブラックボム    "
	end
}
script 11 mmbn4s {
	" BBS2  0B XXXXXXXXXXXXX"
	end
}
script 12 mmbn4s {
	" BBS2  0C XXXXXXXXXXXXX"
	end
}
script 13 mmbn4s {
	" BBS2  0D XXXXXXXXXXXXX"
	end
}
script 14 mmbn4s {
	" BBS2  0E XXXXXXXXXXXXX"
	end
}
script 15 mmbn4s {
	" BBS2  0F XXXXXXXXXXXXX"
	end
}
script 16 mmbn4s {
	" BBS2  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS2  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS2  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS2  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS2  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS2  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS2  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS2  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS2  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS2  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS2  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS2  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS2  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS2  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS2  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS2  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS2  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS2  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS2  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS2  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS2  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS2  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS2  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS2  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS2  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS2  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS2  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS2  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS2  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS2  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS2  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FBD24
@size 48

script 0 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	いよいよオープンいたしました!
	デンサンシティはつのテーマパーク
	シェロ・カスティロ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	どうわや おとぎばなしの
	キャラクターたちとふれあえる
	ゆめのくうかんをプロデュース!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このケイジバンではおきゃくさまの
	ごようぼうや ざつだんトークを
	おかきこみいただけます!
	"""
	keyWait
		any = false
	clearMsg
	"""
	どなたさまもごじゆうに
	おたのしみくださいませ!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こんにちは!
	今、シェロ・カスティロの中から
	カキコミしてます!
	"""
	keyWait
		any = false
	clearMsg
	"""
	すごいよ!
	あのゆうめいキャラクターたちに
	さわったり だきついたりできる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	これからアトラクションに
	ちょうせんしてくるよ!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	いいなー
	ワタシもいきたいよー
	ウィザードッグにかみつかれたーい
	"""
	keyWait
		any = false
	clearMsg
	"""
	おみやげやさんにもいきたいな!
	マサカリひめの
	マサカリがほしー!
	"""
	keyWait
		any = false
	clearMsg
	"""
	でも やっぱりいちばんすきなのは
	ドラッキーなのよねー
	"""
	keyWait
		any = false
	clearMsg
	"""
	いっつもジャンゴにまけるくせに
	ぜったいあきらめないところに
	オトコのびがくを かんじるわ~
	"""
	keyWait
		any = false
	clearMsg
	"みんなは どのキャラがすき?"
	keyWait
		any = false
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ボクはブリキングだな~!
	きょねん じょうえいしてた
	アニメえいがで 大なきしたよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	かんじょうを手に入れなければ
	あんなかなしいおもいを
	せずにすんだのに・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	でも かんじょうがあるから・・
	ココロがゆれうごくからこそ
	ヒトはやさしくなれるんだよね
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	いやいや マサカリひめだね!
	あんなにつよくて うつくしい
	おひめさま 見たことないよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	いちばんすきなシーンは、
	マサカリひめが、いとしの
	トマホークおうじをたすけるため、
	"""
	keyWait
		any = false
	clearMsg
	"""
	まじょの のろいがかかった
	きけんなもりを たった1人で
	かけぬけていくところ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	やっぱり 今のじだい
	じょせいも まもられるだけの
	そんざいでは ないってことだよ
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"アッシはウィザードッグでマス!"
	keyWait
		any = false
	clearMsg
	"""
	じゃあくな まじゅつしから
	町をまもるため、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ふだん ケンカばかりしている
	ウィザーモンキーと ともに
	たたかうシーンは さいこうでマス
	"""
	keyWait
		any = false
	clearMsg
	"なんど見ても しびれるでマス!"
	keyWait
		any = false
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ボクがすきなのはドラッキー!
	「太陽しょうねんジャンゴ」
	だいすきなんだもん!
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんどのれんきゅうに
	シェロ・カスティロに
	つれてってもらうんだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	はやく ドラッキーに
	ガンデルソルをはっしゃして
	こらしめてやりたいな~
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	たくみくんはジャンゴファンか
	なら きゅうけつきのやかたに
	ぜひ 入るといいよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ジャンゴがヴァンパイアたちと
	たたかっているシーンが
	リアルにさいげんされてるぞ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	「太陽しょうねんジャンゴ」
	こどもたちに にんきだね
	"""
	keyWait
		any = false
	clearMsg
	"""
	ジャンゴがもっているぶき
	ガンデルソルのバトルチップも
	はつばいされてるみたいだしね
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ガンデルソルのバトルチップって
	太陽の光をきゅうしゅうする
	きのうが あるらしいよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんでもオペレーターが
	太陽のあたるばしょ・・・
	つまりそとにいるときなら
	"""
	keyWait
		any = false
	clearMsg
	"""
	ガンデルソルのパワーも
	つよくなるんだってさ!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	おきゃくさまへ
	せんじつはアトラクションの
	ていしトラブル、および
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぬいぐるみロボのぼうそうなど
	たいへん ごめいわくを
	おかけいたしました
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんごはまいにちのプラグインを
	こころがけ メンテナンスの
	きょうかをはかりたいとおもいます
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんごともシェロ・カスティロを
	よろしくおねがいします!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ぬいぐるみロボぼうそうのとき
	オレもシェロ・カスティロに
	いたんだけど かなりこわかったよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	とくに ドラッキーは
	ぶきみなかんじがしたなぁ
	"""
	keyWait
		any = false
	clearMsg
	"""
	まるで ほんものの
	ヴァンパイアがのりうつった
	みたいだったよ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	わたしも あのとき いたよ
	すっごいこわかったけど・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	あるいみ スリリングで
	ドキドキしたかな~
	"""
	keyWait
		any = false
	clearMsg
	"""
	といっても あのバンダナのこが
	ウイルスバスティングしてくれて
	いなかったらと かんがえたら
	"""
	keyWait
		any = false
	clearMsg
	"ゾッとしちゃうけどね"
	keyWait
		any = false
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	今、イベントかなにか
	やってるのかな?
	"""
	keyWait
		any = false
	clearMsg
	"""
	シェロ・カスティロの中の
	いろんなところに なにかを
	かくしてる人をみたよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゲート前のふんすいとか
	ドラッキーとかトビラとかに
	かくしてたとおもうけど・・・
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	シェロ・カスティロのおしろで
	ネットバトルのトーナメントを
	やってたね
	"""
	keyWait
		any = false
	clearMsg
	"""
	まさかテーマパークをつかって
	ネットバトル大会を
	かいさいしちゃうなんて・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	これがいわゆる
	コラボレーションっていうやつ?
	さいきん ハヤリだよね
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	あれって ぜんこくレベルの
	大会だったらしいんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゆうしょうしたのは なんと
	あの ぬいぐるみぼうそうじけんを
	かいけつした 小学生なんだってさ
	"""
	keyWait
		any = false
	clearMsg
	"いや~すごいよね~!"
	keyWait
		any = false
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	そういえば
	ひょうしょうしきのときに
	なにかトラブルがあったみたいだね
	"""
	keyWait
		any = false
	clearMsg
	"""
	かんきゃくせきは
	ぎゅうぎゅうづめだったから
	よく見えなかったんだけど
	"""
	keyWait
		any = false
	clearMsg
	"あれって なにがおこったの?"
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	あたし さいぜんれつで
	見てたから しってるよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゆうしょうしたこが
	ネットバトルマシンに
	プラグインしてて・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんかダレかと
	ネットバトルしてるような・・・
	きんぱくした ふんいきだったよ
	"""
	keyWait
		any = false
	clearMsg
	"なんだったのかな・・・"
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID12"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID13"
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID14"
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID15"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID16"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID17"
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID18"
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID19"
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID1A"
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID1B"
	keyWait
		any = false
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID1C"
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID1D"
	keyWait
		any = false
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID1E"
	keyWait
		any = false
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID1F"
	keyWait
		any = false
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID20"
	keyWait
		any = false
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID21"
	keyWait
		any = false
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID22"
	keyWait
		any = false
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID23"
	keyWait
		any = false
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID24"
	keyWait
		any = false
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID25"
	keyWait
		any = false
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID26"
	keyWait
		any = false
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID27"
	keyWait
		any = false
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID28"
	keyWait
		any = false
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID29"
	keyWait
		any = false
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID2A"
	keyWait
		any = false
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID2B"
	keyWait
		any = false
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID2C"
	keyWait
		any = false
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID2D"
	keyWait
		any = false
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID2E"
	keyWait
		any = false
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS03 ID2F"
	keyWait
		any = false
	waitHold
}
@archive 6FC5CC
@size 48

script 0 mmbn4s {
	" かんりにん    ようこそ!ゆめのくにへ! "
	end
}
script 1 mmbn4s {
	" あかね      たのし~!        "
	end
}
script 2 mmbn4s {
	" ゆめちゃん    うらやまし~!      "
	end
}
script 3 mmbn4s {
	" すじこ      ブリキング!       "
	end
}
script 4 mmbn4s {
	" しんや      マサカリひめ!      "
	end
}
script 5 mmbn4s {
	" ひぐれ      ウィザードッグでマス!  "
	end
}
script 6 mmbn4s {
	" たくみ      ドラッキーだよ!     "
	end
}
script 7 mmbn4s {
	" かっぺぽ     RE:ドラッキーだよ!  "
	end
}
script 8 mmbn4s {
	" すーじー     ジャンゴって       "
	end
}
script 9 mmbn4s {
	" ちかっち     ガンデルソル!      "
	end
}
script 10 mmbn4s {
	" かんりにん    おわび          "
	end
}
script 11 mmbn4s {
	" とも       こわかったー       "
	end
}
script 12 mmbn4s {
	" まゆみん     RE:こわかったー    "
	end
}
script 13 mmbn4s {
	" うずまき     イベント?        "
	end
}
script 14 mmbn4s {
	" カニデカ     ネットバトル大会     "
	end
}
script 15 mmbn4s {
	" ふじりん     RE:ネットバトル大会  "
	end
}
script 16 mmbn4s {
	" ななせ      そういえば        "
	end
}
script 17 mmbn4s {
	" ノア       RE:そういえば     "
	end
}
script 18 mmbn4s {
	" BBS3  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS3  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS3  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS3  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS3  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS3  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS3  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS3  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS3  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS3  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS3  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS3  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS3  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS3  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS3  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS3  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS3  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS3  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS3  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS3  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS3  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS3  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS3  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS3  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS3  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS3  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS3  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS3  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS3  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FC7F0
@size 48

script 0 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ジョ、ジョ、ジョジョッ、
	ジョ~モンッ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんにちは!
	ジョーモンデンキのHPへ
	ようこそ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このケイジバンは
	おきゃくさまがじゆうに
	カキコミできるケイジバンです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ふれあいのば として
	ごりようくださいませ!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こんちはー!
	きょうはヨメさんと
	れいぞうこ 見にきたんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいきんハツバイされた
	しんがたPETがあったもんで
	二人で いろちがいをかいました
	"""
	keyWait
		any = false
	clearMsg
	"""
	いや~ コンパクトでいいね
	ムセンだから ケーブルもなくて
	べんりだよ!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"いいよね~ しんがたPET!"
	keyWait
		any = false
	clearMsg
	"""
	なんでも 科学省ずいいちの
	けんきゅうしゃ 光さんと
	"""
	keyWait
		any = false
	clearMsg
	"""
	あの名人がタッグをくんで
	いっしょに かいはつした
	スグレモノらしいね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワンタッチでひらくカバーが
	みらいてきで カッコいいよ!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	どもっす!
	きょうは カノジョといっしょに
	ゲームソフトかいにきました!
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんとちんれつされてる
	ショウヒンからも このHPに
	プラグインできるんですね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	これは かっきてきだ~
	いろんなところで
	プラグインためさなきゃ!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こんにちは!
	きょうはカレシのかいものに
	つきあわされてるんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	カレシったら いろんなとこで
	プラグインできるか
	ためしまくるもんだから
	"""
	keyWait
		any = false
	clearMsg
	"""
	つきあわされてる アタシは
	もうアシがつかれちゃいました
	"""
	keyWait
		any = false
	clearMsg
	"""
	オトコの人って電気街では
	つかれしらずになるのよね~
	ふしぎ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	きょうはデジカメを
	かいにきました!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このHPはタウンエリアに
	行くときに ちかくてベンリだね
	"""
	keyWait
		any = false
	clearMsg
	"""
	今は
	てんじひんのTVから
	プラグインしてきたんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	上にあるエアコンのせんでんの
	えきしょうモニターからは
	このHPにはこれないんだね
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	オレけっこうジョーモンデンキ
	よくくるんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	いっつも おなじおじいさんを
	てんないで みかけるよ
	でんかせいひんずきなのかな?
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	その おじいさん
	オレもよくみかけるよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	たしか ジョーモンデンキの
	会長さん だよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	えらい人なのに ちゃんと
	じぶんで うれゆきとか
	チェックしてるんだね~
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こないだ しんがたPETを
	ナビカスとセットで
	かったんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビがバグっちゃってて
	ジョーモンさんに
	クレームいれちゃったのね
	"""
	keyWait
		any = false
	clearMsg
	"""
	そしたら アタシがプログラムを
	コマンドライン上にちゃんと
	おいてなかったみたいなの
	"""
	keyWait
		any = false
	clearMsg
	"""
	はずかし~
	プラスパーツとかんちがい
	しちゃってたのね
	"""
	keyWait
		any = false
	clearMsg
	"""
	プログラムパーツは
	コマンドライン上におかないと
	こうかが ハッキされないのね
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"そういうことってあるよね~"
	keyWait
		any = false
	clearMsg
	"""
	オレもついつい おなじいろを
	となりあわせに おいたりして
	バグっちゃったりするよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	いっつもナビに
	おこられてるんだよな~
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	こないだ ともだちにもらった
	プログラムくみこんだらさ~
	"""
	keyWait
		any = false
	clearMsg
	"""
	べつになんのパワーアップも
	しないんだけど・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんか ギャグばっかり
	いうようになっちゃったの
	"""
	keyWait
		any = false
	clearMsg
	"このプログラムなに?"
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	おっ それはもしかして
	ユーモアセンスっていう
	プログラムじゃないかな?
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんでも 名人みずからが
	かいはつしたっていう
	ウワサだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ナビとのかいわが いっそう
	たのしくなるようにって
	ことらしいね
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ジョーモンデンキ
	すごい しなぞろえだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	バトルチップについては
	ちょっとものたりないな~
	"""
	keyWait
		any = false
	clearMsg
	"そのへんどうなんでしょう?"
	keyWait
		any = false
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	やすくてよいしなジョオッモン!
	こんにちは ジョーモンデンキ
	ケイジバンかんりにんです!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ごしつもんのありました
	バトルチップのことで
	ございますが
	"""
	keyWait
		any = false
	clearMsg
	"""
	まだオープンしてまもないため
	でんかせいひん いがいの方は
	まだ ふじゅうぶんでして
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゆくゆくはバトルチップの方も
	じゅうじつさせていきます
	よろしくおねがいいたします!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	バトルチップのことなら
	秋原町にあるヒグレヤが
	すごいよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいきん なんと
	とりよせサービスまで
	はじめたとか
	"""
	keyWait
		any = false
	clearMsg
	"""
	データライブラリにのってる
	チップなら ほとんど
	とりよせて くれるんだって!
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ヒグレヤか
	きいたことあるな~
	"""
	keyWait
		any = false
	clearMsg
	"""
	かわったしゃべり方の
	てんちょうさんが いるとか
	"""
	keyWait
		any = false
	clearMsg
	"""
	ありがと!
	こんどいってみるよ!
	とりよせるぞ~!
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID10"
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID11"
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID12"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID13"
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID14"
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID15"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID16"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID17"
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID18"
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID19"
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID1A"
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID1B"
	keyWait
		any = false
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID1C"
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID1D"
	keyWait
		any = false
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID1E"
	keyWait
		any = false
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID1F"
	keyWait
		any = false
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID20"
	keyWait
		any = false
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID21"
	keyWait
		any = false
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID22"
	keyWait
		any = false
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID23"
	keyWait
		any = false
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID24"
	keyWait
		any = false
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID25"
	keyWait
		any = false
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID26"
	keyWait
		any = false
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID27"
	keyWait
		any = false
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID28"
	keyWait
		any = false
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID29"
	keyWait
		any = false
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID2A"
	keyWait
		any = false
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID2B"
	keyWait
		any = false
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID2C"
	keyWait
		any = false
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID2D"
	keyWait
		any = false
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID2E"
	keyWait
		any = false
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS04 ID2F"
	keyWait
		any = false
	waitHold
}
@archive 6FCF58
@size 48

script 0 mmbn4s {
	" ジョーモンデンキ ごあいさつ        "
	end
}
script 1 mmbn4s {
	" しんや      しんがたPET!     "
	end
}
script 2 mmbn4s {
	" みつのり     RE:しんがたPET!  "
	end
}
script 3 mmbn4s {
	" ヒデ       プラグイン        "
	end
}
script 4 mmbn4s {
	" ユキ       FW:プラグイン     "
	end
}
script 5 mmbn4s {
	" ユージ      タウンエリアに      "
	end
}
script 6 mmbn4s {
	" アマヤン     おじいさん        "
	end
}
script 7 mmbn4s {
	" カータン     RE:おじいさん     "
	end
}
script 8 mmbn4s {
	" プリミキ     やっちゃった       "
	end
}
script 9 mmbn4s {
	" ヌッキー     RE:やっちゃった    "
	end
}
script 10 mmbn4s {
	" クロタン     しつもん         "
	end
}
script 11 mmbn4s {
	" ぼうず      RE:しつもん      "
	end
}
script 12 mmbn4s {
	" ぼうず      バトルチップ       "
	end
}
script 13 mmbn4s {
	" ジョーモンデンキ RE:バトルチップ    "
	end
}
script 14 mmbn4s {
	" ヌッキー     RE:バトルチップ    "
	end
}
script 15 mmbn4s {
	" ぼうず      RE:バトルチップ    "
	end
}
script 16 mmbn4s {
	" BBS4  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS4  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS4  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS4  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS4  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS4  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS4  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS4  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS4  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS4  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS4  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS4  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS4  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS4  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS4  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS4  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS4  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS4  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS4  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS4  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS4  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS4  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS4  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS4  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS4  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS4  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS4  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS4  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS4  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS4  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS4  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FD12C
@size 48

script 0 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"ここはウラケイジバンだ・・・"
	keyWait
		any = false
	clearMsg
	"""
	こんな むほうちたいでも
	じょうほうってのは
	やくにたつもんさ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	ギブアンドテイクってことでよ
	オトクなネタがあれば
	きょうゆうしようってこった
	"""
	keyWait
		any = false
	clearMsg
	"カキコミ・・・まってるぜ・・・"
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	さいきん よくみかける
	ランプのかたちしたウイルス・・・
	ヤツについてわかったことをかくぜ
	"""
	keyWait
		any = false
	clearMsg
	"""
	なまえはエレンプラ
	じぶんがいるパネルのパワーを
	すいとって攻撃するようだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぎゃくにいえば やつのあしもとを
	ノーマルパネルにしちまえば
	パワーダウンするってわけだな
	"""
	keyWait
		any = false
	clearMsg
	"""
	デスマッチみたいな、パネルを
	こわせるチップをもっておくと
	ゆうこうなんじゃねーかな
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	だ、だれか・・・
	シェードマンのいばしょ・・・
	し・・・しらねえか・・・?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ダークチップの・・・
	きんだんしょうじょうが・・・
	グ・・グァ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	だれかダークチップを・・・
	オレに・・・
	くれ・・・
	"""
	keyWait
		any = false
	clearMsg
	"・・・"
	keyWait
		any = false
	waitHold
}
script 3 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	あらら・・・かわいそうにな
	どうやらかんぜんにココロが
	ヤミにしはいされたな・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	今ごろヤミの世界におちて
	むげんじごくを
	さまよいあるいてるだろ
	"""
	keyWait
		any = false
	clearMsg
	"""
	きくところによると
	シェードマンは だれかに
	デリートされたらしいから
	"""
	keyWait
		any = false
	clearMsg
	"""
	どのみち ヤミにおちるのは
	おなじだったろうがな・・・
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ケケケ・・・
	ココロがよわいから
	ヤミにのっとられちまうんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	オレみたいに
	ダークチップはつかいながらも
	ココロはしっかりもたなきゃな
	"""
	keyWait
		any = false
	clearMsg
	"""
	もっとも オレですら
	しにかけるほどに
	HPがなくなっちまうと
	"""
	keyWait
		any = false
	clearMsg
	"""
	ダークソウルがあらわれて、
	デリートマシンと かして
	しばらくキオクがとんじまう
	"""
	keyWait
		any = false
	clearMsg
	"""
	アクにみをまかせれば
	ラクにいきれると おもってたら
	おおまちがいってワケだ
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	へえ・・・シェードマンのやつ
	デリートされたのか・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	もっとも 今ごろウラのどこかで
	ヤミのチカラを ほきゅうして
	キズをいやしてるんだろうがな
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	どうしたことだ・・・?
	ダチにもらったナビチップSPが
	つかえなくなっちまった
	"""
	keyWait
		any = false
	clearMsg
	"""
	つかってもケムリになって
	きえちまうんだ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	もしかしてダークチップを
	つかっているせいなのか?
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ナビチップSPは
	からだがくろくないヤツにしか
	つかえないぜ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぎゃくにナビチップDSは
	からだがくろいヤツにしか
	つかえないチップだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ほかにも ダークホールや
	ノイズストーム・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	でんせつの5大あんこくチップも
	くろいやつにしかつかえないって
	ウワサだぜ
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	ヤミにココロをしはいされたナビは
	ビッグダークホールに
	すいこまれちまうらしい・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかしつよいココロを
	たもちつづければ ヤミに
	おちることはない・・・
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	おいおい、このエリアで
	へんなものみちまったぜ・・・?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ありゃ まちがいなく
	太陽しょうねんのジャンゴ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	なんでものがたりのキャラクターが
	電脳世界をあるいてやがんだ!?
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	まさか・・・ジャンゴは
	ものがたりのキャラクターだぜ
	電脳世界にいるわけないだろ
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・しかし シェードマンが
	ウラで ねむっているときに
	ジャンゴとうじょう だなんて
	"""
	keyWait
		any = false
	clearMsg
	"""
	なかなかよくできた
	「ものがたり」じゃないか?
	ククク・・・
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	へ・・・そりゃいいや
	ジャンゴとシェードマンの
	たたかいがはじまるってわけか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	もうそうにしちゃ おもしれー
	いちど見てみたいもんだな
	はたしてどちらがかつのかね
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID0C"
	keyWait
		any = false
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID0D"
	keyWait
		any = false
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID0E"
	keyWait
		any = false
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID0F"
	keyWait
		any = false
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID10"
	keyWait
		any = false
	waitHold
}
script 17 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID11"
	keyWait
		any = false
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID12"
	keyWait
		any = false
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID13"
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID14"
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID15"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID16"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID17"
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID18"
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID19"
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID1A"
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID1B"
	keyWait
		any = false
	waitHold
}
script 28 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID1C"
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID1D"
	keyWait
		any = false
	waitHold
}
script 30 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID1E"
	keyWait
		any = false
	waitHold
}
script 31 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID1F"
	keyWait
		any = false
	waitHold
}
script 32 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID20"
	keyWait
		any = false
	waitHold
}
script 33 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID21"
	keyWait
		any = false
	waitHold
}
script 34 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID22"
	keyWait
		any = false
	waitHold
}
script 35 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID23"
	keyWait
		any = false
	waitHold
}
script 36 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID24"
	keyWait
		any = false
	waitHold
}
script 37 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID25"
	keyWait
		any = false
	waitHold
}
script 38 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID26"
	keyWait
		any = false
	waitHold
}
script 39 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID27"
	keyWait
		any = false
	waitHold
}
script 40 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID28"
	keyWait
		any = false
	waitHold
}
script 41 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID29"
	keyWait
		any = false
	waitHold
}
script 42 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID2A"
	keyWait
		any = false
	waitHold
}
script 43 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID2B"
	keyWait
		any = false
	waitHold
}
script 44 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID2C"
	keyWait
		any = false
	waitHold
}
script 45 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID2D"
	keyWait
		any = false
	waitHold
}
script 46 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID2E"
	keyWait
		any = false
	waitHold
}
script 47 mmbn4 {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"BBS05 ID2F"
	keyWait
		any = false
	waitHold
}
@archive 6FD768
@size 48

script 0 mmbn4s {
	" ウラのジュウニン かきこんでくれ      "
	end
}
script 1 mmbn4s {
	" NO NAME  エレンプラ        "
	end
}
script 2 mmbn4s {
	" NO NAME  ダレカ・・・!      "
	end
}
script 3 mmbn4s {
	" NO NAME  RE:ダレカ・・・!   "
	end
}
script 4 mmbn4s {
	" NO NAME  RE:ダレカ・・・!   "
	end
}
script 5 mmbn4s {
	" もとネビュラ   シェードマン       "
	end
}
script 6 mmbn4s {
	" NO NAME  つかえないチップ     "
	end
}
script 7 mmbn4s {
	" NO NAME  RE:つかえないチップ  "
	end
}
script 8 mmbn4s {
	" NO NAME  ビッグダークホール    "
	end
}
script 9 mmbn4s {
	" NO NAME  ジャンゴ!?       "
	end
}
script 10 mmbn4s {
	" NO NAME  RE:ジャンゴ!?    "
	end
}
script 11 mmbn4s {
	" NO NAME  RE:ジャンゴ!?    "
	end
}
script 12 mmbn4s {
	" BBS5  0C XXXXXXXXXXXXX"
	end
}
script 13 mmbn4s {
	" BBS5  0D XXXXXXXXXXXXX"
	end
}
script 14 mmbn4s {
	" BBS5  0E XXXXXXXXXXXXX"
	end
}
script 15 mmbn4s {
	" BBS5  0F XXXXXXXXXXXXX"
	end
}
script 16 mmbn4s {
	" BBS5  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS5  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS5  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS5  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS5  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS5  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS5  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS5  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS5  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS5  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS5  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS5  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS5  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS5  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS5  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS5  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS5  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS5  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS5  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS5  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS5  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS5  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS5  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS5  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS5  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS5  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS5  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS5  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS5  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS5  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS5  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FD90C
@size 5

script 0 mmbn4 {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	positionMugshot
		left = 54
		top = 80
	positionArrow
		left = 202
		top = 100
	mugshotShow
		mugshot = MegaMan
	"""
	あたらしい かきこみが
	あるみたいだよ
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4 {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	positionMugshot
		left = 54
		top = 80
	positionArrow
		left = 202
		top = 100
	mugshotShow
		mugshot = MegaMan
	"""
	かきこみが
	いっけんも ないね・・・
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FFC48
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	いらっしゃいませ!
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	どれに イタしましょう?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"マタ おコしクダさい!"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	ショウヒンが ナくなりました
	おカいアげ アリガトう
	ゴザいました!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
script 12 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ゼニーガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FFE04
@size 30

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	どのチップをとりよせるでマスか?
	(L・Rボタン:ページおくり)
	(Bボタン:とりよせをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	どれに するでマスか?
	(L・Rボタン:ページおくり)
	(Bボタン:とりよせをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"また きてくださいでマス"
	waitHold
}
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	でマスね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	では、しいれに行っている
	ナンバーマンからデータを
	てんそうしてもらうでマス
	"""
	keyWait
		any = false
	clearMsg
	"ナンバーマン、たのむでマス!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = NumberMan
	"はい、ヒグレさま しばしおマちを\n"
	wait
		frames = 30
	"・"
	wait
		frames = 30
	"・"
	wait
		frames = 30
	"・"
	wait
		frames = 20
	"""
	OK
	ソウシン カンリョウしました!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	しょうひんが なくなったでマス
	おかいあげ ありがとうでマス!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ゼニーガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 24 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	"""
	」
	・・・でマスか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちょっと、といあわせてみるでマス
	・・・フムフム
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	"""
	」
	・・・でマスか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちょっと、といあわせてみるでマス
	・・・フムフム
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	"""
	」
	・・・でマスか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	きいたこと ないでマスね・・・
	いちおう、といあわせて
	みるでマスが・・・
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printCode
		buffer = 2
		code = A
	"""
	」のコードなら
	ざいこがあるでマス
	"""
	keyWait
		any = false
	clearMsg
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	zでマスが、
	よろしいでマスか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
script 28 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	あややや・・・
	そのチップは ざいこには
	ないようでマス
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	・・・ふむ、
	やっぱりないようでマス
	"""
	keyWait
		any = false
	clearMsg
	"""
	ホントに そんなチップ
	あるんでマスか?
	熱斗くん?
	"""
	keyWait
		any = false
	waitHold
}
@archive 7000C4
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	いらっしゃいませ!
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	どれに イタしましょう?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"マタ おコしクダさい!"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	ショウヒンが ナくなりました
	おカいアげ アリガトう
	ゴザいました!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ゼニーガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 700280
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	いらっしゃい
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	どれが ホしいんだ?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"マタ キてくれよ"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	だな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	だな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	ショウヒンが ナくなっちまった
	もう ウリキれだ アリガトよ!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	だな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ゼニーガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 700430
@size 18

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	ヘイ、ラッシャイ!
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	どれに するんだ?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"マタ コいよな!"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	が ホしいのか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	が ホしいのか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	もう ウるもんは ナニもねえ・・・
	すまねえな ウりキれだ・・・
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	が ホしいのか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
@archive 700594
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	いらっしゃいでマス!
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	どれにするでマスか?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"また きてくださいでマス!"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	でマスね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	でマスね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 19
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	しょうひんが なくなったでマス
	おかいあげ ありがとうでマス!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	でマスね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 23
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ゼニーガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 70075C
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	いらっしゃいませ!
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	どれに イタしましょう?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"マタ おコしクダさい!"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を こうかんしてもらったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を こうかんしてもらったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	「バグのかけら」が たりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	ショウヒンが ナくなりました
	ごキョウリョク アリガトう
	ゴザいました!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を こうかんしてもらったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ コウカンシマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ コウカンシマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「バグのかけら」ガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ コウカンシマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 700930
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	ヘヘ、ヨくキたな・・・
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	どれが ホしいんだ? んん?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"また クるよな? マってるぜ・・・"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	だな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	だな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を こうかんしてもらったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を こうかんしてもらったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	「バグのかけら」が たりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	ショウヒンが ナくなっちまったぜ
	ヘヘヘ、ボウズ、アリガトよ
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	だな?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を こうかんしてもらったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ コウカンシマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ コウカンシマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「バグのかけら」ガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ コウカンシマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 700B04
@size 24

script 0 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	いらっしゃいませ!
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 1 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	どれに いたしましょう?
	(Rボタン:せつめいを見る)
	(Bボタン:かいものをやめる)
	"""
	waitHold
}
script 2 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"もう おみせをでるの?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 3 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"また きてくださいね!"
	waitHold
}
script 4 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 5 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 6 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 19
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	ゼニーがたりないよ
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	あれ・・・
	これいじょう もてないよ
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	しょうひんが なくなりました
	おかいあげ ありがとうございました!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4 {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ですね?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	soundDisableChoiceSFX
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
script 12 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 23
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	を かったよ!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"コ"
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"z"
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"-------"
	end
}
script 18 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"オミセヲ デマスカ?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	waitHold
}
script 19 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printItem
		buffer = 1
		item = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ゼニーガ タリマセン"
	keyWait
		any = false
	waitHold
}
script 22 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"コレイジョウ モテマセン"
	keyWait
		any = false
	waitHold
}
script 23 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"「"
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	」
	ヲ カイマシタ
	"""
	keyWait
		any = false
	waitHold
}
@archive 7012F8
@size 32

script 0 mmbn4 {
	msgOpen
	"""
	チップトレーダーがある
	バトルチップを3枚 入れますか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 5,
			jump = continue
		]
	startChipTrader
		amount = 3
		jumpIfNotEnoughChips = 1
	keyWait
		any = false
	end
}
script 1 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	msgOpen
	mugshotShow
		mugshot = MegaMan
	"""
	熱斗くん 今、リュックの中には
	3枚もチップはないよ
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 30
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"この3枚でOK?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	msgCloseQuick
	end
}
script 3 mmbn4 {
	msgOpen
	"よーし!\n"
	soundDisableTextSFX
	soundPlay
		track = 268
	"ガチャガチャ・・・ゴトン!"
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 42
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	熱斗は、チップデータ
	「
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を ゲットした!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	clearMsg
	flagClear
		flag = 42
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"もういちど やりますか?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 5,
			jump = continue
		]
	startChipTrader
		amount = 3
		jumpIfNotEnoughChips = 4
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん ざんねん・・・
	リュックにチップが3枚もないよ
	またこんどにしよ!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4s {
	end
}
script 6 mmbn4 {
	msgOpen
	"""
	チップトレーダースペシャルだ
	バトルチップを10枚入れますか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 11,
			jump = continue
		]
	startChipTrader
		amount = 10
		jumpIfNotEnoughChips = 7
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん 今、リュックの中には
	10枚もチップはないよ
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 31
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"この10枚でOK?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	msgCloseQuick
	end
}
script 9 mmbn4 {
	msgOpen
	"よーし!\n"
	soundDisableTextSFX
	soundPlay
		track = 268
	"ガチャガチャ・・・ゴトン!"
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 42
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	熱斗は、チップデータ
	「
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を ゲットした!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	clearMsg
	flagClear
		flag = 42
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"もういちど やりますか?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 11,
			jump = continue
		]
	startChipTrader
		amount = 10
		jumpIfNotEnoughChips = 10
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 23
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん ざんねん・・・
	リュックにチップが10枚もないよ
	またこんどにしよ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4s {
	end
}
script 12 mmbn4 {
	msgOpen
	"バグピーストレーダーがある"
	keyWait
		any = false
	clearMsg
	"""
	バグのかけらを10コ
	入れてみますか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 17,
			jump = continue
		]
	startBugFragTrader
		jumpIfNotEnoughBugFrags = 13
	waitHold
}
script 13 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 24
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、バグのかけらが
	10コもないよ
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	msgOpenQuick
	"""
	ロックマンは バグのかけらを
	さしだした!
	"""
	keyWait
		any = false
	clearMsg
	flagSet
		flag = 43
	soundPlay
		track = 417
	wait
		frames = 60
	"""
	ちからづよい とおぼえとともに
	チップデータがあらわれた・・・!
	"""
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 42
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	ロックマンは、チップデータ
	「
	"""
	printChip
		buffer = 1
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を ゲットした!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	clearMsg
	flagClear
		flag = 42
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"もういちど やりますか?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 17,
			jump = continue
		]
	startBugFragTrader
		jumpIfNotEnoughBugFrags = 16
	waitHold
}
script 16 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 25
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん ざんねん・・・
	バグのかけらが10コもないよ
	"""
	keyWait
		any = false
	msgClose
	waitHold
}
script 17 mmbn4 {
	msgClose
	waitHold
}
script 20 mmbn4 {
	msgOpen
	"""
	今、リュックの中には
	3枚もチップはない
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	clearMsg
	msgOpen
	"リュックにチップが10枚もない"
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	msgOpen
	"""
	今、リュックの中には
	10枚もチップはない
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	clearMsg
	msgOpen
	"リュックにチップが10枚もない"
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	msgOpen
	"バグのかけらが10コもない"
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	clearMsg
	msgOpen
	"もう バグのかけらが10コもない"
	keyWait
		any = false
	waitHold
}
script 26 mmbn4 {
	msgOpen
	"""
	フリートーナメントユウショウ
	オメデトウゴザイマス・・・
	ユウショウノショウヒンヲドウゾ
	"""
	keyWait
		any = false
	clearMsg
	checkGlobal
		variable = 3
		value = 0
		jumpIfEqual = 27
		jumpIfNotEqual = continue
	checkGlobal
		variable = 3
		value = 2
		jumpIfEqual = 28
		jumpIfNotEqual = continue
	playerAnimateScene
		animation = 24
	flagSet
		flag = 42
	soundPlay
		track = 115
	checkGiveZenny
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	"""
	熱斗は、
	「
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = true
	"""
	ゼニー」
	を ゲットした!!
	"""
	playerFinish
	playerResetScene
	flagClear
		flag = 42
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	soundDisableTextSFX
	soundPlay
		track = 444
	"ウィーーーーーン"
	wait
		frames = 80
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	playerAnimateScene
		animation = 24
	flagSet
		flag = 42
	soundPlay
		track = 115
	"""
	チップデータ
	「
	"""
	printChip
		buffer = 3
		chip = 0
	" "
	printCode
		buffer = 2
		code = A
	"""
	」
	を ゲットした!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	flagClear
		flag = 42
	end
}
script 28 mmbn4 {
	playerAnimateScene
		animation = 24
	flagSet
		flag = 42
	soundPlay
		track = 115
	checkGiveBugFrags
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = 29
		jumpIfSome = 29
	"""
	熱斗は、
	「バグのかけら」
	を 
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = true
	"コ ゲットした!!"
	playerFinish
	playerResetScene
	flagClear
		flag = 42
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	msgOpen
	"""
	「バグのかけら」は
	いっぱいで もうもてない
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	"この3枚でいいですか?\n"
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	msgCloseQuick
	end
}
script 31 mmbn4 {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	この10枚で
	いいですか?
	
	"""
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
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
	msgCloseQuick
	end
}
@archive 7459D4
@size 256

script 0 mmbn4s {
	end
}
script 1 mmbn4s {
	"キャノン"
	end
}
script 2 mmbn4s {
	"ハイキャノン"
	end
}
script 3 mmbn4s {
	"メガキャノン"
	end
}
script 4 mmbn4s {
	"エアシュート"
	end
}
script 5 mmbn4s {
	"ブリザード"
	end
}
script 6 mmbn4s {
	"ヒートブレス"
	end
}
script 7 mmbn4s {
	"サイレンス"
	end
}
script 8 mmbn4s {
	"トルネード"
	end
}
script 9 mmbn4s {
	"ワイドショット1"
	end
}
script 10 mmbn4s {
	"ワイドショット2"
	end
}
script 11 mmbn4s {
	"ワイドショット3"
	end
}
script 12 mmbn4s {
	"フレイムライン1"
	end
}
script 13 mmbn4s {
	"フレイムライン2"
	end
}
script 14 mmbn4s {
	"フレイムライン3"
	end
}
script 15 mmbn4s {
	"バルカン1"
	end
}
script 16 mmbn4s {
	"バルカン2"
	end
}
script 17 mmbn4s {
	"バルカン3"
	end
}
script 18 mmbn4s {
	"スプレッドガン"
	end
}
script 19 mmbn4s {
	"ヒートショット"
	end
}
script 20 mmbn4s {
	"ヒートブイ"
	end
}
script 21 mmbn4s {
	"ヒートサイド"
	end
}
script 22 mmbn4s {
	"バブルショット"
	end
}
script 23 mmbn4s {
	"バブルブイ"
	end
}
script 24 mmbn4s {
	"バブルサイド"
	end
}
script 25 mmbn4s {
	"エレメントフレア"
	end
}
script 26 mmbn4s {
	"エレメントアイス"
	end
}
script 27 mmbn4s {
	"ノイズストーム"
	end
}
script 28 mmbn4s {
	"ライフシンクロ"
	end
}
script 29 mmbn4s {
	"ミニボム"
	end
}
script 30 mmbn4s {
	"エナジーボム"
	end
}
script 31 mmbn4s {
	"メガエナジーボム"
	end
}
script 32 mmbn4s {
	"ガンデルソル1"
	end
}
script 33 mmbn4s {
	"ガンデルソル2"
	end
}
script 34 mmbn4s {
	"ガンデルソル3"
	end
}
script 35 mmbn4s {
	"マグボルト1"
	end
}
script 36 mmbn4s {
	"マグボルト2"
	end
}
script 37 mmbn4s {
	"マグボルト3"
	end
}
script 38 mmbn4s {
	"バウンドノート1"
	end
}
script 39 mmbn4s {
	"バウンドノート2"
	end
}
script 40 mmbn4s {
	"バウンドノート3"
	end
}
script 41 mmbn4s {
	"バグボム"
	end
}
script 42 mmbn4s {
	"エレキショック"
	end
}
script 43 mmbn4s {
	"ウッディパウダー"
	end
}
script 44 mmbn4s {
	"ホウガン"
	end
}
script 45 mmbn4s {
	"カンケツセン"
	end
}
script 46 mmbn4s {
	"ブラックボム"
	end
}
script 47 mmbn4s {
	"サンドリング"
	end
}
script 48 mmbn4s {
	"ソード"
	end
}
script 49 mmbn4s {
	"ワイドソード"
	end
}
script 50 mmbn4s {
	"ロングソード"
	end
}
script 51 mmbn4s {
	"ワイドブレード"
	end
}
script 52 mmbn4s {
	"ロングブレード"
	end
}
script 53 mmbn4s {
	"フウジンラケット"
	end
}
script 54 mmbn4s {
	"カスタムソード"
	end
}
script 55 mmbn4s {
	"バリアブルソード"
	end
}
script 56 mmbn4s {
	"イアイフォーム"
	end
}
script 57 mmbn4s {
	"サンダーボール1"
	end
}
script 58 mmbn4s {
	"サンダーボール2"
	end
}
script 59 mmbn4s {
	"サンダーボール3"
	end
}
script 60 mmbn4s {
	"カウンター1"
	end
}
script 61 mmbn4s {
	"カウンター2"
	end
}
script 62 mmbn4s {
	"カウンター3"
	end
}
script 63 mmbn4s {
	"エアホッケー1"
	end
}
script 64 mmbn4s {
	"エアホッケー2"
	end
}
script 65 mmbn4s {
	"エアホッケー3"
	end
}
script 66 mmbn4s {
	"サークルガン1"
	end
}
script 67 mmbn4s {
	"サークルガン2"
	end
}
script 68 mmbn4s {
	"サークルガン3"
	end
}
script 69 mmbn4s {
	"ツインファング1"
	end
}
script 70 mmbn4s {
	"ツインファング2"
	end
}
script 71 mmbn4s {
	"ツインファング3"
	end
}
script 72 mmbn4s {
	"ホワイトウェブ1"
	end
}
script 73 mmbn4s {
	"ホワイトウェブ2"
	end
}
script 74 mmbn4s {
	"ホワイトウェブ3"
	end
}
script 75 mmbn4s {
	"ブーメラン1"
	end
}
script 76 mmbn4s {
	"ブーメラン2"
	end
}
script 77 mmbn4s {
	"ブーメラン3"
	end
}
script 78 mmbn4s {
	"サイドバンブー1"
	end
}
script 79 mmbn4s {
	"サイドバンブー2"
	end
}
script 80 mmbn4s {
	"サイドバンブー3"
	end
}
script 81 mmbn4s {
	"バンブーランス"
	end
}
script 82 mmbn4s {
	"ダークホール"
	end
}
script 83 mmbn4s {
	"トップウ"
	end
}
script 84 mmbn4s {
	"スイコミ"
	end
}
script 85 mmbn4s {
	"ボーイズボム1"
	end
}
script 86 mmbn4s {
	"ボーイズボム2"
	end
}
script 87 mmbn4s {
	"ボーイズボム3"
	end
}
script 88 mmbn4s {
	"メットガード1"
	end
}
script 89 mmbn4s {
	"メットガード2"
	end
}
script 90 mmbn4s {
	"メットガード3"
	end
}
script 91 mmbn4s {
	"クラックアウト"
	end
}
script 92 mmbn4s {
	"ダブルクラック"
	end
}
script 93 mmbn4s {
	"トリプルクラック"
	end
}
script 94 mmbn4s {
	"マグナム"
	end
}
script 95 mmbn4s {
	"スチールゼリー"
	end
}
script 96 mmbn4s {
	"カモンスネーク"
	end
}
script 97 mmbn4s {
	"カウントボム"
	end
}
script 98 mmbn4s {
	"ステルスマイン"
	end
}
script 99 mmbn4s {
	"ストーンキューブ"
	end
}
script 100 mmbn4s {
	"オウエンカ"
	end
}
script 101 mmbn4s {
	"ディスコード"
	end
}
script 102 mmbn4s {
	"ティンパニー"
	end
}
script 103 mmbn4s {
	"ワラニンギョウ"
	end
}
script 104 mmbn4s {
	"ビッグハンマー1"
	end
}
script 105 mmbn4s {
	"ビッグハンマー2"
	end
}
script 106 mmbn4s {
	"ビッグハンマー3"
	end
}
script 107 mmbn4s {
	"リカバリー10"
	end
}
script 108 mmbn4s {
	"リカバリー30"
	end
}
script 109 mmbn4s {
	"リカバリー50"
	end
}
script 110 mmbn4s {
	"リカバリー80"
	end
}
script 111 mmbn4s {
	"リカバリー120"
	end
}
script 112 mmbn4s {
	"リカバリー150"
	end
}
script 113 mmbn4s {
	"リカバリー200"
	end
}
script 114 mmbn4s {
	"リカバリー300"
	end
}
script 115 mmbn4s {
	"リペア-"
	end
}
script 116 mmbn4s {
	"パネルスチール"
	end
}
script 117 mmbn4s {
	"エリアスチール"
	end
}
script 118 mmbn4s {
	"スチールリベンジ"
	end
}
script 119 mmbn4s {
	"スチールパニシュ"
	end
}
script 120 mmbn4s {
	"ヘビーゲージ"
	end
}
script 121 mmbn4s {
	"クイックゲージ"
	end
}
script 122 mmbn4s {
	"パネルリターン"
	end
}
script 123 mmbn4s {
	"デスマッチ1"
	end
}
script 124 mmbn4s {
	"デスマッチ2"
	end
}
script 125 mmbn4s {
	"デスマッチ3"
	end
}
script 126 mmbn4s {
	"エレメントリーフ"
	end
}
script 127 mmbn4s {
	"カラーポイント"
	end
}
script 128 mmbn4s {
	"エレメントサンド"
	end
}
script 129 mmbn4s {
	"ブラインド"
	end
}
script 130 mmbn4s {
	"モコラッシュ1"
	end
}
script 131 mmbn4s {
	"モコラッシュ2"
	end
}
script 132 mmbn4s {
	"モコラッシュ3"
	end
}
script 133 mmbn4s {
	"インビジブル"
	end
}
script 134 mmbn4s {
	"ユカシタ"
	end
}
script 135 mmbn4s {
	"バリア"
	end
}
script 136 mmbn4s {
	"バリア100"
	end
}
script 137 mmbn4s {
	"バリア200"
	end
}
script 138 mmbn4s {
	"スーパーキタカゼ"
	end
}
script 139 mmbn4s {
	"ホーリーパネル"
	end
}
script 140 mmbn4s {
	"カキゲンキン"
	end
}
script 141 mmbn4s {
	"ダイコウズイ"
	end
}
script 142 mmbn4s {
	"ヒライシン"
	end
}
script 143 mmbn4s {
	"マヨイノモリ"
	end
}
script 144 mmbn4s {
	"ナビスカウト"
	end
}
script 145 mmbn4s {
	"カワリミ"
	end
}
script 146 mmbn4s {
	"シラハドリ"
	end
}
script 147 mmbn4s {
	"バッドメディスン"
	end
}
script 148 mmbn4s {
	"コピーダメージ"
	end
}
script 149 mmbn4s {
	"アタック+10"
	end
}
script 150 mmbn4s {
	"ナビ+20"
	end
}
script 151 mmbn4s {
	"ロールアロー1"
	end
}
script 152 mmbn4s {
	"ロールアロー2"
	end
}
script 153 mmbn4s {
	"ロールアロー3"
	end
}
script 154 mmbn4s {
	"ガッツパンチ1"
	end
}
script 155 mmbn4s {
	"ガッツパンチ2"
	end
}
script 156 mmbn4s {
	"ガッツパンチ3"
	end
}
script 157 mmbn4s {
	"プロペラボム1"
	end
}
script 158 mmbn4s {
	"プロペラボム2"
	end
}
script 159 mmbn4s {
	"プロペラボム3"
	end
}
script 160 mmbn4s {
	"サーチボム1"
	end
}
script 161 mmbn4s {
	"サーチボム2"
	end
}
script 162 mmbn4s {
	"サーチボム3"
	end
}
script 163 mmbn4s {
	"メテオレイン1"
	end
}
script 164 mmbn4s {
	"メテオレイン2"
	end
}
script 165 mmbn4s {
	"メテオレイン3"
	end
}
script 166 mmbn4s {
	"ライトニング1"
	end
}
script 167 mmbn4s {
	"ライトニング2"
	end
}
script 168 mmbn4s {
	"ライトニング3"
	end
}
script 169 mmbn4s {
	"ハヤブサギリ1"
	end
}
script 170 mmbn4s {
	"ハヤブサギリ2"
	end
}
script 171 mmbn4s {
	"ハヤブサギリ3"
	end
}
script 172 mmbn4s {
	"ナンバーボール1"
	end
}
script 173 mmbn4s {
	"ナンバーボール2"
	end
}
script 174 mmbn4s {
	"ナンバーボール3"
	end
}
script 175 mmbn4s {
	"メタルギア1"
	end
}
script 176 mmbn4s {
	"メタルギア2"
	end
}
script 177 mmbn4s {
	"メタルギア3"
	end
}
script 178 mmbn4s {
	"パネルシュート1"
	end
}
script 179 mmbn4s {
	"パネルシュート2"
	end
}
script 180 mmbn4s {
	"パネルシュート3"
	end
}
script 181 mmbn4s {
	"アクアアッパー1"
	end
}
script 182 mmbn4s {
	"アクアアッパー2"
	end
}
script 183 mmbn4s {
	"アクアアッパー3"
	end
}
script 184 mmbn4s {
	"グリーンウッド1"
	end
}
script 185 mmbn4s {
	"グリーンウッド2"
	end
}
script 186 mmbn4s {
	"グリーンウッド3"
	end
}
script 187 mmbn4s {
	"ダークキャノン"
	end
}
script 188 mmbn4s {
	"ダークソード"
	end
}
script 189 mmbn4s {
	"ダークボム"
	end
}
script 190 mmbn4s {
	"ダークバルカン"
	end
}
script 191 mmbn4s {
	"ダークランス"
	end
}
script 192 mmbn4s {
	"ダークスプレッド"
	end
}
script 193 mmbn4s {
	"ダークステージ"
	end
}
script 194 mmbn4s {
	"ダークリカバリー"
	end
}
script 195 mmbn4s {
	"ヨビ1"
	end
}
script 196 mmbn4s {
	"ヨビ2"
	end
}
script 197 mmbn4s {
	"ヨビ3"
	end
}
script 198 mmbn4s {
	"ヨビ4"
	end
}
script 199 mmbn4s {
	"ヨビ5"
	end
}
script 200 mmbn4s {
	"ヨビ6"
	end
}
script 201 mmbn4s {
	"ドリームオーラ"
	end
}
script 202 mmbn4s {
	"ムラマサブレード"
	end
}
script 203 mmbn4s {
	"オジゾウサン"
	end
}
script 204 mmbn4s {
	"ポイズンアヌビス"
	end
}
script 205 mmbn4s {
	"アタック+30"
	end
}
script 206 mmbn4s {
	"バグシュウセイ"
	end
}
script 207 mmbn4s {
	"ダブルポイント"
	end
}
script 208 mmbn4s {
	"サンクチュアリ"
	end
}
script 209 mmbn4s {
	"フルカスタム"
	end
}
script 210 mmbn4s {
	"リュウセイグン"
	end
}
script 211 mmbn4s {
	"バグチェーン"
	end
}
script 212 mmbn4s {
	"ジェラシー"
	end
}
script 213 mmbn4s {
	"エレメントダーク"
	end
}
script 214 mmbn4s {
	"ブラックウイング"
	end
}
script 215 mmbn4s {
	"ゴッドハンマー"
	end
}
script 216 mmbn4s {
	"ダークライン"
	end
}
script 217 mmbn4s {
	"ネオバリアブル"
	end
}
script 218 mmbn4s {
	"Zセイバー"
	end
}
script 219 mmbn4s {
	"ガンデルソルEX"
	end
}
script 220 mmbn4s {
	"スーパーバルカン"
	end
}
script 221 mmbn4s {
	"ロール"
	end
}
script 222 mmbn4s {
	"ロールSP"
	end
}
script 223 mmbn4s {
	"ロールDS"
	end
}
script 224 mmbn4s {
	"ガッツマン"
	end
}
script 225 mmbn4s {
	"ガッツマンSP"
	end
}
script 226 mmbn4s {
	"ガッツマンDS"
	end
}
script 227 mmbn4s {
	"ウインドマン"
	end
}
script 228 mmbn4s {
	"ウインドマンSP"
	end
}
script 229 mmbn4s {
	"ウインドマンDS"
	end
}
script 230 mmbn4s {
	"サーチマン"
	end
}
script 231 mmbn4s {
	"サーチマンSP"
	end
}
script 232 mmbn4s {
	"サーチマンDS"
	end
}
script 233 mmbn4s {
	"ファイアマン"
	end
}
script 234 mmbn4s {
	"ファイアマンSP"
	end
}
script 235 mmbn4s {
	"ファイアマンDS"
	end
}
script 236 mmbn4s {
	"サンダーマン"
	end
}
script 237 mmbn4s {
	"サンダーマンSP"
	end
}
script 238 mmbn4s {
	"サンダーマンDS"
	end
}
script 239 mmbn4s {
	"ブルース"
	end
}
script 240 mmbn4s {
	"ブルースSP"
	end
}
script 241 mmbn4s {
	"ブルースDS"
	end
}
script 242 mmbn4s {
	"ナンバーマン"
	end
}
script 243 mmbn4s {
	"ナンバーマンSP"
	end
}
script 244 mmbn4s {
	"ナンバーマンDS"
	end
}
script 245 mmbn4s {
	"メタルマン"
	end
}
script 246 mmbn4s {
	"メタルマンSP"
	end
}
script 247 mmbn4s {
	"メタルマンDS"
	end
}
script 248 mmbn4s {
	"ジャンクマン"
	end
}
script 249 mmbn4s {
	"ジャンクマンSP"
	end
}
script 250 mmbn4s {
	"ジャンクマンDS"
	end
}
script 251 mmbn4s {
	"アクアマン"
	end
}
script 252 mmbn4s {
	"アクアマンSP"
	end
}
script 253 mmbn4s {
	"アクアマンDS"
	end
}
script 254 mmbn4s {
	"ウッドマン"
	end
}
script 255 mmbn4s {
	"ウッドマンSP"
	end
}
@archive 74636C
@size 133

script 0 mmbn4s {
	"ウッドマンDS"
	end
}
script 1 mmbn4s {
	"タップマン"
	end
}
script 2 mmbn4s {
	"タップマンSP"
	end
}
script 3 mmbn4s {
	"タップマンDS"
	end
}
script 4 mmbn4s {
	"シェードマン"
	end
}
script 5 mmbn4s {
	"シェードマンSP"
	end
}
script 6 mmbn4s {
	"シェードマンDS"
	end
}
script 7 mmbn4s {
	"バーナーマン"
	end
}
script 8 mmbn4s {
	"バーナーマンSP"
	end
}
script 9 mmbn4s {
	"バーナーマンDS"
	end
}
script 10 mmbn4s {
	"コールドマン"
	end
}
script 11 mmbn4s {
	"コールドマンSP"
	end
}
script 12 mmbn4s {
	"コールドマンDS"
	end
}
script 13 mmbn4s {
	"スパークマン"
	end
}
script 14 mmbn4s {
	"スパークマンSP"
	end
}
script 15 mmbn4s {
	"スパークマンDS"
	end
}
script 16 mmbn4s {
	"レーザーマン"
	end
}
script 17 mmbn4s {
	"レーザーマンSP"
	end
}
script 18 mmbn4s {
	"レーザーマンDS"
	end
}
script 19 mmbn4s {
	"ケンドーマン"
	end
}
script 20 mmbn4s {
	"ケンドーマンSP"
	end
}
script 21 mmbn4s {
	"ケンドーマンDS"
	end
}
script 22 mmbn4s {
	"ビデオマン"
	end
}
script 23 mmbn4s {
	"ビデオマンSP"
	end
}
script 24 mmbn4s {
	"ビデオマンDS"
	end
}
script 25 mmbn4s {
	"マーキング"
	end
}
script 26 mmbn4s {
	"キャノンモード"
	end
}
script 27 mmbn4s {
	"ホウガンモード"
	end
}
script 28 mmbn4s {
	"ソードモード"
	end
}
script 29 mmbn4s {
	"ファイアプラス"
	end
}
script 30 mmbn4s {
	"サンダープラス"
	end
}
script 31 mmbn4s {
	"アクアパワー"
	end
}
script 32 mmbn4s {
	"ウッドパワー"
	end
}
script 33 mmbn4s {
	"ブラックウエポン"
	end
}
script 34 mmbn4s {
	"ファイナルガン"
	end
}
script 35 mmbn4s {
	"ミテイ"
	end
}
script 36 mmbn4s {
	"ミテイ"
	end
}
script 37 mmbn4s {
	"ミテイ"
	end
}
script 38 mmbn4s {
	"ミテイ"
	end
}
script 39 mmbn4s {
	"ミテイ"
	end
}
script 40 mmbn4s {
	"ミテイ"
	end
}
script 41 mmbn4s {
	"ミテイ"
	end
}
script 42 mmbn4s {
	"ミテイ"
	end
}
script 43 mmbn4s {
	"ミテイ"
	end
}
script 44 mmbn4s {
	"ミテイ"
	end
}
script 45 mmbn4s {
	"フォルテ"
	end
}
script 46 mmbn4s {
	"デルタレイエッジ"
	end
}
script 47 mmbn4s {
	"カースオブバグ"
	end
}
script 48 mmbn4s {
	"メテオレッドサン"
	end
}
script 49 mmbn4s {
	"シグナルレッド"
	end
}
script 50 mmbn4s {
	"フォルテアナザー"
	end
}
script 51 mmbn4s {
	"ホーリードリーム"
	end
}
script 52 mmbn4s {
	"ブラックバリア"
	end
}
script 53 mmbn4s {
	"ブルームーンレイ"
	end
}
script 54 mmbn4s {
	"バグチャージ"
	end
}
script 55 mmbn4s {
	ereaderName
		data = 0
	end
}
script 56 mmbn4s {
	ereaderName
		data = 1
	end
}
script 57 mmbn4s {
	"ミテイ"
	end
}
script 58 mmbn4s {
	"ミテイ"
	end
}
script 59 mmbn4s {
	"ミテイ"
	end
}
script 60 mmbn4s {
	"ミテイ"
	end
}
script 61 mmbn4s {
	"ミテイ"
	end
}
script 62 mmbn4s {
	"ミテイ"
	end
}
script 63 mmbn4s {
	"ミテイ"
	end
}
script 64 mmbn4s {
	"ダークメシアネオ"
	end
}
script 65 mmbn4s {
	"ヒートスプレッド"
	end
}
script 66 mmbn4s {
	"バブルスプレッド"
	end
}
script 67 mmbn4s {
	"ギガキャノン1"
	end
}
script 68 mmbn4s {
	"ギガキャノン2"
	end
}
script 69 mmbn4s {
	"ギガキャノン3"
	end
}
script 70 mmbn4s {
	"スーパーワイド1"
	end
}
script 71 mmbn4s {
	"スーパーワイド2"
	end
}
script 72 mmbn4s {
	"スーパーワイド3"
	end
}
script 73 mmbn4s {
	"フレイムクロス1"
	end
}
script 74 mmbn4s {
	"フレイムクロス2"
	end
}
script 75 mmbn4s {
	"フレイムクロス3"
	end
}
script 76 mmbn4s {
	"ヘルブーメラン1"
	end
}
script 77 mmbn4s {
	"ヘルブーメラン2"
	end
}
script 78 mmbn4s {
	"ヘルブーメラン3"
	end
}
script 79 mmbn4s {
	"マッドファング1"
	end
}
script 80 mmbn4s {
	"マッドファング2"
	end
}
script 81 mmbn4s {
	"マッドファング3"
	end
}
script 82 mmbn4s {
	"ジゴクホッケー1"
	end
}
script 83 mmbn4s {
	"ジゴクホッケー2"
	end
}
script 84 mmbn4s {
	"ジゴクホッケー3"
	end
}
script 85 mmbn4s {
	"マグショック1"
	end
}
script 86 mmbn4s {
	"マグショック2"
	end
}
script 87 mmbn4s {
	"マグショック3"
	end
}
script 88 mmbn4s {
	"ドリームソード"
	end
}
script 89 mmbn4s {
	"パイルドライバー"
	end
}
script 90 mmbn4s {
	"ギガカウントボム"
	end
}
script 91 mmbn4s {
	"ポイズンファラオ"
	end
}
script 92 mmbn4s {
	"ボディガード"
	end
}
script 93 mmbn4s {
	"ハイパーバースト"
	end
}
script 94 mmbn4s {
	"ミテイ"
	end
}
script 95 mmbn4s {
	"ミテイ"
	end
}
script 96 mmbn4s {
	"ロックソウル"
	end
}
script 97 mmbn4s {
	"ロールソウル"
	end
}
script 98 mmbn4s {
	"ガッツソウル"
	end
}
script 99 mmbn4s {
	"ウインドソウル"
	end
}
script 100 mmbn4s {
	"サーチソウル"
	end
}
script 101 mmbn4s {
	"ファイアソウル"
	end
}
script 102 mmbn4s {
	"サンダーソウル"
	end
}
script 103 mmbn4s {
	"ブルースソウル"
	end
}
script 104 mmbn4s {
	"ナンバーソウル"
	end
}
script 105 mmbn4s {
	"メタルソウル"
	end
}
script 106 mmbn4s {
	"ジャンクソウル"
	end
}
script 107 mmbn4s {
	"アクアソウル"
	end
}
script 108 mmbn4s {
	"ウッドソウル"
	end
}
script 109 mmbn4s {
	"デューオソウル"
	end
}
script 110 mmbn4s {
	"フォルテソウル"
	end
}
script 111 mmbn4s {
	"ダークソウル"
	end
}
script 112 mmbn4s {
	"ダークレーザー"
	end
}
script 113 mmbn4s {
	"????"
	end
}
script 114 mmbn4s {
	"ファイターソード"
	end
}
script 115 mmbn4s {
	"ソニックブーム"
	end
}
script 116 mmbn4s {
	"ノロイ"
	end
}
script 117 mmbn4s {
	"バチアタリ"
	end
}
script 118 mmbn4s {
	"クロスソード"
	end
}
script 119 mmbn4s {
	"スーパーソニック"
	end
}
script 120 mmbn4s {
	"ダブルドリーム"
	end
}
script 121 mmbn4s {
	"ハヤオクリ"
	end
}
script 122 mmbn4s {
	"マキモドシ"
	end
}
script 123 mmbn4s {
	"カカリゲイコ"
	end
}
script 124 mmbn4s {
	"ギアチェンジ"
	end
}
script 125 mmbn4s {
	"ポルターガイスト"
	end
}
script 126 mmbn4s {
	"アイスキューブ"
	end
}
script 127 mmbn4s {
	"ラッシュサポート"
	end
}
script 128 mmbn4s {
	"ビートサポート"
	end
}
script 129 mmbn4s {
	"タンゴサポート"
	end
}
script 130 mmbn4s {
	"ファイナルガン"
	end
}
script 131 mmbn4s {
	"ガッツマシンガン"
	end
}
script 132 mmbn4s {
	" "
	end
}
@archive 746848
@size 1

script 0 mmbn4s {
	"デューオ"
	end
}
@archive 746850
@size 1

script 0 mmbn4s {
	"グランプリパワー"
	end
}
@archive 74685C
@size 28

script 0 mmbn4s {
	"A"
	end
}
script 1 mmbn4s {
	"B"
	end
}
script 2 mmbn4s {
	"C"
	end
}
script 3 mmbn4s {
	"D"
	end
}
script 4 mmbn4s {
	"E"
	end
}
script 5 mmbn4s {
	"F"
	end
}
script 6 mmbn4s {
	"G"
	end
}
script 7 mmbn4s {
	"H"
	end
}
script 8 mmbn4s {
	"I"
	end
}
script 9 mmbn4s {
	"J"
	end
}
script 10 mmbn4s {
	"K"
	end
}
script 11 mmbn4s {
	"L"
	end
}
script 12 mmbn4s {
	"M"
	end
}
script 13 mmbn4s {
	"N"
	end
}
script 14 mmbn4s {
	"O"
	end
}
script 15 mmbn4s {
	"P"
	end
}
script 16 mmbn4s {
	"Q"
	end
}
script 17 mmbn4s {
	"R"
	end
}
script 18 mmbn4s {
	"S"
	end
}
script 19 mmbn4s {
	"T"
	end
}
script 20 mmbn4s {
	"U"
	end
}
script 21 mmbn4s {
	"V"
	end
}
script 22 mmbn4s {
	"W"
	end
}
script 23 mmbn4s {
	"X"
	end
}
script 24 mmbn4s {
	"Y"
	end
}
script 25 mmbn4s {
	"Z"
	end
}
script 26 mmbn4s {
	"*"
	end
}
script 27 mmbn4s {
	" "
	end
}
@archive 7468CC
@size 29

script 0 mmbn4s {
	"A"
	end
}
script 1 mmbn4s {
	"B"
	end
}
script 2 mmbn4s {
	"C"
	end
}
script 3 mmbn4s {
	"D"
	end
}
script 4 mmbn4s {
	"E"
	end
}
script 5 mmbn4s {
	"F"
	end
}
script 6 mmbn4s {
	"G"
	end
}
script 7 mmbn4s {
	"H"
	end
}
script 8 mmbn4s {
	"I"
	end
}
script 9 mmbn4s {
	"J"
	end
}
script 10 mmbn4s {
	"K"
	end
}
script 11 mmbn4s {
	"L"
	end
}
script 12 mmbn4s {
	"M"
	end
}
script 13 mmbn4s {
	"N"
	end
}
script 14 mmbn4s {
	"O"
	end
}
script 15 mmbn4s {
	"P"
	end
}
script 16 mmbn4s {
	"Q"
	end
}
script 17 mmbn4s {
	"R"
	end
}
script 18 mmbn4s {
	"S"
	end
}
script 19 mmbn4s {
	"T"
	end
}
script 20 mmbn4s {
	"U"
	end
}
script 21 mmbn4s {
	"V"
	end
}
script 22 mmbn4s {
	"W"
	end
}
script 23 mmbn4s {
	"X"
	end
}
script 24 mmbn4s {
	"Y"
	end
}
script 25 mmbn4s {
	"Z"
	end
}
script 26 mmbn4s {
	"*"
	end
}
script 27 mmbn4s {
	"-"
	end
}
script 28 mmbn4s {
	" "
	end
}
@archive 746940
@size 17

script 0 mmbn4s {
	"DOUBLE DELETE!"
	end
}
script 1 mmbn4s {
	"TRIPLE DELETE!"
	end
}
script 2 mmbn4s {
	"VS"
	end
}
script 3 mmbn4s {
	"TIME UP!"
	end
}
script 4 mmbn4s {
	"    1   "
	end
}
script 5 mmbn4s {
	"    2   "
	end
}
script 6 mmbn4s {
	"    3   "
	end
}
script 7 mmbn4s {
	"    4   "
	end
}
script 8 mmbn4s {
	"    5   "
	end
}
script 9 mmbn4s {
	"    6   "
	end
}
script 10 mmbn4s {
	"    7   "
	end
}
script 11 mmbn4s {
	"    8   "
	end
}
script 12 mmbn4s {
	"    9   "
	end
}
script 13 mmbn4s {
	"   10   "
	end
}
script 14 mmbn4s {
	" COUNTER HIT! "
	end
}
script 15 mmbn4s {
	"LEFT "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	end
}
script 16 mmbn4s {
	"LEFT  0 "
	end
}
@archive 746A08
@size 58

script 0 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、にげた方がいいかな?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 1 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"""
	よし!
	なんとかにげきれたよ!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"""
	ダメだ!
	にげきれない・・・!
	"""
	keyWait
		any = false
	end
}
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
	熱斗くん、にげてるばあいじゃ
	ないよ!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	あいては作戦へんこう中だね
	ボクらも 作戦へんこうする?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 5 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"熱斗くん、どうする・・・!?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"どのそうびを つかえばいいかな?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"ロックバスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"シールドでまもりをかためろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"どのそうびを つかえばいいかな?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"ロックバスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"シールドでまもりをかためろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"""
	あいては作戦へんこう中よ
	ワタシたちも へんこうする?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"どうしよっか・・・?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけよう!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせずに!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"そうびはどれがいいかな・・・?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ロールアロー\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってて"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"そうびはどれがいいかな・・・?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ロールアロー\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってて"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこうでガッツ
	コッチもへんこうするでガスか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"どうするでガッツ!?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"そうびはどうするでガスか?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ガッツハンマー\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"そうびはどうするでガスか?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ガッツハンマー\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中だ
	コチラも へんこうするか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"さて、どうするべきか・・・?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"フム、では風むきはどうする?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"トップウでふっとばせ\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"スイコミでひきよせろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"風むきはどうする?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"トップウでふっとばせ\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"スイコミでひきよせろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中
	こちらもへんこうしますか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"めいれいを どうぞ\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"そうびの ごしじを"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"スコープガン\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"そうびの ごしじを"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"スコープガン\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中だ
	オレたちもへんこうするか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"さあ、どうする?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"どのぶきで もやすんだ!?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ファイアアーム\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"どのぶきで もやすんだ!?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ファイアアーム\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中か
	われわれもへんこうするか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 29 mmbn4 {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"どうたたかうべきかな?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 30 mmbn4 {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"いかなる さばきをくだすのか?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"エレキビーム\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"いかなる さばきをくだすのか?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"エレキビーム\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中です
	われわれもへんこうしますか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"ごめいれいを\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"そうびは いかがしましょう"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"シールド\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ロングソード\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 35 mmbn4 {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"そうびは いかがしましょう"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"シールド\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ロングソード\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 36 mmbn4 {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"""
	あいてはサクセンヘンコウ中
	こちらもへんこうしますか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 37 mmbn4 {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"どんなサクセンでしょう?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 38 mmbn4 {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"どのそうびがヨロシイですか?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"シールド\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 39 mmbn4 {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"どのそうびがヨロシイですか?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"シールド\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 40 mmbn4 {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中だな
	こちらもへんこうするか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"さあ・・・どうする!?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 42 mmbn4 {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"どのそうびで うちくだく?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"メタルブレード\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 43 mmbn4 {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"どのそうびで うちくだく?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"メタルブレード\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 44 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"""
	アイテハサクセンヘンコウダ
	オデラモ スルカ?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 45 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"ドウスルンダ・・・?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 46 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"ナニ ツカエバイインダ?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ジャンクプレス\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 47 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"ナニ ツカエバイインダ?"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"ジャンクプレス\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 48 mmbn4 {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	あいては作戦へんこう中
	ボクらもへんこうするっぴゅ?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 49 mmbn4 {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"どうするっぴゅか?\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 50 mmbn4 {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"そうびをえらんでほしいっぴゅ"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"アクアショット\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 51 mmbn4 {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"そうびをえらんでほしいっぴゅ"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"アクアショット\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"""
	てきは作戦へんこう中か
	われわれもへんこうするか?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"そなたのさくせんをきこう\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"てきを おいかけろ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"てきと れつをあわせるな!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"そうびはどれがよいものか・・・"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"デスフォレスト\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 55 mmbn4 {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"そうびはどれがよいものか・・・"
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"バスターで攻撃だ!\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"デスフォレスト\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"チップをおくるからまってろ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 56 mmbn4 {
	checkFlag
		flag = 3015
		jumpIfTrue = 57
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、にげてるばあいじゃ
	ないよ!
	"""
	keyWait
		any = false
	end
}
script 57 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たたかおう、炎山くん!
	ブルースを たすけるんだ!
	"""
	keyWait
		any = false
	end
}
@archive 747C4C
@size 253

script 0 mmbn4s {
	"ロックマン"
	end
}
script 1 mmbn4s {
	"メットール"
	end
}
script 2 mmbn4s {
	"メットールEX"
	end
}
script 3 mmbn4s {
	"メットール2"
	end
}
script 4 mmbn4s {
	"メットール2EX"
	end
}
script 5 mmbn4s {
	"メットール3"
	end
}
script 6 mmbn4s {
	"メットール3EX"
	end
}
script 7 mmbn4s {
	"ボルケルギア"
	end
}
script 8 mmbn4s {
	"ボルケルギアEX"
	end
}
script 9 mmbn4s {
	"ボルザーギア"
	end
}
script 10 mmbn4s {
	"ボルザーギアEX"
	end
}
script 11 mmbn4s {
	"ボルドロギア"
	end
}
script 12 mmbn4s {
	"ボルドロギアEX"
	end
}
script 13 mmbn4s {
	"ビリー"
	end
}
script 14 mmbn4s {
	"ビリーEX"
	end
}
script 15 mmbn4s {
	"ビリーズー"
	end
}
script 16 mmbn4s {
	"ビリーズーEX"
	end
}
script 17 mmbn4s {
	"ビリーニック"
	end
}
script 18 mmbn4s {
	"ビリーニックEX"
	end
}
script 19 mmbn4s {
	"ガイアント"
	end
}
script 20 mmbn4s {
	"ガイアントEX"
	end
}
script 21 mmbn4s {
	"ガイアンドラ"
	end
}
script 22 mmbn4s {
	"ガイアンドラEX"
	end
}
script 23 mmbn4s {
	"ガイアンバン"
	end
}
script 24 mmbn4s {
	"ガイアンバンEX"
	end
}
script 25 mmbn4s {
	"ガルー"
	end
}
script 26 mmbn4s {
	"ガルーEX"
	end
}
script 27 mmbn4s {
	"ガルーバー"
	end
}
script 28 mmbn4s {
	"ガルーバーEX"
	end
}
script 29 mmbn4s {
	"ガルーダン"
	end
}
script 30 mmbn4s {
	"ガルーダンEX"
	end
}
script 31 mmbn4s {
	"エビロン"
	end
}
script 32 mmbn4s {
	"エビロンEX"
	end
}
script 33 mmbn4s {
	"エビデル"
	end
}
script 34 mmbn4s {
	"エビデルEX"
	end
}
script 35 mmbn4s {
	"エビサイド"
	end
}
script 36 mmbn4s {
	"エビサイドEX"
	end
}
script 37 mmbn4s {
	"ラウンダ"
	end
}
script 38 mmbn4s {
	"ラウンダEX"
	end
}
script 39 mmbn4s {
	"ラウンダラウ"
	end
}
script 40 mmbn4s {
	"ラウンダラウEX"
	end
}
script 41 mmbn4s {
	"ラウンダバー"
	end
}
script 42 mmbn4s {
	"ラウンダバーEX"
	end
}
script 43 mmbn4s {
	"ララパッパ"
	end
}
script 44 mmbn4s {
	"ララチューバ"
	end
}
script 45 mmbn4s {
	"ララボーン"
	end
}
script 46 mmbn4s {
	"ララミュート"
	end
}
script 47 mmbn4s {
	"ララホルン"
	end
}
script 48 mmbn4s {
	"ララパッパEX"
	end
}
script 49 mmbn4s {
	"マグテクト"
	end
}
script 50 mmbn4s {
	"マグテクトEX"
	end
}
script 51 mmbn4s {
	"マグテクトビー"
	end
}
script 52 mmbn4s {
	"マグテクトビーEX"
	end
}
script 53 mmbn4s {
	"マグテクトシー"
	end
}
script 54 mmbn4s {
	"マグテクトシーEX"
	end
}
script 55 mmbn4s {
	"プルメロ"
	end
}
script 56 mmbn4s {
	"プルメロEX"
	end
}
script 57 mmbn4s {
	"プルタロ"
	end
}
script 58 mmbn4s {
	"プルタロEX"
	end
}
script 59 mmbn4s {
	"プルギロ"
	end
}
script 60 mmbn4s {
	"プルギロEX"
	end
}
script 61 mmbn4s {
	"ダーマ"
	end
}
script 62 mmbn4s {
	"ダーマEX"
	end
}
script 63 mmbn4s {
	"ダーガ"
	end
}
script 64 mmbn4s {
	"ダーガEX"
	end
}
script 65 mmbn4s {
	"ダーダラ"
	end
}
script 66 mmbn4s {
	"ダーダラEX"
	end
}
script 67 mmbn4s {
	"キルブー"
	end
}
script 68 mmbn4s {
	"キルブーEX"
	end
}
script 69 mmbn4s {
	"キルブーテ"
	end
}
script 70 mmbn4s {
	"キルブーテEX"
	end
}
script 71 mmbn4s {
	"キルブーロ"
	end
}
script 72 mmbn4s {
	"キルブーロEX"
	end
}
script 73 mmbn4s {
	"ウェザース"
	end
}
script 74 mmbn4s {
	"ウェザール"
	end
}
script 75 mmbn4s {
	"ウェザーム"
	end
}
script 76 mmbn4s {
	"ウェザーネ"
	end
}
script 77 mmbn4s {
	"ウェザーブ"
	end
}
script 78 mmbn4s {
	"ウェザースEX"
	end
}
script 79 mmbn4s {
	"クーモス"
	end
}
script 80 mmbn4s {
	"クーモスEX"
	end
}
script 81 mmbn4s {
	"クモモート"
	end
}
script 82 mmbn4s {
	"クモモートEX"
	end
}
script 83 mmbn4s {
	"クモゲイツ"
	end
}
script 84 mmbn4s {
	"クモゲイツEX"
	end
}
script 85 mmbn4s {
	"ゲイラーク"
	end
}
script 86 mmbn4s {
	"ゲイラークEX"
	end
}
script 87 mmbn4s {
	"ゲイラス"
	end
}
script 88 mmbn4s {
	"ゲイラスEX"
	end
}
script 89 mmbn4s {
	"ゲイラビル"
	end
}
script 90 mmbn4s {
	"ゲイラビルEX"
	end
}
script 91 mmbn4s {
	"サーキラー"
	end
}
script 92 mmbn4s {
	"サーキラーEX"
	end
}
script 93 mmbn4s {
	"サーキライル"
	end
}
script 94 mmbn4s {
	"サーキライルEX"
	end
}
script 95 mmbn4s {
	"サーキランド"
	end
}
script 96 mmbn4s {
	"サーキランドEX"
	end
}
script 97 mmbn4s {
	"マルモコ"
	end
}
script 98 mmbn4s {
	"マルモコEX"
	end
}
script 99 mmbn4s {
	"ミルモコ"
	end
}
script 100 mmbn4s {
	"ミルモコEX"
	end
}
script 101 mmbn4s {
	"ゲルモコ"
	end
}
script 102 mmbn4s {
	"ゲルモコEX"
	end
}
script 103 mmbn4s {
	"ウォーラ"
	end
}
script 104 mmbn4s {
	"ウォーラEX"
	end
}
script 105 mmbn4s {
	"ウォーラッド"
	end
}
script 106 mmbn4s {
	"ウォーラッドEX"
	end
}
script 107 mmbn4s {
	"ウォーゴドン"
	end
}
script 108 mmbn4s {
	"ウォーゴドンEX"
	end
}
script 109 mmbn4s {
	"エレンプラ"
	end
}
script 110 mmbn4s {
	"エレンプラ2"
	end
}
script 111 mmbn4s {
	"エレンプラ3"
	end
}
script 112 mmbn4s {
	"エレンプラ4"
	end
}
script 113 mmbn4s {
	"エレンプラ5"
	end
}
script 114 mmbn4s {
	"エレンプラEX"
	end
}
script 115 mmbn4s {
	"ボムボーイ"
	end
}
script 116 mmbn4s {
	"ボムボーイEX"
	end
}
script 117 mmbn4s {
	"ボムワーカー"
	end
}
script 118 mmbn4s {
	"ボムワーカーEX"
	end
}
script 119 mmbn4s {
	"ボムレイバー"
	end
}
script 120 mmbn4s {
	"ボムレイバーEX"
	end
}
script 121 mmbn4s {
	"ウインドボックス"
	end
}
script 122 mmbn4s {
	"バキュームファン"
	end
}
script 123 mmbn4s {
	"ウインドボックス2"
	end
}
script 124 mmbn4s {
	"バキュームファン2"
	end
}
script 125 mmbn4s {
	"ウインドボックス3"
	end
}
script 126 mmbn4s {
	"バキュームファン3"
	end
}
script 127 mmbn4s {
	" "
	end
}
script 128 mmbn4s {
	"ロール"
	end
}
script 129 mmbn4s {
	"ロールV2"
	end
}
script 130 mmbn4s {
	"ロールV3"
	end
}
script 131 mmbn4s {
	"ロールSP"
	end
}
script 132 mmbn4s {
	"ガッツマン"
	end
}
script 133 mmbn4s {
	"ガッツマンV2"
	end
}
script 134 mmbn4s {
	"ガッツマンV3"
	end
}
script 135 mmbn4s {
	"ガッツマンSP"
	end
}
script 136 mmbn4s {
	"ウインドマン"
	end
}
script 137 mmbn4s {
	"ウインドマンV2"
	end
}
script 138 mmbn4s {
	"ウインドマンV3"
	end
}
script 139 mmbn4s {
	"ウインドマンSP"
	end
}
script 140 mmbn4s {
	"サーチマン"
	end
}
script 141 mmbn4s {
	"サーチマンV2"
	end
}
script 142 mmbn4s {
	"サーチマンV3"
	end
}
script 143 mmbn4s {
	"サーチマンSP"
	end
}
script 144 mmbn4s {
	"ファイアマン"
	end
}
script 145 mmbn4s {
	"ファイアマンV2"
	end
}
script 146 mmbn4s {
	"ファイアマンV3"
	end
}
script 147 mmbn4s {
	"ファイアマンSP"
	end
}
script 148 mmbn4s {
	"サンダーマン"
	end
}
script 149 mmbn4s {
	"サンダーマンV2"
	end
}
script 150 mmbn4s {
	"サンダーマンV3"
	end
}
script 151 mmbn4s {
	"サンダーマンSP"
	end
}
script 152 mmbn4s {
	"ブルース"
	end
}
script 153 mmbn4s {
	"ブルースV2"
	end
}
script 154 mmbn4s {
	"ブルースV3"
	end
}
script 155 mmbn4s {
	"ブルースSP"
	end
}
script 156 mmbn4s {
	"ナンバーマン"
	end
}
script 157 mmbn4s {
	"ナンバーマンV2"
	end
}
script 158 mmbn4s {
	"ナンバーマンV3"
	end
}
script 159 mmbn4s {
	"ナンバーマンSP"
	end
}
script 160 mmbn4s {
	"メタルマン"
	end
}
script 161 mmbn4s {
	"メタルマンV2"
	end
}
script 162 mmbn4s {
	"メタルマンV3"
	end
}
script 163 mmbn4s {
	"メタルマンSP"
	end
}
script 164 mmbn4s {
	"ジャンクマン"
	end
}
script 165 mmbn4s {
	"ジャンクマンV2"
	end
}
script 166 mmbn4s {
	"ジャンクマンV3"
	end
}
script 167 mmbn4s {
	"ジャンクマンSP"
	end
}
script 168 mmbn4s {
	"アクアマン"
	end
}
script 169 mmbn4s {
	"アクアマンV2"
	end
}
script 170 mmbn4s {
	"アクアマンV3"
	end
}
script 171 mmbn4s {
	"アクアマンSP"
	end
}
script 172 mmbn4s {
	"ウッドマン"
	end
}
script 173 mmbn4s {
	"ウッドマンV2"
	end
}
script 174 mmbn4s {
	"ウッドマンV3"
	end
}
script 175 mmbn4s {
	"ウッドマンSP"
	end
}
script 176 mmbn4s {
	"タップマン"
	end
}
script 177 mmbn4s {
	"タップマンV2"
	end
}
script 178 mmbn4s {
	"タップマンV3"
	end
}
script 179 mmbn4s {
	"タップマンSP"
	end
}
script 180 mmbn4s {
	"シェードマン"
	end
}
script 181 mmbn4s {
	"シェードマンV2"
	end
}
script 182 mmbn4s {
	"シェードマンV3"
	end
}
script 183 mmbn4s {
	"シェードマンSP"
	end
}
script 184 mmbn4s {
	"バーナーマン"
	end
}
script 185 mmbn4s {
	"バーナーマンV2"
	end
}
script 186 mmbn4s {
	"バーナーマンV3"
	end
}
script 187 mmbn4s {
	"バーナーマンSP"
	end
}
script 188 mmbn4s {
	"コールドマン"
	end
}
script 189 mmbn4s {
	"コールドマンV2"
	end
}
script 190 mmbn4s {
	"コールドマンV3"
	end
}
script 191 mmbn4s {
	"コールドマンSP"
	end
}
script 192 mmbn4s {
	"スパークマン"
	end
}
script 193 mmbn4s {
	"スパークマンV2"
	end
}
script 194 mmbn4s {
	"スパークマンV3"
	end
}
script 195 mmbn4s {
	"スパークマンSP"
	end
}
script 196 mmbn4s {
	"ヒールナビ"
	end
}
script 197 mmbn4s {
	"ヒールナビ"
	end
}
script 198 mmbn4s {
	"ヒールナビ"
	end
}
script 199 mmbn4s {
	"ヒールナビSP"
	end
}
script 200 mmbn4s {
	"ノーマルナビ"
	end
}
script 201 mmbn4s {
	"ノーマルナビ"
	end
}
script 202 mmbn4s {
	"ノーマルナビ"
	end
}
script 203 mmbn4s {
	"ノーマルナビ"
	end
}
script 204 mmbn4s {
	"ヒールナビ"
	end
}
script 205 mmbn4s {
	"ヒールナビ"
	end
}
script 206 mmbn4s {
	"ヒールナビ"
	end
}
script 207 mmbn4s {
	"ヒールナビSP"
	end
}
script 208 mmbn4s {
	"レーザーマン"
	end
}
script 209 mmbn4s {
	"レーザーマンV2"
	end
}
script 210 mmbn4s {
	"レーザーマンV3"
	end
}
script 211 mmbn4s {
	"レーザーマンSP"
	end
}
script 212 mmbn4s {
	"ケンドーマン"
	end
}
script 213 mmbn4s {
	"ケンドーマンV2"
	end
}
script 214 mmbn4s {
	"ケンドーマンV3"
	end
}
script 215 mmbn4s {
	"ケンドーマンSP"
	end
}
script 216 mmbn4s {
	"ビデオマン"
	end
}
script 217 mmbn4s {
	"ビデオマンV2"
	end
}
script 218 mmbn4s {
	"ビデオマンV3"
	end
}
script 219 mmbn4s {
	"ビデオマンSP"
	end
}
script 220 mmbn4s {
	"ナビシャドー"
	end
}
script 221 mmbn4s {
	"ナビシャドーSP"
	end
}
script 222 mmbn4s {
	"ナビブラック"
	end
}
script 223 mmbn4s {
	"ナビブラックSP"
	end
}
script 224 mmbn4s {
	"デューオ"
	end
}
script 225 mmbn4s {
	"デューオV2"
	end
}
script 226 mmbn4s {
	"デューオV3"
	end
}
script 227 mmbn4s {
	"デューオSP"
	end
}
script 228 mmbn4s {
	"フォルテ"
	end
}
script 229 mmbn4s {
	"フォルテSP"
	end
}
script 230 mmbn4s {
	"フォルテXX"
	end
}
script 231 mmbn4s {
	end
}
script 232 mmbn4s {
	end
}
script 233 mmbn4s {
	end
}
script 234 mmbn4s {
	end
}
script 235 mmbn4s {
	end
}
script 236 mmbn4s {
	end
}
script 237 mmbn4s {
	end
}
script 238 mmbn4s {
	end
}
script 239 mmbn4s {
	end
}
script 240 mmbn4s {
	"ロックマンDS"
	end
}
script 241 mmbn4s {
	"ロールDS"
	end
}
script 242 mmbn4s {
	"ガッツマンDS"
	end
}
script 243 mmbn4s {
	"ウインドマンDS"
	end
}
script 244 mmbn4s {
	"サーチマンDS"
	end
}
script 245 mmbn4s {
	"ファイアマンDS"
	end
}
script 246 mmbn4s {
	"サンダーマンDS"
	end
}
script 247 mmbn4s {
	"ブルースDS"
	end
}
script 248 mmbn4s {
	"ナンバーマンDS"
	end
}
script 249 mmbn4s {
	"メタルマンDS"
	end
}
script 250 mmbn4s {
	"ジャンクマンDS"
	end
}
script 251 mmbn4s {
	"アクアマンDS"
	end
}
script 252 mmbn4s {
	"ウッドマンDS"
	end
}
@archive 748550
@size 24

script 0 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ウイルスバスティングを
	はじめるよ!
	"""
	keyWait
		any = false
	clearMsg
	"オペレートよろしく!"
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn4 {
	mugshotShow
		mugshot = Lan
	"""
	まかせろ
	いくぜ、ロックマン!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	えっと、
	ウイルスと たたかうには・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	まず ロックマンに
	チップデータを
	おくってやらなきゃな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このカスタムウインドウで
	バトルチップを えらんでっと
	・・・
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	この中から チップを
	えらんで・・・と、
	いいチップは ないかな?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ここに でてるのが
	今、オレがそうびしてる
	チップフォルダの なかみだったな
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そいで、ココにでてるのが
	今えらんでる チップのデータ!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"コレが 攻撃力"
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"バッチリ じゅんびOKだぜ!"
	keyWait
		any = false
	clearMsg
	"""
	んで、気になる
	ウイルスのHP(ヒットポイント)
	は、コレだな!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	HPは ウイルスの
	たいきゅうりょく!
	しっかり 見とかなきゃ!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 7 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	"""
	熱斗くん、おぼえてる?
	チップデータは きほんてきに
	1ターンに1つしかおくれないけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	キャノンとキャノン みたいに
	おなじ チップデータなら
	いっしょに えらべるんだよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	今なら キャノンが2まい
	あるから キャノンをえらぼうよ!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いわれなくったって!
	わかってるぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	おくるチップを けっていするのは
	Aボタンで、
	"""
	keyWait
		any = false
	clearMsg
	"""
	Rボタンをおせば、
	チップデータのせつめいが
	見られるんだったな
	"""
	keyWait
		any = false
	clearMsg
	"""
	あと、Lボタンをおすと
	にげることも できたっけ
	"""
	keyWait
		any = false
	clearMsg
	"""
	けど、今は にげてるばあい
	じゃない!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ロックマンに
	チップを おくらなきゃな
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	キャノンが 2まいでてるから、
	もう1まい えらべるな
	いきなり チャンスとうらいだぜ!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	それはキャンセルしなくて
	いいんじゃない?
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	もう1つの キャノンもおくって!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスを 一気にデリートする
	チャンスだよ!!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	チップを えらんでないよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクのロックバスターだけで
	たたかっても いいんだけど
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスを 一気にやっつけるには
	チップデータがいるよ!
	"""
	keyWait
		any = false
	clearMsg
	"なにか いいチップデータはない?"
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ここでにげちゃったら
	レンジが つかえなくなって
	あさゴハンぬきだよ!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし、てんそうする
	チップデータは けっていしたし
	あとは OKをえらぶだけだぜ!
	"""
	keyWait
		any = false
	clearMsg
	"いくぞ、ロックマン!!"
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、今えらんでるチップで
	だいじょうぶだよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さぁ、はやくチップデータを
	てんそうして!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、チップデータを
	てんそうしたぞ!
	ウイルスバスティングかいしだぜ!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	オペレート おねがい!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクはバトルフィールドを
	上下左右に うごくことが
	できるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンで ロックバスター、
	いりょくは よわいけど
	れんしゃができるよ!
	"""
	keyWait
		any = false
	clearMsg
	"おぼえてるよね!"
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"コレがボクの HPだよ!"
	keyWait
		any = false
	clearMsg
	"""
	HPが0になると ボクはデリート
	されちゃうから 気をつけてね!!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクのあたまの上に
	ひょうじされているのが
	"""
	keyWait
		any = false
	clearMsg
	"""
	さっき、熱斗くんが
	おくってくれた チップデータだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Aボタンで つかうんだけど、
	1コにつき 1回しか
	つかえないから ちゅういして!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あと、チップをつかっても
	ウイルスを たおせなかった
	ばあいは・・・
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 20
}
script 20 mmbn4 {
	mugshotShow
		mugshot = Lan
	"""
	もーっ、わかってるってば!
	カスタムゲージ、だろ?
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このカスタムゲージは
	じかんが たつと
	すこしずつ たまっていって、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ゲージがたまったら
	Lボタンか Rボタンで、
	"""
	keyWait
		any = false
	clearMsg
	"""
	また カスタムがめんに
	はいれるんだろ?
	"""
	keyWait
		any = false
	clearMsg
	"""
	バトルの きほんは
	バッチリだって!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さ、グズグズしてないで、
	ウイルスを やっつけようぜ!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、キャノンを
	えらぼうよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さ、Bボタンでキャンセルして
	えらびなおそうよ!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんってば!
	キャノンをえらぼうよ、ね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンでキャンセルして
	えらびなおそ!
	"""
	keyWait
		any = false
	end
}
@archive 748C88
@size 18

script 0 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、"
	keyWait
		any = false
	clearMsg
	"""
	こんどは サポートこうかのある
	チップと ぶきチップを
	くみあわせて 攻撃しようよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ホラ、そこにでている
	エリアスチールは
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクがうごけるエリアを
	ひろくする こうかがあるんだ
	"""
	keyWait
		any = false
	end
}
script 1 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これと せっきん攻撃の
	ワイドソードを くみあわせる
	せんぽうは かなりゆうこうだよ
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	えっ、いっしょにえらべるのは
	おんなじチップどうしだけ
	なんじゃ・・・
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 3
}
script 3 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	"""
	もう、熱斗くん!
	わすれちゃったの?
	ホラ、ココを見てみてよ!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あっ! いっけね!
	ドわすれしてた!
	"""
	keyWait
		any = false
	clearMsg
	"""
	このアルファベットが
	チップコードで、トランプの
	マークみたいなもんなんだな
	"""
	keyWait
		any = false
	clearMsg
	"""
	んで、チップコードがおなじなら、
	ちがうしゅるいのチップでも
	いっしょにえらべるんだったよな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	今でいったら・・・
	エリアスチールと、ワイドソードが
	おなじコードだから、
	"""
	keyWait
		any = false
	clearMsg
	"""
	2つのチップを いっしょに
	えらぶことが できるんだ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	たしか、*(アスタリスク)って
	いうコードもあったよな
	"""
	keyWait
		any = false
	clearMsg
	"""
	トランプの ジョーカーみたいに
	どのコードとでも いっしょに
	えらべるべんりなコードだったな!
	"""
	keyWait
		any = false
	clearMsg
	"""
	こんかい*は ないみたいだから、
	コードSでつないでみるか!
	"""
	keyWait
		any = false
	clearMsg
	"""
	エリアスチールとワイドソードの
	れんぞく攻撃だぜ!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	エリアスチールだね!
	じゃ つぎはワイドソードを
	おねがい!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、さきにエリアスチールを
	えらぼうよ!
	Bボタンでいったんキャンセルして
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	エリアスチールをえらぼうよ
	Bボタンで いったん
	キャンセルしよう
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	まず エリアスチールをえらぼうよ
	ほかのチップをえらんでるなら
	Bボタンでキャンセルして
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	じゅんばんがぎゃくだよ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンでいったん2コとも
	キャンセルしよう
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よっし、じゅんびかんりょう!
	OKをえらんで ロックマンに
	チップをてんそうするぜ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、キャンセルは
	しなくていいよ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、キャンセルは
	しなくていいよ!
	はやくチップをてんそうして!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	こんかいは ワイドソードの
	データも いっしょに
	おくってちょうだい
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	今は にげてるばあいじゃない!
	はやくレンジを なおさないと!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、チップを
	おくったぞ!
	"""
	keyWait
		any = false
	clearMsg
	"れんぞく攻撃を キメるんだ!"
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よっし、れんぞく攻撃
	はつどうだ!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	まずは Aボタンで
	エリアスチールをつかうと、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスがわの いちばん左の
	エリアが こっちのエリアになって
	"""
	keyWait
		any = false
	clearMsg
	"""
	ロックマンが うばったエリアまで
	行けるようになる!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	で、そのうばったエリアに行って、
	ワイドソードで きる! だね!
	"""
	keyWait
		any = false
	clearMsg
	"""
	かなり きょうりょくな
	攻撃だけど、
	"""
	keyWait
		any = false
	clearMsg
	"""
	それだけ ウイルスに
	ちかづかないと いけないから
	ちゅういしないとね!
	"""
	keyWait
		any = false
	clearMsg
	"それじゃ、いくよ!"
	keyWait
		any = false
	end
}
@archive 7491E8
@size 14

script 0 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	熱斗、ちょっといいか?
	パパが2つ いいコトを
	おしえてあげよう
	"""
	keyWait
		any = false
	clearMsg
	"カウンターとフルシンクロを"
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn4 {
	mugshotShow
		mugshot = Lan
	"カウンターとフルシンクロ?"
	keyWait
		any = false
	clearMsg
	jump
		target = 2
}
script 2 mmbn4 {
	mugshotShow
		mugshot = Dad
	"""
	そうだ
	この「ココロウインドウ」を
	見てみろ
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	ここには ナビのココロの
	じょうたいが うつしだされるんだ
	"""
	keyWait
		any = false
	clearMsg
	"ここを見ることで、"
	keyWait
		any = false
	clearMsg
	"""
	オペレーティングが
	うまくいっているかどうかを
	見るめやすになるってことだな
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいしょはナビも
	へいじょうしん でいるが、
	"""
	keyWait
		any = false
	clearMsg
	"""
	オペレーティングが わるくて
	ダメージを うけつづけたりすると
	"""
	keyWait
		any = false
	clearMsg
	"""
	とうぜん ナビは ふあんな
	きもちになる
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	ぎゃくに いきのあった
	オペレーティングをすれば、
	"""
	keyWait
		any = false
	clearMsg
	"""
	フルシンクロといって、
	ナビとオペレーターのココロが
	1つになったかのような
	"""
	keyWait
		any = false
	clearMsg
	"しゅうちゅうりょくを うみだす"
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いきのあった
	オペレーティング・・・って?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 6
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Dad
	"""
	てきの攻撃を かわしながら
	チップ攻撃を あてていけば、
	"""
	keyWait
		any = false
	clearMsg
	"""
	おのずと フルシンクロ
	じょうたいに なるだろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	だが、なんといっても
	こうかてきなのは
	カウンターだ
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 7 mmbn4 {
	mugshotShow
		mugshot = Lan
	"カウンター?"
	keyWait
		any = false
	clearMsg
	jump
		target = 8
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Dad
	"""
	てきが まさに今
	攻撃してくる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	というタイミングで
	チップ攻撃をあてることを
	カウンターというんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ふいをつかれたあいては
	マヒじょうたいになり
	しばらくうごけなくなるぞ!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 9
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	"""
	なるほど
	メンくらっちゃうわけか!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 10
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Dad
	"""
	そしてフルシンクロになると
	つぎにつかうチップの攻撃力が
	いちどだけ 2ばいになるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	しかもフルシンクロだと
	カウンターの タイミングのときに
	てきが光って見えるから・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	れんぞくでカウンターを
	きめつづければ なんどでも
	攻撃力が2ばいのチップをつかえる
	"""
	keyWait
		any = false
	clearMsg
	"""
	よし・・・
	ちょうど いいきかいだから
	ここで れんしゅうしてみるか
	"""
	keyWait
		any = false
	clearMsg
	"""
	れんしゅうだから
	フルシンクロじょうたいで
	ためしてみよう
	"""
	keyWait
		any = false
	clearMsg
	"""
	てきが 光ったときに
	チップ攻撃を あてるんだ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	どうだ、カウンターを
	きめることはできたか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	じっせんで
	ムリにねらうことはないが
	"""
	keyWait
		any = false
	clearMsg
	"""
	つかいこなせれば、大きな
	せんりょくとなるだろう
	"""
	keyWait
		any = false
	clearMsg
	"""
	おっと
	もうひとついいわすれてた
	"""
	keyWait
		any = false
	clearMsg
	"""
	エリアスチールのように
	じかんをとめて攻撃するチップでは
	カウンターはおこらない
	"""
	keyWait
		any = false
	clearMsg
	"""
	チップのせいのうをかんがえて
	タイミングをつかんでいけ!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 12
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	"""
	ありがとう、パパ!
	カウンター、フルシンクロ・・・か
	かっこいい!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	今は にげるひつようはないぞ
	さ、つづけるぞ
	"""
	keyWait
		any = false
	end
}
@archive 74969C
@size 13

script 0 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	まず、ソウルユニゾンするためには
	ソウルにおうじた チップを1まい
	いけにえに しなければならない
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn4 {
	mugshotShow
		mugshot = Lan
	"""
	いけにえ?
	じゃぁ、すてちゃうってコト?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 2
}
script 2 mmbn4 {
	mugshotShow
		mugshot = Dad
	"""
	そうだ、今ロックマンが
	ユニゾンできるソウルは
	アクアソウルだな
	"""
	keyWait
		any = false
	clearMsg
	"""
	なら、水属性のチップを
	いけにえにすることによって
	ソウルユニゾンすることができる
	"""
	keyWait
		any = false
	clearMsg
	"""
	やりかたは こうだ、
	まず、水属性のチップを
	えらんで・・・
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	つぎにこれ、ユニゾンコマンドを
	えらぶんだ
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"やってみろ、熱斗"
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	今は れんしゅうだから
	「バブルショット」をえらんでみろ
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	熱斗、今は「バブルショット」を
	えらぼう、さ、キャンセルして
	えらびなおすんだ
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	熱斗、ユニゾンコマンドを
	わすれているぞ
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	熱斗、
	キャンセルするひつようはないぞ
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	今は にげるひつようはないぞ
	さ、つづけるぞ
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	ほら、こんなふうに
	ゆうごうすることで、
	ユニゾンチップが かんせいする
	"""
	keyWait
		any = false
	clearMsg
	"""
	これでOKを えらべば
	じどうてきに ソウルユニゾンが
	はつどうする!
	"""
	keyWait
		any = false
	clearMsg
	"""
	アクアソウルは水属性のチップを
	ためうちしてつかうことで
	攻撃力が2ばいになる!
	"""
	keyWait
		any = false
	clearMsg
	"""
	さらにBボタンのためうちが
	アクアショットになるぞ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	では じっさいにやってみろ
	熱斗!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	これが ソウルユニゾンだ
	うまくつかえば かなりの
	せんりょくUPになる
	"""
	keyWait
		any = false
	clearMsg
	"""
	ただし むせいげんにいくらでも
	ユニゾンできるわけじゃない
	いくつか せいげんがあるんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	まず ひとつめ
	レギュラーチップをいけにえに
	することはできない
	"""
	keyWait
		any = false
	clearMsg
	"""
	ふたつめ
	そのバトル中に おなじソウルには
	いちどしかユニゾンできない
	"""
	keyWait
		any = false
	clearMsg
	"""
	みっつめ
	ソウルユニゾンしていられるのは
	3ターンのあいだ だけ
	"""
	keyWait
		any = false
	clearMsg
	"""
	これらの せいげんをふまえた上で
	よくかんがえて つかいわけろ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Dad
	msgOpen
	"今は キャンセルしなくていいぞ"
	keyWait
		any = false
	end
}
@archive 749A28
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
	前方のてき1たいを
	攻撃できる
	キャノンほう
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
	前方のてき1たいを
	攻撃できる
	キャノンほう
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
	前方のてき1たいを
	攻撃できる
	キャノンほう
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
	ヒットしたあいてを
	1マスおくへおす
	くうきほう
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
	ほうしゃじょうに
	ふぶき攻撃!
	パネルをこおりに
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
	ほうしゃじょうに
	かえん攻撃!
	パネルをマグマに
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
	ララミュートをおく
	えんそうちゅう
	あいてはもうもくに
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
	2マス前方に
	8ヒットのたつまき
	を発生させる!
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
	たて3マスのはばを
	もつワイドショット
	を前方へはなつ!
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
	たて3マスのはばを
	もつワイドショット
	を前方へはなつ!
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
	たて3マスのはばを
	もつワイドショット
	を前方へはなつ!
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
	2マス前方の
	たて3マスに
	ひばしら攻撃!
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
	2マス前方の
	たて3マスに
	ひばしら攻撃!
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
	2マス前方の
	たて3マスに
	ひばしら攻撃!
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
	3れんしゃバルカン
	ヒットすると1マス
	おくにもかんつう!
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
	5れんしゃバルカン
	ヒットすると1マス
	おくにもかんつう!
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
	7れんしゃバルカン
	ヒットすると1マス
	おくにもかんつう!
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
	ヒットすると
	まわりの1マスに
	ゆうばく!
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
	ヒットすると
	おくの1マスに
	ゆうばくする!
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
	ヒットすると
	ななめおく2マスに
	ゆうばくする
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
	ヒットすると
	上下の2マスに
	ゆうばくする
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
	ヒットすると
	おくの1マスに
	ゆうばくする!
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
	ヒットすると
	ななめおく2マスに
	ゆうばくする
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
	ヒットすると
	上下の2マスに
	ゆうばくする
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
	よこ3マスの攻撃
	マグマの上だと
	パワーアップ!
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
	よこ3マスの攻撃
	こおりの上だと
	パワーアップ!
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
	2マス前にノイズの
	アラシ!バグがある
	とパワーアップする
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
	2マス前のてきに
	カーソル!てきの
	HPをおなじにする
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
	3マス前におちる
	ボムをなげつける
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
	3マス前に
	れんぞくばくふうの
	ボムをなげつける
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
	3マス前に
	れんぞくばくふうの
	ボムをなげつける
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
	ボタンをおしつづけ
	ると2マス前方の
	たて3マスに日の光
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
	ボタンをおしつづけ
	ると2マス前方の
	たて3マスに日の光
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
	ボタンをおしつづけ
	ると2マス前方の
	たて3マスに日の光
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
	あいてを目の前の
	マスにすいつけて
	電気ショック!
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
	あいてを目の前の
	マスにすいつけて
	電気ショック!
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
	あいてを目の前の
	マスにすいつけて
	電気ショック!
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
	1マスおきにはねる
	おんぷを2マス前に
	なげつける!
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
	1マスおきにはねる
	おんぷを2マス前に
	なげつける!
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
	1マスおきにはねる
	おんぷを2マス前に
	なげつける!
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
	あいてをバグらせる
	バグボムを3マス前
	になげつける
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
	ほうしゃじょうに
	ほうでん攻撃!
	パネルをヒビに
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
	ほうしゃじょうに
	ほうし攻撃!
	パネルをくさむらに
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
	3マス前に
	ホウガンをなげる!
	パネルはかい攻撃!
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
	3マス前になげつけ
	あなマスにおちると
	水がふきだす!
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
	ふはつだんを
	3マス前になげる!
	炎攻撃でバクハツ!
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
	あたるとアリジゴク
	を発生させる
	リングを前方へ!
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
	目の前のてきを
	きりつける!
	攻撃はんいは1マス
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
	目の前のてきを
	きりつける!
	はんいはたて3マス
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
	目の前のてきを
	きりつける!
	はんいはよこ2マス
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
	目の前のてきを
	きりつける!
	はんいはたて3マス
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
	目の前のてきを
	きりつける!
	はんいはよこ2マス
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
	目の前のてきを
	風でふきとばす!
	はんいはたて3マス
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
	カスタムゲージが
	マンタンにちかい
	ほど攻撃力アップ!
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
	へんげんじざいの
	テクニカルソード
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
	Aボタンをおして
	いる間に入ってくる
	てきをきる!
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
	ゆっくりとすすむ
	ついび電気攻撃
	あたるとマヒする!
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
	ゆっくりとすすむ
	ついび電気攻撃
	あたるとマヒする!
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
	ゆっくりとすすむ
	ついび電気攻撃
	あたるとマヒする!
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
	攻撃するしゅんかん
	のてきにカウンター
	どこからでもヒット
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
	攻撃するしゅんかん
	のてきにカウンター
	どこからでもヒット
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
	攻撃するしゅんかん
	のてきにカウンター
	どこからでもヒット
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
	かべにはんしゃする
	エアホッケーを
	ななめ右になげる!
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
	かべにはんしゃする
	エアホッケーを
	ななめ右になげる!
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
	かべにはんしゃする
	エアホッケーを
	ななめ右になげる!
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
	まわるサイトを
	ボタンでとめて
	ショット攻撃!
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
	まわるサイトを
	ボタンでとめて
	ショット攻撃!
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
	まわるサイトを
	ボタンでとめて
	ショット攻撃!
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
	自分の上下のれつに
	2本のキバを
	ハッシャする!
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
	自分の上下のれつに
	2本のキバを
	ハッシャする!
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
	自分の上下のれつに
	2本のキバを
	ハッシャする!
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
	てきエリアの上の
	れつにくものすを
	発生させる
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
	てきエリアのまん中
	れつにくものすを
	発生させる
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
	てきエリアの下の
	れつにくものすを
	発生させる
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
	バトルフィールドの
	はしにそってとぶ
	かんつうブーメラン
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
	バトルフィールドの
	はしにそってとぶ
	かんつうブーメラン
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
	バトルフィールドの
	はしにそってとぶ
	かんつうブーメラン
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
	3マス前方のれつの
	上のくうかんから
	2マスのたけやり!
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
	3マス前方のれつの
	上のくうかんから
	2マスのたけやり!
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
	3マス前方のれつの
	上のくうかんから
	2マスのたけやり!
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
	てきエリアの右はし
	たてれつにとつぜん
	たけやりが発生!
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
	目の前のマスに
	ダークホールを
	しゅつげんさせる!
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
	ウインドボックスを
	おき てきエリアに
	風をふかせる
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
	バキュームファンを
	おき 風でてきを
	すいよせる
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
	自分のエリアないに
	ボーイズボム!
	おすとてきエリアへ
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
	自分のエリアないに
	ボーイズボム!
	おすとてきエリアへ
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
	自分のエリアないに
	ボーイズボム!
	おすとてきエリアへ
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
	タイミングガードし
	攻撃をしょうげきは
	にしてはねかえす!
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
	タイミングガードし
	攻撃をしょうげきは
	にしてはねかえす!
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
	タイミングガードし
	攻撃をしょうげきは
	にしてはねかえす!
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
	パネルはかい攻撃!
	目の前の1マスを
	けしさってしまう
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
	パネルはかい攻撃!
	前のよこ2マスを
	けしさってしまう
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
	パネルはかい攻撃!
	前のたて3マスを
	けしさってしまう
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
	カーソルをとめて
	パネルをはかいする
	マグナムをハッシャ
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
	てきエリア左はしに
	パネルをぬりかえる
	ゼリー攻撃!
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
	自分のエリアの
	あなマスから
	こヘビがとんでいく
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
	てきエリアにじげん
	ばくだんをセットし
	エリア中にばくはつ
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
	てきエリアのどこか
	に見えないじらいを
	セットする!
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
	目の前のマスに
	ストーンキューブを
	発生させる
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
	ララパッパをおく
	えんそうちゅう
	自分がむてきに!
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
	ララチューバをおく
	えんそうちゅう
	あいてがこんらん!
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
	ララボーンをおく
	えんそうちゅう
	じしんであしどめ!
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
	おそろしいノロイの
	ワラニンギョウを
	3マス前方になげる
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
	目の前にハンマーを
	ふりおろすせきぞう
	をおく!
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
	目の前にハンマーを
	ふりおろすせきぞう
	をおく!
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
	目の前にハンマーを
	ふりおろすせきぞう
	をおく!
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
	HPを10
	かいふくする
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
	HPを30
	かいふくする
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
	HPを50
	かいふくする
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
	HPを80
	かいふくする
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
	HPを120
	かいふくする
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
	HPを150
	かいふくする
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
	HPを200
	かいふくする
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
	HPを300
	かいふくする
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
	キューブなどの
	おきもののHPを
	かいふくさせる
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
	前方のてきエリアの
	1マスを 自分の
	エリアにぬりかえる
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
	てきエリアの左はし
	たて1れつを自分の
	エリアにぬりかえる
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
	ぬすまれたパネルの
	かずだけ あいてに
	てんばつがくだる!
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
	ぬすまれたパネルの
	かずだけ あいてに
	てんばつがくだる!
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
	しばらくのあいだ
	カスタムゲージの
	スピードがおちる
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
	しばらくのあいだ
	カスタムゲージの
	スピードがあがる
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
	自分のエリアの
	パネルをノーマルに
	もどす!
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
	パネルのあるマスが
	すべてヒビに!
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
	あいているマスが
	すべてこわれる!
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
	パネルのあるマスが
	すべてどくぬまに!
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
	よこ3マスの攻撃
	くさむらの上だと
	パワーアップ!
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
	自エリアをぎせいに
	してつぎのチップの
	攻撃力を+10ずつ
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
	よこ3マスの攻撃
	アリジゴクの上だと
	パワーアップ!
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
	きょうりょくな光で
	あいてをもうもく
	じょうたいにする!
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
	マルモコが3たい
	たて1れつになって
	とっしんしていく!
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
	マルモコが3たい
	たて1れつになって
	とっしんしていく!
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
	マルモコが3たい
	たて1れつになって
	とっしんしていく!
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
	少しの間とうめいに
	なって ほとんどの
	攻撃にあたらない
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
	地中にもぐり
	攻撃のときだけ
	すがたをあらわす
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
	バリアをはり
	10HPぶんの
	ダメージをむこうか
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
	バリアをはり
	100HPぶんの
	ダメージをむこうか
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
	バリアをはり
	200HPぶんの
	ダメージをむこうか
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
	すさまじいキタカゼ
	がバリアやオーラを
	ふきとばしてしまう
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
	目の前のパネルを
	ダメージはんげんの
	ホーリーパネルに!
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
	てきにワナをはる
	炎の攻撃をだすと
	自分がダメージ!
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
	てきにワナをはる
	水の攻撃をだすと
	自分がダメージ!
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
	てきにワナをはる
	電気の攻撃をだすと
	自分がダメージ!
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
	てきにワナをはる
	木の攻撃をだすと
	自分がダメージ!
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
	てきにワナをはる
	よびだしたナビを
	ねがえらせる
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
	てきにワナをはる
	攻撃にあたると
	しゅりけん攻撃!
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
	てきにワナをはる
	ソード攻撃をうけ
	ながしてはんげき!
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
	てきにワナをはる
	てきのリカバリーが
	ぎゃくにダメージに
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
	カーソルのあいてに
	ほかのてきがうけた
	ダメージをコピー!
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
	攻撃チップのあとに
	えらぶと 攻撃力を
	+10できる
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
	ナビチップの
	あとにえらぶと
	攻撃力を+20!
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
	ロールアローを
	前方へはなつ!
	チップはかい攻撃!
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
	ロールアローを
	前方へはなつ!
	チップはかい攻撃!
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
	ロールアローを
	前方へはなつ!
	チップはかい攻撃!
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
	目の前のマスに
	ガッツパンチ!
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
	目の前のマスに
	ガッツストレート!
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
	目の前のマスに
	ガッツインパクト!
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
	前方へとんでいき
	画面はしにきえると
	大ばくはつをおこす
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
	前方へとんでいき
	画面はしにきえると
	大ばくはつをおこす
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
	前方へとんでいき
	画面はしにきえると
	大ばくはつをおこす
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
	てきをねらって
	とんでいくボムを
	なげつける!
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
	てきをねらって
	とんでいくボムを
	なげつける!
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
	てきをねらって
	とんでいくボムを
	なげつける!
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
	前方のちかいてきの
	いるマスにメテオを
	5発ふらせる!
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
	前方のちかいてきの
	いるマスにメテオを
	5発ふらせる!
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
	前方のちかいてきの
	いるマスにメテオを
	5発ふらせる!
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
	しょうがいぶつに
	らくらい!まわりの
	てきにもかんでん!
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
	しょうがいぶつに
	らくらい!まわりの
	てきにもかんでん!
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
	しょうがいぶつに
	らくらい!まわりの
	てきにもかんでん!
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
	ワイドとロングに
	すばやく2回
	きりつける!
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
	ワイドとロングに
	すばやく2回
	きりつける!
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
	ワイドとロングに
	すばやく2回
	きりつける!
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
	3れんしゃのボール
	攻撃力はそのときの
	HPの下2ケタ!
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
	4れんしゃのボール
	攻撃力はそのときの
	HPの下2ケタ!
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
	5れんしゃのボール
	攻撃力はそのときの
	HPの下2ケタ!
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
	前方のあいてエリア
	左はしのマスに
	はぐるまが発生!
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
	前方のあいてエリア
	左はしのマスに
	はぐるまが発生!
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
	前方のあいてエリア
	左はしのマスに
	はぐるまが発生!
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
	目の前のパネルを
	うきあがらせて
	前方にとばして攻撃
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
	前後のパネルを
	うきあがらせて
	前方にとばして攻撃
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
	上下左右のパネルを
	うきあがらせて
	前方にとばして攻撃
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
	てきのいる
	ヒビわれたマスから
	アクアタワー発生!
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
	てきのいる
	ヒビわれたマスから
	アクアタワー発生!
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
	てきのいる
	ヒビわれたマスから
	アクアタワー発生!
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
	てきのいる
	くさむらのマスに
	ウッディタワー!
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
	てきのいる
	くさむらのマスに
	ウッディタワー!
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
	てきのいる
	くさむらのマスに
	ウッディタワー!
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	オノレノヨクボウガ
	ウミダシタアクマノ
	ダークチップ・・・
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
	"タカラヨウヨビ1"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 198 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"タカラヨウヨビ2"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 199 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"タカラヨウヨビ3"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 200 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"タカラヨウヨビ4"
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
	攻撃力が200より
	ひくい攻撃を
	むこうかするオーラ
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
	あんこくチップ!
	へっているHP分が
	攻撃力になる
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
	目の前のマスに
	こわしてはいけない
	オジゾウサンをおく
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
	あんこくチップ!
	どくを発生させる
	アヌビスぞうをおく
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
	攻撃チップのあとに
	えらぶと 攻撃力を
	+30できる
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
	ナビに発生している
	バグをしゅうせいし
	とりのぞく
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
	自エリアをぎせいに
	してつぎのチップの
	攻撃力を+20ずつ
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
	自分のエリアの
	すべてのマスを
	ホーリーパネルに!
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
	カスタムゲージが
	いっしゅんで
	マンタンになる!
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
	あいてエリアに
	むすうのリュウセイ
	がふりそそぐ!
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
	自分に発生している
	バグをあいてにも
	うつしてしまう!
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
	チップをもつてきに
	枚数におうじた
	ダメージをあたえる
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
	あんこくチップ!
	どくぬまの上だと
	パワーアップ!
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
	あんこくチップ!
	てきエリアはしから
	くろいツバサ攻撃!
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
	てきみかたとわず
	攻撃するせきぞうを
	目の前のマスにおく
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
	自分のいるれつを
	すべてダークホール
	にしてしまう!
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
	へんげんじざいの
	テクニカルソード
	じょうきゅうへん
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
	でんせつの あかい
	レプリロイドの
	3だんぎりソード
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
	さらにこうはんいに
	たいようこうせんを
	しょうしゃする!
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
	きょういの
	12れんしゃ
	バルカンほう!
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
	てき1たいを攻撃
	かいふくのハートで
	いやしてくれる
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
	てき1たいを攻撃
	かいふくのハートで
	いやしてくれる
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
	てき1たいを攻撃
	かいふくのハートで
	いやしてくれる
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
	ガッツハンマー!
	あいてエリアに
	ヒビとガレキ攻撃!
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
	ガッツハンマー!
	あいてエリアに
	ヒビとガレキ攻撃!
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
	ガッツハンマー!
	あいてエリアに
	ヒビとガレキ攻撃!
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
	3マス四方に
	かいてんする
	たつまきを発生!
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
	3マス四方に
	かいてんする
	たつまきを発生!
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
	3マス四方に
	かいてんする
	たつまきを発生!
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
	サイトをボタンで
	とめて 5れんしゃ
	のスコープガン!
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
	サイトをボタンで
	とめて 5れんしゃ
	のスコープガン!
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
	サイトをボタンで
	とめて 5れんしゃ
	のスコープガン!
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
	前方のよこ1れつに
	かんつうする炎!
	ファイアアーム!
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
	前方のよこ1れつに
	かんつうする炎!
	ファイアアーム!
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
	前方のよこ1れつに
	かんつうする炎!
	ファイアアーム!
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
	3マス前方のたて
	1れつにらくらい!
	パネルごとこわす!
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
	3マス前方のたて
	1れつにらくらい!
	パネルごとこわす!
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
	3マス前方のたて
	1れつにらくらい!
	パネルごとこわす!
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
	てきの前にいって
	きりつけてまわる
	いけないばあいも
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
	てきの前にいって
	きりつけてまわる
	いけないばあいも
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
	てきの前にいって
	きりつけてまわる
	いけないばあいも
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
	3マス前方にボム!
	攻撃力は出目しだい
	9マス分にばくはつ
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
	3マス前方にボム!
	攻撃力は出目しだい
	9マス分にばくはつ
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
	3マス前方にボム!
	攻撃力は出目しだい
	9マス分にばくはつ
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
	目の前の1マスに
	こうてつのコブシを
	ふりおろす!
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
	目の前の1マスに
	こうてつのコブシを
	ふりおろす!
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
	目の前の1マスに
	こうてつのコブシを
	ふりおろす!
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
	フィールド上の
	ぶったいをうかせて
	てきにぶつける!
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
	フィールド上の
	ぶったいをうかせて
	てきにぶつける!
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
	フィールド上の
	ぶったいをうかせて
	てきにぶつける!
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
	スイドウカンをおき
	その2マス前方まで
	ほうすい攻撃!
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
	スイドウカンをおき
	その2マス前方まで
	ほうすい攻撃!
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
	スイドウカンをおき
	その2マス前方まで
	ほうすい攻撃!
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
	あいてエリアないに
	ランダムにつきだす
	ウッディタワー!
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
	あいてエリアないに
	ランダムにつきだす
	ウッディタワー!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 74C168
@size 113

script 0 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	あいてエリアないに
	ランダムにつきだす
	ウッディタワー!
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
	3マス前方にななめ
	四方からベーゴマと
	グリグリタップ攻撃
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
	3マス前方にななめ
	四方からベーゴマと
	グリグリタップ攻撃
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
	3マス前方にななめ
	四方からベーゴマと
	グリグリタップ攻撃
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
	ほうしゃじょうに
	ちょうおんぱ攻撃
	クラッシュノイズ!
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
	ほうしゃじょうに
	ちょうおんぱ攻撃
	クラッシュノイズ!
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
	ほうしゃじょうに
	ちょうおんぱ攻撃
	クラッシュノイズ!
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
	2マス前方めがけて
	3方からバーナーで
	しゅうちゅう攻撃
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
	2マス前方めがけて
	3方からバーナーで
	しゅうちゅう攻撃
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
	2マス前方めがけて
	3方からバーナーで
	しゅうちゅう攻撃
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
	フィールド上のもの
	をこおりつかせ
	おしてすべらせる!
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
	フィールド上のもの
	をこおりつかせ
	おしてすべらせる!
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
	フィールド上のもの
	をこおりつかせ
	おしてすべらせる!
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
	前方すべてに
	スパークウェーブ!
	あいてをもうもくに
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
	前方すべてに
	スパークウェーブ!
	あいてをもうもくに
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
	前方すべてに
	スパークウェーブ!
	あいてをもうもくに
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
	よこ1れつかんつう
	するパワーダウン
	レーザー!
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
	よこ1れつかんつう
	するパワーダウン
	レーザー!
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
	よこ1れつかんつう
	するパワーダウン
	レーザー!
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
	前方のてきに
	つっこみ 前後から
	ケンドー3だん攻撃
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
	前方のてきに
	つっこみ 前後から
	ケンドー3だん攻撃
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
	前方のてきに
	つっこみ 前後から
	ケンドー3だん攻撃
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
	2マスはん前方に
	テープのしんが!
	まきこみテープ攻撃
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
	2マスはん前方に
	テープのしんが!
	まきこみテープ攻撃
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
	2マスはん前方に
	テープのしんが!
	まきこみテープ攻撃
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
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 26 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 27 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 28 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 29 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 30 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 31 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 32 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 33 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 34 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 35 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 36 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 37 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 38 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 39 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 40 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 41 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 42 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 43 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 44 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
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
	バトルフィールドの
	右はんぶんにはなつ
	フォルテバスター!
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
	きりつけるときに
	Aボタンでさいこう
	3だんのソード攻撃
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
	あんこくチップ!
	てきのナビをひどい
	バグじょうたいに!
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
	3マス前方めがけて
	レッドサンのメテオ
	攻撃がふりそそぐ!
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
	あかいあいだは
	あいてがチップを
	つかえなくなる!
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
	いちどだけまがる
	リングを4発
	なげつける!
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
	ホーリーパネルを
	すいこんで前方へ
	ホーリーショット!
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
	やぶれてもふっかつ
	するやみのバリア!
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
	3マス前方めがけて
	ブルームーンが力を
	うばう光をはなつ!
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
	あんこくチップ!
	ターンがすすむほど
	つよくなる!
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
	ereaderDesc
		data = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 56 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	ereaderDesc
		data = 1
	keyWait
		any = true
	end
	msgCloseQuick
}
script 57 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 58 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 59 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 60 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 61 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 62 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 63 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
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
	やみにおちた
	きょうしゃたちの
	がったいわざ!
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
	まわり1マスに
	ばくえんがひろがる
	こうはんい攻撃!
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
	まわり1マスに
	あわがひろがる
	こうはんい攻撃!
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
	ギガパワーではなつ
	きょうりょくな
	キャノン!
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
	ギガパワーではなつ
	きょうりょくな
	キャノン!
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
	ギガパワーではなつ
	きょうりょくな
	キャノン!
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
	3れんしゃの
	ワイドショット!
	てきをかんつうする
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
	3れんしゃの
	ワイドショット!
	てきをかんつうする
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
	3れんしゃの
	ワイドショット!
	てきをかんつうする
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
	十字にひろがる
	じごくのごうか!
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
	十字にひろがる
	じごくのごうか!
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
	十字にひろがる
	じごくのごうか!
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
	3本のブーメランが
	れんぞくであいてに
	おそいかかる!
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
	3本のブーメランが
	れんぞくであいてに
	おそいかかる!
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
	3本のブーメランが
	れんぞくであいてに
	おそいかかる!
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
	自分の上下のれつに
	むすうのキバが
	つらなりすすむ!
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
	自分の上下のれつに
	むすうのキバが
	つらなりすすむ!
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
	自分の上下のれつに
	むすうのキバが
	つらなりすすむ!
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
	はんしゃしつづける
	きょうふのホッケー
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
	はんしゃしつづける
	きょうふのホッケー
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
	はんしゃしつづける
	きょうふのホッケー
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
	つよいじりょくで
	前方のてきすべてを
	すいよせて攻撃!
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
	つよいじりょくで
	前方のてきすべてを
	すいよせて攻撃!
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
	つよいじりょくで
	前方のてきすべてを
	すいよせて攻撃!
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
	よこ2たて3の
	きょだいソードで
	てきをぶったぎる!
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
	目の前に たいよう
	ジェネレーター!
	日の光でやきつくす
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
	あいてエリアに
	ギガカウントボムを
	おく!
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
	てきエリアにどくを
	発生させる
	ファラオぞうをおく
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
	ウラのあんさつしゃ
	をやとい てきを
	はいじょしてもらう
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
	まわり1マスに
	ばくふうがひろがる
	さくれつだん!
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
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 95 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ミテイ"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 96 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ロックソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 97 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ロールソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 98 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ガッツソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 99 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ウインドソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 100 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"サーチソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 101 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ファイアソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 102 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"サンダーソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 103 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ブルースソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 104 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ナンバーソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 105 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"メタルソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 106 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ジャンクソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 107 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"アクアソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 108 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ウッドソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 109 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"デューオソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 110 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"フォルテソウル"
	keyWait
		any = true
	end
	msgCloseQuick
}
script 111 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"ダークソウル"
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
@archive 74CE9C
@size 1

script 0 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"デューオ"
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 74CEAC
@size 1

script 0 mmbn4 {
	msgOpenQuick
	textSpeed
		delay = 0
	"グランプリパワー"
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 753150
@size 51

script 0 mmbn4s {
	end
}
script 1 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	ついかの チップデータ おくるから
	1ターンまって!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	checkFlag
		flag = 4457
		jumpIfTrue = 49
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ここはにげた方がいいかな?\n"
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 3 mmbn4 {
	checkFlag
		flag = 4457
		jumpIfTrue = 50
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"""
	よし!
	なんとかにげきれたよ!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"""
	ダメだ!
	にげきれない・・・!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 8
		padZeros = false
		padLeft = true
	" [z]"
	end
}
script 6 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	end
}
script 7 mmbn4s {
	"      HP+"
	end
}
script 8 mmbn4s {
	"     HP+"
	end
}
script 9 mmbn4s {
	"    HP+"
	end
}
script 10 mmbn4s {
	"    HPマックス"
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つうしんエラーだ・・・
	せんとうをちゅうしするね
	"""
	keyWait
		any = false
	end
	"4"
}
script 12 mmbn4s {
	"VS"
	end
}
script 45 mmbn4s {
	"DOUBLE DELETE!"
	end
}
script 46 mmbn4s {
	"TRIPLE DELETE!"
	end
}
script 47 mmbn4s {
	" バグのかけら "
	end
}
script 48 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つうしんエラーだ・・・
	せんとうをちゅうしするね
	エラーコード
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = false
	keyWait
		any = false
	end
	"4"
}
script 49 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	こんなときに 熱斗くんがいれば!
	どうしよう・・・
	
	"""
	positionOptionHorizontal
		width = 11
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"にげる  "
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"たたかう!"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 50 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"・"
	wait
		frames = 18
	"""
	よし!
	なんとかにげきれた!
	"""
	keyWait
		any = false
	end
}
@archive 753DAC
@size 17

script 0 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 1
	controlLock
	textSpeed
		delay = 1
	mugshotShow
		mugshot = Lan
	msgOpen
	"プラグイン!!"
	wait
		frames = 10
	"\nロックマン.EXE、"
	wait
		frames = 10
	"\nトランスミッション!"
	wait
		frames = 30
	controlUnlock
	end
}
script 1 mmbn4 {
	flagSet
		flag = 4478
	msgOpen
	"""
	PETの中に
	ロックマンがいない・・・
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	checkChapter
		lower = 0
		upper = 0
		jumpIfInRange = continue
		jumpIfOutOfRange = 0
	checkFlag
		flag = 798
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ママが こまってるみたいだよ"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkFlag
		flag = 799
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"またこんどに しようよ!"
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	checkFlag
		flag = 1029
		jumpIfTrue = continue
		jumpIfFalse = 0
	checkFlag
		flag = 1030
		jumpIfTrue = 15
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん! プラグインはあと!
	ママが タイヘンだよ!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	checkChapter
		lower = 12
		upper = 12
		jumpIfInRange = continue
		jumpIfOutOfRange = 0
	checkFlag
		flag = 45
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	メールを よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	checkFlag
		flag = 46
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"パパからメールきてるよ!"
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	checkFlag
		flag = 1099
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょっとまって! ママが
	熱斗くんのパソコンが どうとか
	いってたよね なんだろう?
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	checkFlag
		flag = 2821
		jumpIfTrue = 0
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 0
		jumpIfGreater = 0
		jumpIfLess = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、まずさきに
	「
	"""
	printItem
		buffer = 0
		item = 118
	"""
	」 を
	さがしにいかなきゃ!
	"""
	keyWait
		any = false
	end
}
@archive 753F6C
@size 12

script 0 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	プラグアウトするのか?
	
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 1
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	end
}
script 1 mmbn4 {
	mugshotShow
		mugshot = Lan
	"OK! りょうかい!"
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ダメだ! プラグアウトできない"
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、はやくこのコマを
	とめなくちゃ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = Roll
	msgOpen
	"""
	ロックどこ行くの!
	にげちゃうつもり!?
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん! プラグアウトしてる
	ばあいじゃないよ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = NormalNaviBrown
	msgOpen
	"""
	コレ! シュギョウチュウに
	ドコにイくのじゃ!!
	
	"""
	flagSet
		flag = 4478
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Tamako
	msgOpen
	"プラグアウトは まだはやいよ!\n"
	flagSet
		flag = 4478
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	今 プラグアウトしたら、
	火が もえひろがるかもしれないぜ
	いいのか?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
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
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 1
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	end
}
@archive 7540E4
@size 34

script 0 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 14
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	どこに行く?
	(十字ボタン:カーソルいどう)
	(Rボタン:MAPのせつめい)
	"""
	waitHold
}
script 1 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 15
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"よし、行こう!"
	waitHold
}
script 2 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 16
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"まえのばしょに、もどるよ!"
	wait
		frames = 60
	end
}
script 3 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 17
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ボクたちのすむ町、秋原町だよ
	どんな町か もうしってるよね?
	"""
	waitHold
}
script 4 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ここは電気街
	電気屋さんが たくさんある
	ばしょだよ
	"""
	waitHold
}
script 5 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 19
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	デンサンドームだよ
	中には40000人まで
	はいれるんだって!
	"""
	waitHold
}
script 6 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	シェロ・カスティロだよ!
	てんくうの おしろってイミが
	あるんだって
	"""
	waitHold
}
script 7 mmbn4 {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	デンサンくうこうだよ
	ここから 世界へひとっとび!
	"""
	waitHold
}
script 8 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"ボクたちのクニ、ニホンだよ!"
	waitHold
}
script 9 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	アメロッパだよ!
	れきしある まちなみが
	とってもキレイだよ
	"""
	waitHold
}
script 10 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	アジーナだよ!
	大むかしの いせきを
	今も まもりつづけるクニだよ
	"""
	waitHold
}
script 11 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	アッフリクだよ!
	大しぜんに かこまれた
	みどりゆたかなクニだよ!
	"""
	waitHold
}
script 12 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	シャーロだよ!
	1年を とおしてゆきがふる
	さむーいクニだよ!
	"""
	waitHold
}
script 13 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ANSAだよ!
	世界イチの うちゅう
	けんきゅうしせつだよ!
	"""
	waitHold
}
script 14 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ドコニ イキマスカ?
	(十字ボタン:カーソルいどう)
	(Rボタン:MAPのせつめい)
	"""
	waitHold
}
script 15 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"ソレデハ、イキマショウ"
	waitHold
}
script 16 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"マエノ バショニ モドリマス"
	wait
		frames = 60
	end
}
script 17 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	デンサンシティ ノ
	ベッドタウン、
	アキハラチョウ デス
	"""
	waitHold
}
script 18 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	デンキヤサンノ アツマルマチ
	デンキガイ デス
	"""
	waitHold
}
script 19 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	40000ニン
	シュウヨウ カノウ ナ
	デンサンドーム デス
	"""
	waitHold
}
script 20 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	デンサンシティ ハツ ノ
	テーマパーク、
	シェロ・カスティロ デス
	"""
	waitHold
}
script 21 mmbn4 {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ニホン ノ ソラノ
	ゲンカングチ、
	デンサンクウコウ デス
	"""
	waitHold
}
script 22 mmbn4s {
	"      秋原町"
	end
}
script 23 mmbn4s {
	"電気街"
	end
}
script 24 mmbn4s {
	"デンサンドーム"
	end
}
script 25 mmbn4s {
	"シェロ・カスティロ"
	end
}
script 26 mmbn4s {
	"       空港"
	end
}
script 27 mmbn4s {
	"ニホン"
	end
}
script 28 mmbn4s {
	"アメロッパ"
	end
}
script 29 mmbn4s {
	"    アジーナ"
	end
}
script 30 mmbn4s {
	"アッフリク"
	end
}
script 31 mmbn4s {
	"     シャーロ"
	end
}
script 32 mmbn4s {
	"     ANSA"
	end
}
script 33 mmbn4s {
	"テスト"
	end
}
@archive 7543EC
@size 192

script 0 mmbn4s {
	"PET"
	end
}
script 1 mmbn4s {
	"イヤホン"
	end
}
script 2 mmbn4s {
	"リカバーバッチ"
	end
}
script 3 mmbn4s {
	"電脳バット"
	end
}
script 4 mmbn4s {
	"なぞのデータ"
	end
}
script 5 mmbn4s {
	"きどうデータA"
	end
}
script 6 mmbn4s {
	"きどうデータB"
	end
}
script 7 mmbn4s {
	"ミニトロフィー"
	end
}
script 8 mmbn4s {
	"ファイアID"
	end
}
script 9 mmbn4s {
	"かみきれ"
	end
}
script 10 mmbn4s {
	"メモ"
	end
}
script 11 mmbn4s {
	"ヒントデータ"
	end
}
script 12 mmbn4s {
	"1データ"
	end
}
script 13 mmbn4s {
	"2データ"
	end
}
script 14 mmbn4s {
	"3データ"
	end
}
script 15 mmbn4s {
	"4データ"
	end
}
script 16 mmbn4s {
	"5データ"
	end
}
script 17 mmbn4s {
	"でんどうゴマ"
	end
}
script 18 mmbn4s {
	"ひでんのデータ1"
	end
}
script 19 mmbn4s {
	"ひでんのデータ2"
	end
}
script 20 mmbn4s {
	"ひでんのデータ3"
	end
}
script 21 mmbn4s {
	"ひでんのデータ4"
	end
}
script 22 mmbn4s {
	"けんきゅうデータ"
	end
}
script 23 mmbn4s {
	"ナナフシ オス"
	end
}
script 24 mmbn4s {
	"ナナフシ メス"
	end
}
script 25 mmbn4s {
	"かいいんてがた"
	end
}
script 26 mmbn4s {
	"フリーパス"
	end
}
script 27 mmbn4s {
	"アイス"
	end
}
script 28 mmbn4s {
	"電脳ボンベ"
	end
}
script 29 mmbn4s {
	"しゅう子のカギ"
	end
}
script 30 mmbn4s {
	"太陽センサー"
	end
}
script 31 mmbn4s {
	"ミドルトロフィー"
	end
}
script 32 mmbn4s {
	"ビッグトロフィー"
	end
}
script 33 mmbn4s {
	"ネットパスポート"
	end
}
script 34 mmbn4s {
	"カギデータA"
	end
}
script 35 mmbn4s {
	"カギデータB"
	end
}
script 36 mmbn4s {
	"カギデータC"
	end
}
script 37 mmbn4s {
	"カギデータD"
	end
}
script 38 mmbn4s {
	"かがみ"
	end
}
script 39 mmbn4s {
	"くし"
	end
}
script 40 mmbn4s {
	"たいぼく"
	end
}
script 41 mmbn4s {
	"どうぞう"
	end
}
script 42 mmbn4s {
	"こんしんの一撃"
	end
}
script 43 mmbn4s {
	"キッスのあらし"
	end
}
script 44 mmbn4s {
	"おせっきょう"
	end
}
script 45 mmbn4s {
	"ウィザーモンキー"
	end
}
script 46 mmbn4s {
	"ウィザーキャット"
	end
}
script 47 mmbn4s {
	"ウィザードラゴン"
	end
}
script 48 mmbn4s {
	"まほうふうじ"
	end
}
script 49 mmbn4s {
	"はげしいダンス"
	end
}
script 50 mmbn4s {
	"さむいダジャレ"
	end
}
script 51 mmbn4s {
	"はなのよさ"
	end
}
script 52 mmbn4s {
	"ひっかき"
	end
}
script 53 mmbn4s {
	"目のよさ"
	end
}
script 54 mmbn4s {
	"つっこみ"
	end
}
script 55 mmbn4s {
	"せんそう"
	end
}
script 56 mmbn4s {
	"かんじょう"
	end
}
script 57 mmbn4s {
	"おわらい"
	end
}
script 58 mmbn4s {
	"プライド"
	end
}
script 59 mmbn4s {
	"ことり"
	end
}
script 60 mmbn4s {
	"ダンス"
	end
}
script 61 mmbn4s {
	"タンス"
	end
}
script 62 mmbn4s {
	"ゾンビ"
	end
}
script 63 mmbn4s {
	"おもちゃのぶひん"
	end
}
script 64 mmbn4s {
	"ダンサー"
	end
}
script 65 mmbn4s {
	"せいじか"
	end
}
script 66 mmbn4s {
	"のうさぎょうロボ"
	end
}
script 67 mmbn4s {
	"ガン・デル・ソル"
	end
}
script 68 mmbn4s {
	"しんくのマフラー"
	end
}
script 69 mmbn4s {
	"しんくのパンツ"
	end
}
script 70 mmbn4s {
	"ワルシャーP37"
	end
}
script 71 mmbn4s {
	"おてんこさま"
	end
}
script 72 mmbn4s {
	"太陽の光"
	end
}
script 73 mmbn4s {
	"月の光"
	end
}
script 74 mmbn4s {
	"おこんてさま"
	end
}
script 75 mmbn4s {
	"てんまど"
	end
}
script 76 mmbn4s {
	"たいよーー!!"
	end
}
script 77 mmbn4s {
	"おかーさーん!"
	end
}
script 78 mmbn4s {
	"おじさんのアタマ"
	end
}
script 79 mmbn4s {
	"Cスライダー"
	end
}
script 80 mmbn4s {
	"タウンキーデータ"
	end
}
script 81 mmbn4s {
	"パパのてがみ"
	end
}
script 82 mmbn4s {
	"サイバーおきょう"
	end
}
script 83 mmbn4s {
	"電脳すいしょう"
	end
}
script 84 mmbn4s {
	"こうくうけん"
	end
}
script 85 mmbn4s {
	"ルームキー"
	end
}
script 86 mmbn4s {
	"ゆうきのあかし"
	end
}
script 87 mmbn4s {
	"つよさのあかし"
	end
}
script 88 mmbn4s {
	"えいちのあかし"
	end
}
script 89 mmbn4s {
	"やさしさのあかし"
	end
}
script 90 mmbn4s {
	"ヒグレヤのチラシ"
	end
}
script 91 mmbn4s {
	"ヒグレヤ電脳キー"
	end
}
script 92 mmbn4s {
	"そうげんのフエ"
	end
}
script 93 mmbn4s {
	"ウイルスころし"
	end
}
script 94 mmbn4s {
	"電脳スルメ"
	end
}
script 95 mmbn4s {
	"かいじょビデオ1"
	end
}
script 96 mmbn4s {
	"かいじょビデオ2"
	end
}
script 97 mmbn4s {
	"かいじょビデオ3"
	end
}
script 98 mmbn4s {
	"ボムシューズ"
	end
}
script 99 mmbn4s {
	"ゴミすてばのカギ"
	end
}
script 100 mmbn4s {
	"はっしんき"
	end
}
script 101 mmbn4s {
	"めんじょう1"
	end
}
script 102 mmbn4s {
	"めんじょう2"
	end
}
script 103 mmbn4s {
	"めんじょう3"
	end
}
script 104 mmbn4s {
	"かいもんデータ"
	end
}
script 105 mmbn4s {
	"ウォーターガン"
	end
}
script 106 mmbn4s {
	"しょうかバスター"
	end
}
script 107 mmbn4s {
	"ショベル"
	end
}
script 108 mmbn4s {
	"ボードパーツ"
	end
}
script 109 mmbn4s {
	"ジェットパーツ"
	end
}
script 110 mmbn4s {
	"ウイングパーツ"
	end
}
script 111 mmbn4s {
	"あかのカギ"
	end
}
script 112 mmbn4s {
	"あおのカギ"
	end
}
script 113 mmbn4s {
	"みどりのカギ"
	end
}
script 114 mmbn4s {
	"きいろのカギ"
	end
}
script 115 mmbn4s {
	"しろのカギ"
	end
}
script 116 mmbn4s {
	"くろのカギ"
	end
}
script 117 mmbn4s {
	"コピーキー"
	end
}
script 118 mmbn4s {
	"ふっかつのしずく"
	end
}
script 119 mmbn4s {
	"ライオンのカギ"
	end
}
script 120 mmbn4s {
	"のろいにんぎょう"
	end
}
script 121 mmbn4s {
	"ネビュラコード"
	end
}
script 122 mmbn4s {
	"りょうりにんキー"
	end
}
script 123 mmbn4s {
	"しょくざい"
	end
}
script 124 mmbn4s {
	"やさしさデータ"
	end
}
script 125 mmbn4s {
	"ジョーモンコード"
	end
}
script 126 mmbn4s {
	"電脳シナイ"
	end
}
script 127 mmbn4s {
	"ミズガミサマ"
	end
}
script 128 mmbn4s {
	"スピンホワイト"
	end
}
script 129 mmbn4s {
	"スピンピンク"
	end
}
script 130 mmbn4s {
	"スピンイエロー"
	end
}
script 131 mmbn4s {
	"スピンレッド"
	end
}
script 132 mmbn4s {
	"スピンブルー"
	end
}
script 133 mmbn4s {
	"スピングリーン"
	end
}
script 144 mmbn4s {
	"メイルのPコード"
	end
}
script 145 mmbn4s {
	"デカオのPコード"
	end
}
script 146 mmbn4s {
	"やいとのPコード"
	end
}
script 147 mmbn4s {
	"ホテルのPコード"
	end
}
script 148 mmbn4s {
	"アジーナコード"
	end
}
script 149 mmbn4s {
	"アッフリクコード"
	end
}
script 150 mmbn4s {
	"シャーロコード"
	end
}
script 151 mmbn4s {
	"シェロPコード"
	end
}
script 152 mmbn4s {
	"スペースPコード"
	end
}
script 153 mmbn4s {
	"メイルのバナー"
	end
}
script 154 mmbn4s {
	"デカオのバナー"
	end
}
script 155 mmbn4s {
	"やいとのバナー"
	end
}
script 156 mmbn4s {
	"ジョーモンバナー"
	end
}
script 157 mmbn4s {
	"シェロバナー"
	end
}
script 158 mmbn4s {
	"ホテルのバナー"
	end
}
script 159 mmbn4s {
	"スペースバナー"
	end
}
script 160 mmbn4s {
	"HPメモリ"
	end
}
script 161 mmbn4s {
	"かくちょうメモリ"
	end
}
script 162 mmbn4s {
	"レギュラーUP1"
	end
}
script 163 mmbn4s {
	"レギュラーUP2"
	end
}
script 164 mmbn4s {
	"レギュラーUP3"
	end
}
script 165 mmbn4s {
	"サブメモリ"
	end
}
script 176 mmbn4s {
	"ミニエネルギー"
	end
}
script 177 mmbn4s {
	"フルエネルギー"
	end
}
script 178 mmbn4s {
	"シノビダッシュ"
	end
}
script 179 mmbn4s {
	"アントラップ"
	end
}
script 180 mmbn4s {
	"エネミーサーチ"
	end
}
script 181 mmbn4s {
	"オープンロック"
	end
}
@archive 754A30
@size 256

script 0 mmbn4 {
	msgOpen
	itemGive
		item = 2
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 2
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 1 mmbn4 {
	msgOpen
	itemGive
		item = 28
		amount = 1
	callScenarioEffect
		effect = 2
	"「"
	printItem
		buffer = 0
		item = 28
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	msgOpen
	itemGive
		item = 1
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 1
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 4 mmbn4 {
	msgOpen
	flagSet
		flag = 840
	"エントリーしゅうりょう!"
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	msgOpen
	flagSet
		flag = 843
	"よせん1かいし!"
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	msgOpen
	flagSet
		flag = 844
	"よせん1しゅうりょう!"
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	msgOpen
	flagSet
		flag = 852
	"秋原エリアのナビにはなしかけた!"
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	msgOpen
	flagSet
		flag = 853
	"タウンエリアのナビにはなしかけた!"
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	msgOpen
	itemGive
		item = 83
		amount = 1
	itemGive
		item = 82
		amount = 1
	callScenarioEffect
		effect = 3
	"「"
	printItem
		buffer = 0
		item = 82
	"""
	」と
	「
	"""
	printItem
		buffer = 0
		item = 83
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	msgOpen
	flagSet
		flag = 2242
	itemGive
		item = 93
		amount = 1
	itemGive
		item = 94
		amount = 1
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	msgOpen
	flagSet
		flag = 797
	flagSet
		flag = 799
	itemGive
		item = 0
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 0
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	msgOpen
	itemGive
		item = 1
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 1
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	msgOpen
	itemGive
		item = 2
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 2
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	msgOpen
	itemGive
		item = 3
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 3
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	msgOpen
	itemGive
		item = 4
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 4
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	msgOpen
	itemGive
		item = 5
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 5
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	msgOpen
	itemGive
		item = 6
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 6
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	msgOpen
	itemGive
		item = 7
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 7
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	msgOpen
	itemGive
		item = 8
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 8
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	msgOpen
	itemGive
		item = 9
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 9
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	msgOpen
	itemGive
		item = 10
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 10
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	msgOpen
	itemGive
		item = 11
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 11
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	msgOpen
	itemGive
		item = 12
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 12
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	msgOpen
	itemGive
		item = 13
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 13
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	msgOpen
	itemGive
		item = 14
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 14
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	msgOpen
	itemGive
		item = 15
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 15
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 36 mmbn4 {
	msgOpen
	itemGive
		item = 16
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 16
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	msgOpen
	itemGive
		item = 17
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 17
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 38 mmbn4 {
	msgOpen
	itemGive
		item = 18
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 18
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 39 mmbn4 {
	msgOpen
	itemGive
		item = 19
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 19
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	msgOpen
	itemGive
		item = 20
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 20
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	msgOpen
	itemGive
		item = 21
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 21
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	msgOpen
	itemGive
		item = 22
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 22
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 43 mmbn4 {
	msgOpen
	itemGive
		item = 23
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 23
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 44 mmbn4 {
	msgOpen
	itemGive
		item = 24
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 24
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	msgOpen
	itemGive
		item = 25
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 25
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 46 mmbn4 {
	msgOpen
	itemGive
		item = 26
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 26
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 47 mmbn4 {
	msgOpen
	itemGive
		item = 27
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 27
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 48 mmbn4 {
	msgOpen
	itemGive
		item = 28
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 28
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 49 mmbn4 {
	msgOpen
	itemGive
		item = 29
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 29
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	msgOpen
	itemGive
		item = 30
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 30
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	msgOpen
	itemGive
		item = 31
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 31
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	msgOpen
	itemGive
		item = 32
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 32
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	msgOpen
	itemGive
		item = 33
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 33
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	msgOpen
	itemGive
		item = 34
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 34
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 55 mmbn4 {
	msgOpen
	itemGive
		item = 35
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 35
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 56 mmbn4 {
	msgOpen
	itemGive
		item = 36
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 36
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 57 mmbn4 {
	msgOpen
	itemGive
		item = 37
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 37
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 58 mmbn4 {
	msgOpen
	itemGive
		item = 79
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 79
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	msgOpen
	itemGive
		item = 80
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 80
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	msgOpen
	itemGive
		item = 81
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 81
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 61 mmbn4 {
	msgOpen
	itemGive
		item = 82
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 82
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	msgOpen
	itemGive
		item = 83
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 83
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	msgOpen
	itemGive
		item = 84
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 84
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	msgOpen
	itemGive
		item = 85
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 85
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	msgOpen
	itemGive
		item = 86
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 86
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	msgOpen
	itemGive
		item = 87
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 87
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	msgOpen
	itemGive
		item = 88
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 88
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	msgOpen
	itemGive
		item = 89
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 89
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 69 mmbn4 {
	msgOpen
	itemGive
		item = 90
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 90
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	msgOpen
	itemGive
		item = 91
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 91
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 71 mmbn4 {
	msgOpen
	itemGive
		item = 92
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 92
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 72 mmbn4 {
	msgOpen
	itemGive
		item = 93
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 93
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	msgOpen
	itemGive
		item = 94
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 94
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	msgOpen
	itemGive
		item = 95
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 95
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	msgOpen
	itemGive
		item = 96
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 96
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 76 mmbn4 {
	msgOpen
	itemGive
		item = 97
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 97
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 77 mmbn4 {
	msgOpen
	itemGive
		item = 98
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 98
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 78 mmbn4 {
	msgOpen
	itemGive
		item = 99
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 99
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 79 mmbn4 {
	msgOpen
	itemGive
		item = 100
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 100
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	msgOpen
	itemGive
		item = 101
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 101
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	msgOpen
	itemGive
		item = 102
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 102
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	msgOpen
	itemGive
		item = 103
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 103
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	msgOpen
	itemGive
		item = 104
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 104
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	msgOpen
	itemGive
		item = 105
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 105
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	msgOpen
	itemGive
		item = 106
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 106
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	msgOpen
	itemGive
		item = 107
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 107
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	msgOpen
	itemGive
		item = 108
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 108
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 88 mmbn4 {
	msgOpen
	itemGive
		item = 109
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 109
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 89 mmbn4 {
	msgOpen
	itemGive
		item = 110
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 110
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	msgOpen
	itemGive
		item = 111
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 111
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	msgOpen
	itemGive
		item = 112
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 112
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	msgOpen
	itemGive
		item = 113
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 113
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 93 mmbn4 {
	msgOpen
	itemGive
		item = 114
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 114
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 94 mmbn4 {
	msgOpen
	itemGive
		item = 115
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 115
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 95 mmbn4 {
	msgOpen
	itemGive
		item = 116
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 116
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 96 mmbn4 {
	msgOpen
	itemGive
		item = 117
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 117
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 97 mmbn4 {
	msgOpen
	itemGive
		item = 118
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 118
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 98 mmbn4 {
	msgOpen
	itemGive
		item = 119
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 119
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 99 mmbn4 {
	msgOpen
	itemGive
		item = 120
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 120
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	msgOpen
	itemGive
		item = 121
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 121
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	msgOpen
	itemGive
		item = 122
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 122
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	msgOpen
	itemGive
		item = 123
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 123
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	msgOpen
	itemGive
		item = 124
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 124
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	msgOpen
	itemGive
		item = 125
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 125
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	msgOpen
	itemGive
		item = 126
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 126
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	msgOpen
	itemGive
		item = 127
		amount = 1
	"「"
	printItem
		buffer = 0
		item = 127
	"」をゲッツ"
	keyWait
		any = false
	end
}
script 200 mmbn4 {
	msgOpen
	flagAddBBSMessage
		flag = 4608
	flagAddBBSMessage
		flag = 4609
	flagAddBBSMessage
		flag = 4610
	flagAddBBSMessage
		flag = 4611
	flagAddBBSMessage
		flag = 4612
	flagAddBBSMessage
		flag = 4613
	flagAddBBSMessage
		flag = 4614
	flagAddBBSMessage
		flag = 4615
	flagAddBBSMessage
		flag = 4616
	flagAddBBSMessage
		flag = 4617
	flagAddBBSMessage
		flag = 4618
	flagAddBBSMessage
		flag = 4619
	flagAddBBSMessage
		flag = 4620
	flagAddBBSMessage
		flag = 4621
	flagAddBBSMessage
		flag = 4622
	flagAddBBSMessage
		flag = 4623
	flagAddBBSMessage
		flag = 4624
	flagAddBBSMessage
		flag = 4625
	flagAddBBSMessage
		flag = 4626
	flagAddBBSMessage
		flag = 4627
	flagAddBBSMessage
		flag = 4628
	flagAddBBSMessage
		flag = 4629
	flagAddBBSMessage
		flag = 4630
	flagAddBBSMessage
		flag = 4631
	flagAddBBSMessage
		flag = 4632
	flagAddBBSMessage
		flag = 4633
	flagAddBBSMessage
		flag = 4634
	flagAddBBSMessage
		flag = 4635
	flagAddBBSMessage
		flag = 4636
	flagAddBBSMessage
		flag = 4672
	flagAddBBSMessage
		flag = 4673
	flagAddBBSMessage
		flag = 4674
	flagAddBBSMessage
		flag = 4675
	flagAddBBSMessage
		flag = 4676
	flagAddBBSMessage
		flag = 4677
	flagAddBBSMessage
		flag = 4678
	flagAddBBSMessage
		flag = 4679
	flagAddBBSMessage
		flag = 4680
	flagAddBBSMessage
		flag = 4681
	flagAddBBSMessage
		flag = 4682
	flagAddBBSMessage
		flag = 4683
	flagAddBBSMessage
		flag = 4684
	flagAddBBSMessage
		flag = 4685
	flagAddBBSMessage
		flag = 4686
	flagAddBBSMessage
		flag = 4687
	flagAddBBSMessage
		flag = 4736
	flagAddBBSMessage
		flag = 4737
	flagAddBBSMessage
		flag = 4738
	flagAddBBSMessage
		flag = 4739
	flagAddBBSMessage
		flag = 4740
	flagAddBBSMessage
		flag = 4741
	flagAddBBSMessage
		flag = 4742
	flagAddBBSMessage
		flag = 4743
	flagAddBBSMessage
		flag = 4744
	flagAddBBSMessage
		flag = 4745
	flagAddBBSMessage
		flag = 4746
	flagAddBBSMessage
		flag = 4800
	flagAddBBSMessage
		flag = 4801
	flagAddBBSMessage
		flag = 4802
	flagAddBBSMessage
		flag = 4803
	flagAddBBSMessage
		flag = 4804
	flagAddBBSMessage
		flag = 4805
	flagAddBBSMessage
		flag = 4806
	flagAddBBSMessage
		flag = 4807
	flagAddBBSMessage
		flag = 4808
	flagAddBBSMessage
		flag = 4809
	flagAddBBSMessage
		flag = 4810
	flagAddBBSMessage
		flag = 4811
	flagAddBBSMessage
		flag = 4812
	flagAddBBSMessage
		flag = 4813
	flagAddBBSMessage
		flag = 4814
	flagAddBBSMessage
		flag = 4815
	flagAddBBSMessage
		flag = 4816
	flagAddBBSMessage
		flag = 4817
	flagAddBBSMessage
		flag = 4864
	flagAddBBSMessage
		flag = 4865
	flagAddBBSMessage
		flag = 4866
	flagAddBBSMessage
		flag = 4867
	flagAddBBSMessage
		flag = 4868
	flagAddBBSMessage
		flag = 4869
	flagAddBBSMessage
		flag = 4870
	flagAddBBSMessage
		flag = 4871
	flagAddBBSMessage
		flag = 4872
	flagAddBBSMessage
		flag = 4873
	flagAddBBSMessage
		flag = 4874
	flagAddBBSMessage
		flag = 4875
	flagAddBBSMessage
		flag = 4876
	flagAddBBSMessage
		flag = 4877
	flagAddBBSMessage
		flag = 4878
	flagAddBBSMessage
		flag = 4879
	flagAddBBSMessage
		flag = 4928
	flagAddBBSMessage
		flag = 4929
	flagAddBBSMessage
		flag = 4930
	flagAddBBSMessage
		flag = 4931
	flagAddBBSMessage
		flag = 4932
	flagAddBBSMessage
		flag = 4933
	flagAddBBSMessage
		flag = 4934
	flagAddBBSMessage
		flag = 4935
	flagAddBBSMessage
		flag = 4936
	flagAddBBSMessage
		flag = 4937
	flagAddBBSMessage
		flag = 4938
	flagAddBBSMessage
		flag = 4939
	"ケイジバンに かきこみされます!"
	keyWait
		any = false
	end
}
script 201 mmbn4 {
	msgOpen
	flagSet
		flag = 3094
	flagSet
		flag = 797
	itemGiveNaviCustProgram
		program = 80
		color = 2
		amount = 1
	"ユーモアセンスをゲッツ!"
	keyWait
		any = false
	end
}
script 202 mmbn4 {
	msgOpen
	itemGiveChip
		chip = 32
		code = G
		amount = 1
	itemGiveChip
		chip = 33
		code = G
		amount = 1
	itemGiveChip
		chip = 34
		code = G
		amount = 1
	itemGiveChip
		chip = 219
		code = G
		amount = 1
	"""
	ガン・デル・ソル
	かくしゅゲッツ
	"""
	keyWait
		any = false
	end
}
script 203 mmbn4 {
	msgOpen
	"""
	オズマかんとく
	トーナメント1かいせん時
	メッセージ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = DirectorOzuma
	"""
	ある日、ボクが インターネットを
	していると、
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクのナビのまえに
	きゅうけつきタイプのナビが
	あらわれたんだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	そのナビは すさまじく
	つよくてね、もうぜったい
	デリートされるって おもったとき
	"""
	keyWait
		any = false
	clearMsg
	"""
	たすけてくれたのが、
	ジャンゴだったんだよ
	"""
	keyWait
		any = false
	clearMsg
	"いや、ホントだよ!"
	keyWait
		any = false
	end
}
script 204 mmbn4 {
	msgOpen
	"""
	オズマかんとく
	トーナメント2かいせん時
	メッセージ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = DirectorOzuma
	"""
	今も どこかで、ジャンゴは
	きゅうけつき と
	たたかっているんじゃないかな?
	"""
	keyWait
		any = false
	clearMsg
	"そんな気がするんだ・・・"
	keyWait
		any = false
	end
}
script 205 mmbn4 {
	msgOpen
	"""
	オズマかんとく
	トーナメントけっしょうせん時
	メッセージ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = DirectorOzuma
	"""
	ジャンゴと おてんこさまは、
	今も インターネットの どこかで
	たたかいつづけているはずだよ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクも、ジャンゴたちに
	まけないよう、
	がんばらなくっちゃ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	よーし!
	「太陽しょうねん」 の
	ぞくへんをかくぞ!!
	"""
	keyWait
		any = false
	end
}
script 225 mmbn4 {
	msgOpen
	flagClear
		flag = 113
	"レコードひょうじをけします"
	keyWait
		any = false
	end
}
script 226 mmbn4 {
	msgOpen
	itemGive
		item = 0
		amount = 1
	itemGive
		item = 1
		amount = 1
	itemGive
		item = 2
		amount = 1
	itemGive
		item = 3
		amount = 1
	itemGive
		item = 4
		amount = 1
	itemGive
		item = 5
		amount = 1
	itemGive
		item = 6
		amount = 1
	itemGive
		item = 7
		amount = 1
	itemGive
		item = 8
		amount = 1
	itemGive
		item = 9
		amount = 1
	itemGive
		item = 10
		amount = 1
	itemGive
		item = 11
		amount = 1
	itemGive
		item = 12
		amount = 1
	itemGive
		item = 13
		amount = 1
	itemGive
		item = 14
		amount = 1
	itemGive
		item = 15
		amount = 1
	itemGive
		item = 16
		amount = 1
	itemGive
		item = 17
		amount = 1
	itemGive
		item = 18
		amount = 1
	itemGive
		item = 19
		amount = 1
	itemGive
		item = 20
		amount = 1
	itemGive
		item = 21
		amount = 1
	itemGive
		item = 22
		amount = 1
	itemGive
		item = 23
		amount = 1
	itemGive
		item = 24
		amount = 1
	itemGive
		item = 25
		amount = 1
	itemGive
		item = 26
		amount = 1
	itemGive
		item = 27
		amount = 1
	itemGive
		item = 28
		amount = 1
	itemGive
		item = 29
		amount = 1
	itemGive
		item = 30
		amount = 1
	itemGive
		item = 31
		amount = 1
	itemGive
		item = 32
		amount = 1
	itemGive
		item = 33
		amount = 1
	itemGive
		item = 34
		amount = 1
	itemGive
		item = 35
		amount = 1
	itemGive
		item = 36
		amount = 1
	itemGive
		item = 37
		amount = 1
	itemGive
		item = 38
		amount = 1
	itemGive
		item = 39
		amount = 1
	itemGive
		item = 40
		amount = 1
	itemGive
		item = 41
		amount = 1
	itemGive
		item = 42
		amount = 1
	itemGive
		item = 43
		amount = 1
	itemGive
		item = 44
		amount = 1
	itemGive
		item = 45
		amount = 1
	itemGive
		item = 46
		amount = 1
	itemGive
		item = 47
		amount = 1
	itemGive
		item = 48
		amount = 1
	itemGive
		item = 49
		amount = 1
	itemGive
		item = 50
		amount = 1
	itemGive
		item = 51
		amount = 1
	itemGive
		item = 52
		amount = 1
	itemGive
		item = 53
		amount = 1
	itemGive
		item = 54
		amount = 1
	itemGive
		item = 55
		amount = 1
	itemGive
		item = 56
		amount = 1
	itemGive
		item = 57
		amount = 1
	itemGive
		item = 58
		amount = 1
	itemGive
		item = 59
		amount = 1
	itemGive
		item = 60
		amount = 1
	itemGive
		item = 61
		amount = 1
	itemGive
		item = 62
		amount = 1
	itemGive
		item = 63
		amount = 1
	itemGive
		item = 64
		amount = 1
	itemGive
		item = 65
		amount = 1
	itemGive
		item = 66
		amount = 1
	itemGive
		item = 67
		amount = 1
	itemGive
		item = 68
		amount = 1
	itemGive
		item = 69
		amount = 1
	itemGive
		item = 70
		amount = 1
	itemGive
		item = 71
		amount = 1
	itemGive
		item = 72
		amount = 1
	itemGive
		item = 73
		amount = 1
	itemGive
		item = 74
		amount = 1
	itemGive
		item = 75
		amount = 1
	itemGive
		item = 76
		amount = 1
	itemGive
		item = 77
		amount = 1
	itemGive
		item = 78
		amount = 1
	itemGive
		item = 79
		amount = 1
	itemGive
		item = 80
		amount = 1
	itemGive
		item = 81
		amount = 1
	itemGive
		item = 82
		amount = 1
	itemGive
		item = 83
		amount = 1
	itemGive
		item = 84
		amount = 1
	itemGive
		item = 85
		amount = 1
	itemGive
		item = 86
		amount = 1
	itemGive
		item = 87
		amount = 1
	itemGive
		item = 88
		amount = 1
	itemGive
		item = 89
		amount = 1
	itemGive
		item = 90
		amount = 1
	itemGive
		item = 91
		amount = 1
	itemGive
		item = 92
		amount = 1
	itemGive
		item = 93
		amount = 1
	itemGive
		item = 94
		amount = 1
	itemGive
		item = 95
		amount = 1
	itemGive
		item = 96
		amount = 1
	itemGive
		item = 97
		amount = 1
	itemGive
		item = 98
		amount = 1
	itemGive
		item = 99
		amount = 1
	itemGive
		item = 100
		amount = 1
	itemGive
		item = 101
		amount = 1
	itemGive
		item = 102
		amount = 1
	itemGive
		item = 103
		amount = 1
	itemGive
		item = 104
		amount = 1
	itemGive
		item = 105
		amount = 1
	itemGive
		item = 106
		amount = 1
	itemGive
		item = 107
		amount = 1
	itemGive
		item = 108
		amount = 1
	itemGive
		item = 109
		amount = 1
	itemGive
		item = 110
		amount = 1
	itemGive
		item = 111
		amount = 1
	itemGive
		item = 112
		amount = 1
	itemGive
		item = 113
		amount = 1
	itemGive
		item = 114
		amount = 1
	itemGive
		item = 115
		amount = 1
	itemGive
		item = 116
		amount = 1
	itemGive
		item = 117
		amount = 1
	itemGive
		item = 118
		amount = 1
	itemGive
		item = 119
		amount = 1
	itemGive
		item = 120
		amount = 1
	itemGive
		item = 121
		amount = 1
	itemGive
		item = 122
		amount = 1
	itemGive
		item = 123
		amount = 1
	itemGive
		item = 124
		amount = 1
	itemGive
		item = 125
		amount = 1
	itemGive
		item = 126
		amount = 1
	itemGive
		item = 127
		amount = 1
	itemGive
		item = 128
		amount = 1
	itemGive
		item = 129
		amount = 1
	itemGive
		item = 130
		amount = 1
	itemGive
		item = 131
		amount = 1
	itemGive
		item = 132
		amount = 1
	itemGive
		item = 133
		amount = 1
	itemGive
		item = 144
		amount = 1
	itemGive
		item = 145
		amount = 1
	itemGive
		item = 146
		amount = 1
	itemGive
		item = 147
		amount = 1
	itemGive
		item = 148
		amount = 1
	itemGive
		item = 149
		amount = 1
	itemGive
		item = 150
		amount = 1
	itemGive
		item = 151
		amount = 1
	itemGive
		item = 152
		amount = 1
	itemGive
		item = 153
		amount = 1
	itemGive
		item = 154
		amount = 1
	itemGive
		item = 155
		amount = 1
	itemGive
		item = 156
		amount = 1
	itemGive
		item = 157
		amount = 1
	itemGive
		item = 158
		amount = 1
	itemGive
		item = 159
		amount = 1
	"キーアイテムぜんぶGET"
	keyWait
		any = false
	end
}
script 227 mmbn4 {
	msgOpen
	flagSet
		flag = 2242
	flagSet
		flag = 2243
	"メタルマンミニゲーム"
	keyWait
		any = false
	end
}
script 228 mmbn4 {
	msgOpen
	flagClear
		flag = 155
	"ちゅうせんかんけいフラグリセット"
	keyWait
		any = false
	end
}
script 229 mmbn4 {
	msgOpen
	startGiveFolder
		slot = 2
		folder = 5
	"ヨビフォルダをゲットした!"
	keyWait
		any = false
	end
}
script 230 mmbn4 {
	msgOpen
	itemGive
		item = 79
		amount = 1
	"C・スライダーゲット!"
	keyWait
		any = false
	end
}
script 231 mmbn4 {
	msgOpen
	startGiveFolder
		slot = 1
		folder = 1
	"フォルダ2をゲットした!"
	keyWait
		any = false
	end
}
script 232 mmbn4 {
	msgOpen
	itemGiveChip
		chip = 2
		code = D
		amount = 1
	itemGiveChip
		chip = 2
		code = E
		amount = 1
	itemGiveChip
		chip = 2
		code = C
		amount = 1
	itemGiveChip
		chip = 3
		code = F
		amount = 1
	itemGiveChip
		chip = 3
		code = G
		amount = 1
	itemGiveChip
		chip = 3
		code = *
		amount = 1
	itemGiveChip
		chip = 154
		code = B
		amount = 1
	itemGiveChip
		chip = 1
		code = A
		amount = 1
	itemGiveChip
		chip = 1
		code = B
		amount = 2
	"ちっぷせっと"
	keyWait
		any = false
	end
}
script 233 mmbn4 {
	msgOpen
	itemGiveChip
		chip = 1
		code = A
		amount = 1
	itemGiveChip
		chip = 232
		code = S
		amount = 1
	"ちっぷせっと"
	keyWait
		any = false
	end
}
script 234 mmbn4 {
	msgOpen
	itemGive
		item = 128
		amount = 1
	itemGive
		item = 129
		amount = 1
	itemGive
		item = 130
		amount = 1
	itemGive
		item = 131
		amount = 1
	itemGive
		item = 132
		amount = 1
	itemGive
		item = 133
		amount = 1
	"スピンアイテムゲット"
	keyWait
		any = false
	end
}
script 235 mmbn4 {
	msgOpen
	itemGive
		item = 160
		amount = 1
	"HPメモリーゲット"
	keyWait
		any = false
	end
}
script 236 mmbn4 {
	msgOpen
	flagSet
		flag = 116
	"""
	ダークソウル出現
	ただし、シナリオのフラグを
	立てているので、シナリオを
	"""
	keyWait
		any = false
	clearMsg
	"つづけることはきんしです"
	keyWait
		any = false
	end
}
script 237 mmbn4 {
	msgOpen
	itemGive
		item = 164
		amount = 1
	"レギュラーUP3ゲット"
	keyWait
		any = false
	end
}
script 238 mmbn4 {
	msgOpen
	itemGive
		item = 163
		amount = 1
	"レギュラーUP2ゲット"
	keyWait
		any = false
	end
}
script 239 mmbn4 {
	msgOpen
	itemGive
		item = 162
		amount = 1
	"レギュラーUP1ゲット"
	keyWait
		any = false
	end
}
script 240 mmbn4 {
	msgOpen
	itemGive
		item = 161
		amount = 1
	"かくちょうメモリーゲット"
	keyWait
		any = false
	end
}
script 241 mmbn4 {
	msgOpen
	itemGive
		item = 105
		amount = 1
	itemGive
		item = 106
		amount = 1
	flagSet
		flag = 2442
	flagSet
		flag = 2444
	"「"
	printItem
		buffer = 0
		item = 105
	"""
	」をゲッツ
	「
	"""
	printItem
		buffer = 0
		item = 106
	"""
	」をゲッツ
	ほのおミニゲームスタート!
	"""
	keyWait
		any = false
	end
}
script 242 mmbn4 {
	flagSet
		flag = 115
	msgOpen
	"""
	フリートーナメントかいさい
	ただし、シナリオクリアフラグを
	たてているため、このじょうたいで
	"""
	keyWait
		any = false
	clearMsg
	"ゲームはつづけないで"
	keyWait
		any = false
	end
}
script 243 mmbn4 {
	flagSet
		flag = 20
	flagSet
		flag = 21
	flagSet
		flag = 29
	flagSet
		flag = 30
	flagSet
		flag = 31
	flagSet
		flag = 32
	flagSet
		flag = 33
	flagSet
		flag = 34
	itemGiveChip
		chip = 359
		code = 255
		amount = 0
	itemGiveChip
		chip = 360
		code = 255
		amount = 0
	itemGiveChip
		chip = 361
		code = 255
		amount = 0
	itemGiveChip
		chip = 362
		code = 255
		amount = 0
	itemGiveChip
		chip = 363
		code = 255
		amount = 0
	itemGiveChip
		chip = 364
		code = 255
		amount = 0
	msgOpen
	"ブルー・ユニゾンゲット"
	keyWait
		any = false
	end
}
script 244 mmbn4 {
	flagSet
		flag = 20
	flagSet
		flag = 21
	flagSet
		flag = 23
	flagSet
		flag = 24
	flagSet
		flag = 25
	flagSet
		flag = 26
	flagSet
		flag = 27
	flagSet
		flag = 28
	itemGiveChip
		chip = 353
		code = 255
		amount = 0
	itemGiveChip
		chip = 354
		code = 255
		amount = 0
	itemGiveChip
		chip = 355
		code = 255
		amount = 0
	itemGiveChip
		chip = 356
		code = 255
		amount = 0
	itemGiveChip
		chip = 357
		code = 255
		amount = 0
	itemGiveChip
		chip = 358
		code = 255
		amount = 0
	msgOpen
	"レッド・ユニゾンゲット"
	keyWait
		any = false
	end
}
script 245 mmbn4 {
	msgOpen
	itemGive
		item = 108
		amount = 1
	itemGive
		item = 109
		amount = 1
	itemGive
		item = 110
		amount = 1
	"C・スライダーのパーツゲット!"
	keyWait
		any = false
	end
}
script 246 mmbn4 {
	msgOpen
	checkGiveTournamentPoints
		amount = 50
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	"バトラーズポイント50ゲッツ"
	keyWait
		any = false
	end
}
script 247 mmbn4 {
	msgOpen
	checkGiveZenny
		amount = 100000
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	checkGiveBugFrags
		amount = 9999
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	"大金持ち"
	keyWait
		any = false
	end
}
script 248 mmbn4 {
	msgOpen
	flagSet
		flag = 256
	flagSet
		flag = 257
	flagSet
		flag = 258
	flagSet
		flag = 259
	flagSet
		flag = 260
	flagSet
		flag = 261
	flagSet
		flag = 262
	flagSet
		flag = 263
	flagSet
		flag = 264
	"世界りょこう!"
	keyWait
		any = false
	end
}
script 249 mmbn4 {
	msgOpen
	flagSet
		flag = 6144
	flagSet
		flag = 6145
	flagSet
		flag = 6146
	flagSet
		flag = 6147
	flagSet
		flag = 6148
	flagSet
		flag = 6149
	flagSet
		flag = 6150
	flagSet
		flag = 6151
	flagSet
		flag = 6152
	flagSet
		flag = 6153
	flagSet
		flag = 6154
	flagSet
		flag = 6155
	flagSet
		flag = 6156
	flagSet
		flag = 6157
	flagSet
		flag = 6158
	flagSet
		flag = 6159
	flagSet
		flag = 6160
	flagSet
		flag = 6161
	flagSet
		flag = 6162
	flagSet
		flag = 6163
	flagSet
		flag = 6164
	flagSet
		flag = 6165
	flagSet
		flag = 6166
	flagSet
		flag = 6167
	flagSet
		flag = 6168
	flagSet
		flag = 6169
	flagSet
		flag = 6170
	flagSet
		flag = 6171
	flagSet
		flag = 6172
	flagSet
		flag = 6173
	itemGiveChip
		chip = 320
		code = 255
		amount = 0
	itemGiveChip
		chip = 321
		code = 255
		amount = 0
	itemGiveChip
		chip = 322
		code = 255
		amount = 0
	itemGiveChip
		chip = 323
		code = 255
		amount = 0
	itemGiveChip
		chip = 324
		code = 255
		amount = 0
	itemGiveChip
		chip = 325
		code = 255
		amount = 0
	itemGiveChip
		chip = 326
		code = 255
		amount = 0
	itemGiveChip
		chip = 327
		code = 255
		amount = 0
	itemGiveChip
		chip = 328
		code = 255
		amount = 0
	itemGiveChip
		chip = 329
		code = 255
		amount = 0
	itemGiveChip
		chip = 330
		code = 255
		amount = 0
	itemGiveChip
		chip = 331
		code = 255
		amount = 0
	itemGiveChip
		chip = 332
		code = 255
		amount = 0
	itemGiveChip
		chip = 333
		code = 255
		amount = 0
	itemGiveChip
		chip = 334
		code = 255
		amount = 0
	itemGiveChip
		chip = 335
		code = 255
		amount = 0
	itemGiveChip
		chip = 336
		code = 255
		amount = 0
	itemGiveChip
		chip = 337
		code = 255
		amount = 0
	itemGiveChip
		chip = 338
		code = 255
		amount = 0
	itemGiveChip
		chip = 339
		code = 255
		amount = 0
	itemGiveChip
		chip = 340
		code = 255
		amount = 0
	itemGiveChip
		chip = 341
		code = 255
		amount = 0
	itemGiveChip
		chip = 342
		code = 255
		amount = 0
	itemGiveChip
		chip = 343
		code = 255
		amount = 0
	itemGiveChip
		chip = 344
		code = 255
		amount = 0
	itemGiveChip
		chip = 345
		code = 255
		amount = 0
	itemGiveChip
		chip = 346
		code = 255
		amount = 0
	itemGiveChip
		chip = 347
		code = 255
		amount = 0
	itemGiveChip
		chip = 348
		code = 255
		amount = 0
	itemGiveChip
		chip = 349
		code = 255
		amount = 0
	"PAゲット"
	keyWait
		any = false
	end
}
script 250 mmbn4 {
	msgOpen
	flagSet
		flag = 1
	flagSet
		flag = 2
	flagSet
		flag = 3
	flagSet
		flag = 4
	flagSet
		flag = 5
	flagSet
		flag = 6
	flagSet
		flag = 7
	flagSet
		flag = 8
	flagSet
		flag = 9
	flagSet
		flag = 10
	flagSet
		flag = 11
	flagSet
		flag = 12
	flagSet
		flag = 13
	flagSet
		flag = 14
	flagSet
		flag = 15
	flagSet
		flag = 16
	flagSet
		flag = 17
	flagSet
		flag = 18
	flagSet
		flag = 21
	"まけフラグセット"
	keyWait
		any = false
	end
}
script 251 mmbn4 {
	msgOpen
	callGiveAllNaviCustPrograms
	flagSet
		flag = 112
	flagSet
		flag = 113
	"ナビカスGET"
	keyWait
		any = false
	end
}
script 252 mmbn4 {
	msgOpen
	itemGive
		item = 0
		amount = 1
	itemGive
		item = 2
		amount = 1
	itemGive
		item = 3
		amount = 1
	itemGive
		item = 5
		amount = 1
	itemGive
		item = 8
		amount = 1
	itemGive
		item = 9
		amount = 1
	itemGive
		item = 11
		amount = 1
	itemGive
		item = 14
		amount = 1
	itemGive
		item = 15
		amount = 1
	itemGive
		item = 16
		amount = 1
	itemGive
		item = 18
		amount = 1
	itemGive
		item = 19
		amount = 1
	itemGive
		item = 20
		amount = 1
	itemGive
		item = 21
		amount = 1
	itemGive
		item = 22
		amount = 1
	itemGive
		item = 23
		amount = 1
	itemGive
		item = 24
		amount = 1
	itemGive
		item = 25
		amount = 1
	"アイテムGET"
	keyWait
		any = false
	end
}
script 253 mmbn4 {
	msgOpen
	itemGive
		item = 176
		amount = 1
	itemGive
		item = 177
		amount = 1
	itemGive
		item = 178
		amount = 1
	itemGive
		item = 179
		amount = 1
	itemGive
		item = 181
		amount = 1
	itemGive
		item = 180
		amount = 1
	"サブアイテムGET"
	keyWait
		any = false
	end
}
script 254 mmbn4 {
	msgOpen
	itemGiveAllChips
	"ぜんチップゲッツ"
	keyWait
		any = false
	end
}
script 255 mmbn4s {
	end
}
@archive 755674
@size 110

script 0 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 1 mmbn4 {
	jump
		target = 0
}
script 2 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 5
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGiveChip
		chip = 65535
		code = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、バトルチップ
	「
	"""
	printChip
		buffer = 3
		chip = 0
	" "
	printCode
		buffer = 4
		code = A
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 3 mmbn4 {
	jump
		target = 2
}
script 4 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 5 mmbn4 {
	msgOpen
	"""
	カギがかかっている!
	あけるには、「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」が
	ひつようだ
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	flagSetBuffered
		buffer = 0
	itemGiveChip
		chip = 65535
		code = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、バトルチップ
	「
	"""
	printChip
		buffer = 3
		chip = 0
	" "
	printCode
		buffer = 4
		code = A
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 10 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 17
}
script 11 mmbn4 {
	jump
		target = 10
}
script 12 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 15
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	checkGiveItem
		item = 255
		amount = 1
		jumpIfAll = continue
		jumpIfNone = 16
		jumpIfSome = 16
	flagSetBuffered
		buffer = 0
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、サブチップ
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 13 mmbn4 {
	jump
		target = 12
}
script 14 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 17
}
script 15 mmbn4 {
	jump
		target = 5
}
script 16 mmbn4 {
	msgOpen
	"「"
	printItem
		buffer = 3
		item = 0
	"""
	」は
	いっぱいで もうもてない
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	checkGiveItem
		item = 255
		amount = 1
		jumpIfAll = continue
		jumpIfNone = 16
		jumpIfSome = 16
	flagSetBuffered
		buffer = 0
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、サブチップ
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 20 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 21 mmbn4 {
	jump
		target = 20
}
script 22 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 25
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	checkGiveZenny
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、
	「
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	ゼニー」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 23 mmbn4 {
	jump
		target = 22
}
script 24 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 25 mmbn4 {
	jump
		target = 5
}
script 27 mmbn4 {
	flagSetBuffered
		buffer = 0
	checkGiveZenny
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、
	「
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	ゼニー」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 30 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 37
}
script 31 mmbn4 {
	jump
		target = 30
}
script 32 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 35
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 33 mmbn4 {
	jump
		target = 32
}
script 34 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 37
}
script 35 mmbn4 {
	jump
		target = 5
}
script 37 mmbn4 {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 40 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 47
}
script 41 mmbn4 {
	jump
		target = 40
}
script 42 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 25
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	checkGiveBugFrags
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = 46
		jumpIfSome = 46
	flagSetBuffered
		buffer = 0
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、
	「バグのかけら」
	を 
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"コゲットした!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 43 mmbn4 {
	jump
		target = 42
}
script 44 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 47
}
script 45 mmbn4 {
	jump
		target = 5
}
script 46 mmbn4 {
	msgOpen
	"""
	「バグのかけら」は
	いっぱいで もうもてない
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4 {
	checkGiveBugFrags
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = 46
		jumpIfSome = 46
	flagSetBuffered
		buffer = 0
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、
	「バグのかけら」
	を 
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"コゲットした!!"
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 50 mmbn4 {
	jump
		target = 7
}
script 51 mmbn4 {
	jump
		target = 0
}
script 52 mmbn4 {
	jump
		target = 2
}
script 53 mmbn4 {
	jump
		target = 2
}
script 54 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4459
		jumpIfTrue = continue
		jumpIfFalse = 57
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 179
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ミステリーデータに
	ひそむ ウイルスデータが
	デリートされた!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 55 mmbn4 {
	jump
		target = 5
}
script 57 mmbn4 {
	flagSetBuffered
		buffer = 0
	"""
	なんと、ミステリーデータは
	ウイルスだった!!
	"""
	keyWait
		any = false
	startRandomBattle
	end
}
script 60 mmbn4 {
	jump
		target = 27
}
script 61 mmbn4 {
	jump
		target = 20
}
script 62 mmbn4 {
	jump
		target = 22
}
script 63 mmbn4 {
	jump
		target = 22
}
script 64 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4459
		jumpIfTrue = continue
		jumpIfFalse = 67
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 179
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ミステリーデータに
	ひそむ ウイルスデータが
	デリートされた!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 65 mmbn4 {
	jump
		target = 5
}
script 67 mmbn4 {
	flagSetBuffered
		buffer = 0
	"""
	なんと、ミステリーデータは
	ウイルスだった!!
	"""
	keyWait
		any = false
	startRandomBattle
	end
}
script 70 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 77
}
script 71 mmbn4 {
	jump
		target = 70
}
script 72 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 75
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、きょうかプログラム
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 73 mmbn4 {
	jump
		target = 72
}
script 74 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 77
}
script 75 mmbn4 {
	jump
		target = 5
}
script 77 mmbn4 {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、きょうかプログラム
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 80 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 87
}
script 81 mmbn4 {
	jump
		target = 80
}
script 82 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 85
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGiveNaviCustProgram
		program = 255
		color = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、ナビカスプログラム
	「
	"""
	printNaviCustProgram
		buffer = 3
		program = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 83 mmbn4 {
	jump
		target = 82
}
script 84 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 87
}
script 85 mmbn4 {
	jump
		target = 5
}
script 87 mmbn4 {
	flagSetBuffered
		buffer = 0
	itemGiveNaviCustProgram
		program = 255
		color = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、ナビカスプログラム
	「
	"""
	printNaviCustProgram
		buffer = 3
		program = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 90 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 97
}
script 91 mmbn4 {
	jump
		target = 90
}
script 92 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 95
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、きょうかプログラム
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	"""
	レギュラーメモリの
	ようりょうが、
	
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = true
	"メガ ふえた!!"
	keyWait
		any = false
	end
}
script 93 mmbn4 {
	jump
		target = 92
}
script 94 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 97
}
script 95 mmbn4 {
	jump
		target = 5
}
script 97 mmbn4 {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、きょうかプログラム
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	clearMsg
	"""
	レギュラーメモリの
	ようりょうが、
	
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = true
	"メガ ふえた!!"
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 107
}
script 101 mmbn4 {
	jump
		target = 100
}
script 102 mmbn4 {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 105
	msgOpen
	"""
	サブチップ
	「
	"""
	printItem
		buffer = 0
		item = 181
	"""
	」
	が こうりょくを はっきした!!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	ロックマンは、きょうかプログラム
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	"""
	サブチップを もてるかずが
	ふえた!!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	jump
		target = 102
}
script 104 mmbn4 {
	msgOpen
	"""
	ロックマンは、
	ミステリーデータを
	しらべた・
	"""
	wait
		frames = 10
	"・"
	wait
		frames = 10
	"・"
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 107
}
script 105 mmbn4 {
	jump
		target = 5
}
script 107 mmbn4 {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	ロックマンは、きょうかプログラム
	「
	"""
	printItem
		buffer = 3
		item = 0
	"""
	」
	を ゲットした!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	clearMsg
	"""
	サブチップを もてるかずが
	ふえた!!
	"""
	keyWait
		any = false
	end
}
@archive 7561DC
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 4
		upper = 4
		jumpIfInRange = 29
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	checkFlag
		flag = 774
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 10
		jumpIfGreater = 10
		jumpIfLess = continue
	checkFlag
		flag = 832
		jumpIfTrue = 9
		jumpIfFalse = continue
	checkFlag
		flag = 772
		jumpIfTrue = 8
		jumpIfFalse = continue
	checkFlag
		flag = 831
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkFlag
		flag = 797
		jumpIfTrue = 6
		jumpIfFalse = continue
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パパとママに
	あいさつしに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ボクを レンジにプラグインして!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	パパに おカネをもらおうよ
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 2
	"""
	」は、
	インターネット秋原エリア3で
	うってるらしいよ
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"パパに「"
	printItem
		buffer = 0
		item = 2
	"""
	」を
	わたそう!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	checkSubArea
		lower = 1
		upper = 2
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkMultiFlag
		flag = 803
		count = 5
		jumpIfAllSet = 12
		jumpIfNotAllSet = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、町のみんなと
	はなしでもして
	じかんを つぶそうよ
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ねぇ 熱斗くん、
	そろそろ まちあわせのばしょに
	行ってみようよ
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パパ、まだ じかんが
	かかりそうだから
	そとで まってようよ
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	checkSubArea
		lower = 1
		upper = 2
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いそいで ウチにかえって
	秋原エリアにむかおう!
	みんなが あぶないよ!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	パソコンにプラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 42
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 41
		jumpIfFalse = continue
	checkFlag
		flag = 785
		jumpIfTrue = 40
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 39
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 37
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 36
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう!!
	くろいナビを おうんだ!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4 {
	checkFlag
		flag = 839
		jumpIfTrue = 44
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	でんぱとうは 電気街の
	ひろばに あったよね!
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 38
		jumpIfGreater = 38
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	電気街にもどって
	ちょうおんぱを ふせぐなにかを
	さがそうよ!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"電気街にもどろう!"
	keyWait
		any = false
	end
}
script 39 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ロールちゃんが
	あぶないよ!
	電気街にもどろう!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	msgOpen
	"""
	ロックマンは
	PETの 中にはいない・・・
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このチップみたいなの
	なんだろう?
	日暮さんに きいてみようよ
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	checkSubArea
		lower = 1
		upper = 2
		jumpIfInRange = 43
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	今日はもう ウチにかえろうよ
	あしたは 大会だね!
	がんばろう!
	"""
	keyWait
		any = false
	end
}
script 43 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あしたに そなえて
	そろそろ ねちゃう?
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	電気街にもどって
	ひろばに入る べつのみちを
	さがそう!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	checkFlag
		flag = 791
		jumpIfTrue = 48
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 47
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 46
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	電気街の ひろばに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タウンエリア3にいる
	はいいろのナビが エントリー
	してくれるんだよね
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ネームエントリーもおわったし、
	ひろばに もどろうよ
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4 {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 51
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	3人の いらいもクリアしたし、
	電気街のひろばに もどろう!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	デンサンドームにむかおうよ!
	ほんせんも がんばろうね!
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	よせんは 3人のいらいを
	クリアすれば いいんだったね
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はんにんのだした ヒントを
	てがかりに チサオくんを
	さがそう!!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"電気街のひろばに むかおう!!"
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、いよいよデカオくんとの
	バトルだね!
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すうじデータを あつめよう!
	ぜんぶそろえて
	電気街のひろばに むかわなきゃ!
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4 {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、タコヤキ屋さんに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい
	タコヤキきを なおそう!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タコヤキきを なおせるのは
	ヒノケンさんだけみたいだね
	ヒノケンさんをさがそ!
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ファイアマンたちのこと、
	ちょっと気になるけど・・・
	タコヤキ屋さんに もどろ!
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しあいがはじまるね!
	がんばろ!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4 {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、PETのメンテナンスを
	してもらおうよ!
	たしか、ドームのまえだったよね!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいぞうされたフォルダを
	だれかに なおしてもらわないと!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、「"
	printItem
		buffer = 0
		item = 9
	"""
	」 を
	ヒントに パスワードを見つけよう
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	フォルダも なおったし、
	かいじょうに もどろう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そういえば、しあいまで
	まだじかんがあるね
	なにしよっか?
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コマを おじいさんに
	とどけてあげようよ!
	けど、どこに行ったんだろう?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	こうえんに、
	おとしよりネットバトラーが
	あつまってるはずだよ!!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タウンエリアで しけんか・・・
	熱斗くん、あのおじいさんの
	ためにも がんばろうよ
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しんぱいだから、
	ボクらも ようすを見に行こう!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いけない、もうすぐしあいが
	はじまっちゃうよ!
	はやくかいじょうに もどろ!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	会長さんのナビがいるのは
	秋原エリアだったよね!
	行ってみよう
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4 {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	checkFlag
		flag = 1794
		jumpIfTrue = 171
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	うらないなんて 気にしちゃ
	ダメだよ! さ、そとにでて
	じかんをつぶそ!
	"""
	keyWait
		any = false
	end
}
script 171 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきの おねえさんが
	ボクたちの あいてみたいだね
	ちょっと やりにくそう・・・
	"""
	keyWait
		any = false
	end
}
script 172 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょっと さわがしかったけど、
	なにかあったのかな?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、はやくアクアマンを
	さがしに行こうよ! でないと
	インターネットが タイヘンだよ!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって アクアマンの
	あとを おいかけよう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅう子さんを さがそう!
	けど、手がかりがないね・・・
	ダレか しってる人いないかな?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しゅう子さんは
	電気街1ちょうめだよ!!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アクアマンのところにむかおう!
	プラグインおねがい!!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ごかいが とけてよかったね!
	さ、デンサンドームに行こう!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4 {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ユウコちゃんが
	ドームのそとで まってるよ
	はやく 行ってあげよう!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんに おきゃくさんって
	だれだろうね?
	はやく ウチにかえろう!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4 {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あくりょうナビは たいじしたね!
	ユウコちゃんのパパに
	ほうこくしよう!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あくりょうナビを
	じょうぶつさせなきゃ!
	熱斗くん、ボクをプラグインして!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、ユウコちゃんとの
	しあいだね!
	ドームへ行こう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	もえてるね、熱斗くん!
	そとにでて カラダでも
	うごかそっか!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ガンテツさん、ごうかいな人だね
	さっき たすけてもらったおれい、
	ちゃんといったほうが よくない?
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、タウンエリア3に
	行こう! ガンテツさんを
	すけだちしよう!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう! ガンテツさんのナビが
	あぶないよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう! あんなヤツらを
	のばなしにできないよ!!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ドームに行こう!
	オトコくらべにね!!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4 {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 217
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	日暮さんが大会に出ないなんて、
	きっと なにかあったんだよ!
	ヒグレヤに 行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	電脳世界で、ヒグレヤのチラシを
	10まい いじょうくばろう!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ヒグレヤの そうこは
	タウンエリアだったね!
	いそごう、熱斗くん!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4 {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そうこのカギを手にいれて、
	ナンバーマンを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ヒグレヤの ようすが
	きになるね・・・
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ 日暮さんとバトルだね!
	デンサンドームへ いそごう!!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく タウンエリアに行って、
	ナンバーマンを たすけよう!
	"""
	keyWait
		any = false
	end
}
script 217 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	日暮さんいるね!
	はなしを きこうよ!!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4 {
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 220
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったね
	ヒグレヤに もどる?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4 {
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 220
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	よし、もらったチラシは
	ぜんぶ くばったよ!
	ヒグレヤに もどろう!
	"""
	keyWait
		any = false
	end
}
script 220 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	日暮さんは まだみたいだね
	とりあえず、ナナコさんに
	ほうこくしようか?
	"""
	keyWait
		any = false
	end
}
@archive 756C1C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkFlag
		flag = 296
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 18
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1030
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1027
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkItem
		item = 144
		amount = 1
		jumpIfEqual = 12
		jumpIfGreater = 12
		jumpIfLess = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"メイルちゃんちに 行こうよ!"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃんに あいさつ
	しないとね!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	ロールちゃんを またせたら
	わるいからね!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、チャレンジしに
	インターネットにもどろ!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウチにもどろう!
	なにが あったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"なにが おこったんだろ?"
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そういえば ママが
	熱斗くんのパソコンが どうとか
	いってたよね・・・
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア2に行こう!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう!
	パークエリア2に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア2に
	行こうよ!!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	ママがタイヘンだよ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkFlag
		flag = 5708
		jumpIfTrue = continue
		jumpIfFalse = 26
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	メールをよんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シェロ・カスティロに
	むかおうよ!!
	メイルちゃん まってるよ!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	バトラーズポイントをあつめよう!
	50ポイントたまったら、
	シェロ・カスティロに行こう!!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっそく ひかえしつに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん おつかれ!
	ひかえしつに もどろう!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきのボスって人を さがそう!
	きっと、まだシェロ・カスティロの
	どこかにいるよ
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリアへ行こう!
	リキさんのナビが きになるよ
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すごい みはりのかずだったね
	あの じょうたいのパークエリアを
	とっぱするのは、タイヘンだよ
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	リキさん、もうだいじょうぶかな?
	シェロ・カスティロに、ようすを
	見に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんとの
	オニごっこしょうぶ・・・
	やらなきゃならない みたいだね
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん、このちかくに
	いるのかな? ちょっと
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア1のグライドの
	ところに行こう!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	プラグインおねがい!
	ロールちゃんをさがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんは どこかに
	とじこめられてるかもしれない!
	なにか 手がかりはないかな?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア3に
	行こう!
	ロールちゃんを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"それじゃあ おしろに行こっか"
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 69
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょうせんじょうって、
	ロールちゃん どうしたんだろ?
	とりあえず 行ってみようよ
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	どうやら ロールちゃん
	ホンキみたいだね・・・
	じゃあ おしろに行こっか・・・
	"""
	keyWait
		any = false
	end
}
script 69 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ぬいぐるみにプラグインして
	ロールちゃんに はなしを
	きいてみようよ!
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
}
script 72 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ママに ごはんを
	つくってもらおう!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアへ いそごう!
	ウインドマンを とめないと!!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアは大あらしだね
	ともかく、ウインドマンを
	とめるしかないよ
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そろそろ しあいだね!
	ランさんも たぶん
	かいじょうで まってるよ!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たま子さん、メルヒェンひろばで
	なにするつもりだろ?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いっちょキアイいれに
	行こうよ! おししょうさんは
	タウンエリア4に いるんだよね!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで、でしいりを
	ゆるしてもらえそうだね!!
	おししょうさんのトコにもどろ!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ししょうの さけのみともだちが
	パークエリアにいるんだったよね
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、じゅんびができたら
	すぐに イワくだきのしゅぎょうを
	はじめようよ!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅぎょうも おわったし、
	たま子さんの トコロに
	行ってみようよ!!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アイスクリームのやたいに
	プラグインおねがい!!
	メタルマンがまってるよ!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さぁ、おしろに むかおう!
	メタルマンと
	しんけんしょうぶだよ!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	インターネットの
	にぎやかな エリアの
	いりぐちっていえば・・・
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、かいじょビデオを
	さがしに行こう・・・!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、おしろに いそごう!
	このままじゃ
	しっかくになっちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、どうしてたのかな?
	しあいのまえに
	あってみたいね!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、きになるね・・・
	電気街に
	ようすを 見にいってみようよ
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんのためにも
	がんばろう!
	めざすは デンサンドーム!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんが きになるね
	ようすを見に行こうよ
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンを さがしに行くよ!
	熱斗くん、プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンに あわなきゃ!
	きっとパークエリアの
	どこかにいる!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんとウッドマン、
	ちゃんと さいかいできたかな?
	シェロ・カスティロに 行こう!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ しあいだね!
	熱斗くん、がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2480
		jumpIfTrue = 117
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しあいまで
	なにしてようか?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まっててくれよ、ロックマン!
	すぐに行くからな!!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいじょうに 行こう!
	アツキさんも、
	ケンカをやめて きてるはずだよ
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	いそいで ボクをプラグインして!
	2人のケンカを とめないと!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、しあいがはじまるよ!"
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんのパソコンから
	けむりだって!
	いそがなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!!
	秋原エリアの火を
	けしに行こうよ!!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4 {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	味太くん、なにをするつもりだろ?
	はやくシェロ・カスティロへ
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	クッキングマスター・・・
	ちょっと あやしいかんじだけど、
	パークエリア2へ行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	はやく、パークエリア2へ行こう!
	りょうりの とっくんだよ!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4 {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しょくざいショップの
	てんちょうさんナビを さがそう!
	パークエリアにいるらしいよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シェロ・カスティロへ行こう!
	味太くんとの
	りょうりたいけつだよ!!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さあ、つぎはいよいよ
	味太くんとのネットバトルだね!
	おしろへ いそごう!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで しょくざいについては
	あんしんだね!
	りょうりどうじょうへ もどろう!
	"""
	keyWait
		any = false
	end
}
@archive 7574E8
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkFlag
		flag = 1350
		jumpIfTrue = 13
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しゅっぱつのあさだね!
	ママにアイサツしたら、
	くうこうにむかおう!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、どうしたの!?
	アメロッパにもどらなきゃ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん! トーナメントが
	はじまっちゃうよ!!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さぁ、くうこうに行こう!"
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このホシにタイヘンなコトが
	おきてるんだよ!
	ANSAにもどろう!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	世界中のインターネットに
	ちょくせつプラグインして
	しゅうふくしよう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アメロッパエリアにいる
	オフィシャルのナビをさがそう!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリアにいる はんにんを
	つかまえよう!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ANSAに行こう!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パパたちのところに
	行かなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、たいせいが
	ととのったら ANSAに
	もどろう!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	ANSAにもどろう!!
	もう じかんがないよ!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく ANSAにもどって
	しょうわくせいの きどうを
	かえよう!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かわった おじいさんだったね
	そうだ、アメロッパンに
	チャレンジしに行かなきゃ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	だ、だれか たよれそうな人、
	いないかな・・・ウッツツ・・・
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	4つのあかしが そろったね・・・
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがしに 行こう・・・
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、4つのあかしを
	さがしに行こう・・・それで・・・
	「のろいにんぎょう」を・・・
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところへ・・・
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクは もうだいじょうぶだよ!
	さぁ、コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こう!
	アメロッパエリアだったよね!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	めがみぞうの電脳に行こう!!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひろいエリアって、どこの
	ことだろう?
	おもいあたるトコロは ない?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	えいゆうの中って、
	ドコだろう・・・?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	めがみぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	えいゆうぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアに行ってみようよ!
	なにか おてつだいできるかも
	しれないよ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なぁ、熱斗!
	トーナメントなんて
	キケンしちまおうぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	・・・おまえ、ホントに
	ロックマンだよな・・・?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	な、なにいってるんだ・・・
	オデは ロックマンだよ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そ、そうなのか・・・"
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"こ、こんどは なんなんだ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	もっかいきくけど、
	おまえ、ホントのホントに
	ロックマンなんだよな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"あ、あたりまえじゃないか!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"どうもあやしいな・・・"
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	オイ、どうしたんだよ?
	まさか、オデをうたがってるんじゃ
	ないだろうな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうだ、ロックマン、
	このあいだの オレの
	さんすうのテストって・・・
	"""
	keyWait
		any = false
	clearMsg
	"なんてんだったっけ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"エッ!?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"0てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"35てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"75てん"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	あぁ、そうだったよな!
	あれは ママにはナイショだぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あー、そういや オレの
	だいこうぶつって なんだっけ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"スキヤキ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"コロッケ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"カツカレー"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうそう、あげたてのカツに
	トロっとカレーがかかってるのが
	サイコーなんだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・でさ! 今までいろんな
	ナビと たたかってきたけど、
	イチバンつよかったナビって、
	"""
	keyWait
		any = false
	clearMsg
	"やっぱ アイツだよな?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"マッチョマンV3\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"キックマンSP\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"デンノウマンZ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	も、もちろん、コイツに
	きまってるじゃないか
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ひっかかったな!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンは、そんなナビと
	たたかったコトなんて
	いちどもないぜ!!
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ブッブー! ハズレだぜ!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンなら こたえられて
	とうぜんの しつもんだった
	はずだぜ?
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	ア、アジーナエリアニ
	イッテモ ロックマンハ
	ジャンクノ シタジキダゾ・・・
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	大きな人のイメージ・・・
	アレは なんだったんだろ?
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナにもどって、
	だいぶつさまにプラグイン
	できるように おねがいしに行こう
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アジーナにもどって
	だいぶつさまに
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"コロッセオにむかおう!!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアにもどって
	ゴミすてばを しらべてみようよ
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに行こう!
	ケンドーマンの いばしょを
	おしえてもらお!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ケンドーマンに
	あいに アッフリクエリアに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんだかわからないけど、
	アジーナエリアに ケイコしに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだよ
	けっこうキツイね・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎの ケイコばしょは
	シャーロエリアだよ・・・
	なんか、つかれてきちゃった
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	やっと、ケイコがおわったね
	ケンドーマンのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんにせよ ごかいがとけて
	よかったね!
	さ、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	めいじんさんは ドコに
	行ったんだろ・・・
	熱斗くん、ココロあたりない?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	もどって、ライオンぞうを
	せいじょうかさせよう!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ、めいじんと
	しょうぶだね!
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	行ってみようよ!
	おまつり、たのしそうだね!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットの
	アッフリクエリアに
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって、ミズガミサマを
	さがしに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このミズガミサマを
	アッフリクエリアに
	もってかえればいいんだよね?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	「
	"""
	printItem
		buffer = 0
		item = 118
	"""
	」 を
	さがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アッフリクに もどろう!
	ミズガミサマを
	しゅうふくしなきゃ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	コールドマンにあいに
	アメロッパエリアに行こう!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	てんねんものって、
	なんのコトだろうね?
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シャーロに行こう!!
	このままだと、トーナメントが
	メチャクチャにされちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、シャーロにもどろ!
	はやくふぶきを とめないと、
	トーナメントどころじゃないよ!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あんなみがってな人、
	ゆるせないね!!
	熱斗くん、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、まさかシャーロに
	むかうつもりなんじゃ・・・
	あんまりムチャしちゃダメだよ
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ライカくんと サーチマンは
	ウラインターネット6だって!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろう!!
	サーチマンにまけてられないよ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、コロッセオに
	むかおう! サーチマン、
	てごわそうだけど、がんばろう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ホテルに行ってみよう!
	ブルースになにがあったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	ブルースをさがしに行こう!
	そう とおくには行ってないよ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ウラインターネットに行こう!
	ブルースをさがそうよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろうよ!
	ブルースがしんぱいだよ!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネット5に
	行こう!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コロッセオにむかおう!
	ブルースと しんけんしょうぶだよ
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
@archive 758114
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 2
		upper = 4
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	msgOpen
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkFlag
		flag = 779
		jumpIfTrue = 29
		jumpIfFalse = continue
	checkFlag
		flag = 778
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 777
		jumpIfTrue = 25
		jumpIfFalse = continue
	checkFlag
		flag = 834
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 835
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 776
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あたらしい、電気屋さんを
	さがそうよ!
	なんだか ウキウキするね!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しばらくこのへんで
	じかんを つぶそうよ
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	checkMultiFlag
		flag = 836
		count = 2
		jumpIfAllSet = 24
		jumpIfNotAllSet = continue
	checkMultiFlag
		flag = 834
		count = 2
		jumpIfAllSet = continue
		jumpIfNotAllSet = 23
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ロールちゃんたちも
	いるみたいだね!
	ステレオに プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちゃんと 2人に
	あいさつした?
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃんたち、
	なにか いいたそうだよ?
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 26
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パパ、ざんねんだね・・・
	気をとりなおして おくの
	ひろばに行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"あの人だかりは なんだろう?"
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 28
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ネットバトル大会、
	おもしろそうだね!!
	さ、かえろっか?
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんだか さわがしいね
	ようすを 見に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いそいで ウチにかえって
	秋原エリアにむかおう!
	みんなが あぶないよ!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 42
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 41
		jumpIfFalse = continue
	checkFlag
		flag = 785
		jumpIfTrue = 44
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 39
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 37
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 36
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう!!
	くろいナビを おうんだ!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4 {
	checkFlag
		flag = 839
		jumpIfTrue = 43
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ひろばに むかおう!!"
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 38
		jumpIfGreater = 38
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょうおんぱを ふせぐなにかを
	さがそう!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4 {
	checkSubArea
		lower = 0
		upper = 1
		jumpIfInRange = continue
		jumpIfOutOfRange = 40
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ひろばにもどろう!"
	keyWait
		any = false
	end
}
script 39 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ロールちゃんが
	あぶないよ!
	でんぱとうの電脳にもどろう!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、でんぱとうに
	プラグインおねがい!!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このチップみたいなの
	なんだろう?
	日暮さんに きいてみようよ
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	今日はもう ウチにかえろうよ
	あしたは 大会だね!
	がんばろう!
	"""
	keyWait
		any = false
	end
}
script 43 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひろばに行く
	べつのみちをさがそう!
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4 {
	msgOpen
	"""
	ロックマンは
	PETの 中にはいない・・・
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	checkFlag
		flag = 791
		jumpIfTrue = 48
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 47
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 46
		jumpIfFalse = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 49
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ひろばに 行こうよ!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タウンエリア3にいる
	はいいろのナビが エントリー
	してくれるんだよね
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ネームエントリーもおわったし、
	よせんに さんかできるね!
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4 {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = continue
		jumpIfOutOfRange = 52
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	3人のいらいも
	クリアしたし、おじさんに
	こえをかけてみよう!!
	"""
	keyWait
		any = false
	end
}
script 49 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たしか、しゅうごうばしょは
	ここだったよね?
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	デンサンドームにむかおうよ!
	ほんせんも がんばろうね!
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	よせんは 3人のいらいを
	クリアすれば いいんだったね
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	3人の いらいもクリアしたし、
	電気街のひろばに もどろう!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はんにんのだした ヒントを
	てがかりに チサオくんを
	さがそう!!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 135
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ひろばに むかおう!!"
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、いよいよデカオくんとの
	バトルだね!
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すうじデータを あつめなきゃ!
	いそごう、熱斗くん!
	"""
	keyWait
		any = false
	end
}
script 135 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たしか、はんにんが
	していしたのは ココだよね・・・
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4 {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、タコヤキ屋さんに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい
	タコヤキきを なおそう!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タコヤキきを なおせるのは
	ヒノケンさんだけみたいだね
	ヒノケンさんをさがそ!
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ファイアマンたちのこと、
	ちょっと気になるけど・・・
	タコヤキ屋さんに もどろ!
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しあいがはじまるね!
	がんばろ!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4 {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、PETのメンテナンスを
	してもらおうよ!
	たしか、ドームのまえだったよね!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいぞうされたフォルダを
	だれかに なおしてもらわないと!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、「"
	printItem
		buffer = 0
		item = 9
	"""
	」 を
	ヒントに パスワードを見つけよう
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	フォルダも なおったし、
	かいじょうに もどろう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そういえば、しあいまで
	まだじかんがあるね
	なにしよっか?
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コマを おじいさんに
	とどけてあげようよ!
	けど、どこに行ったんだろう?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	おとしよりネットバトラーが
	あつまってる 秋原町の
	こうえんに 行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タウンエリアで しけんか・・・
	熱斗くん、あのおじいさんの
	ためにも がんばろうよ
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しんぱいだから、
	ボクらも ようすを見に行こう!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いけない、もうすぐしあいが
	はじまっちゃうよ!
	はやくかいじょうに もどろ!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	会長さんのナビがいるのは
	秋原エリアだったよね!
	行ってみよう
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4 {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	checkFlag
		flag = 1794
		jumpIfTrue = 171
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	うらないなんて 気にしちゃ
	ダメだよ! さ、そとにでて
	じかんをつぶそ!
	"""
	keyWait
		any = false
	end
}
script 171 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきの おねえさんが
	ボクたちの あいてみたいだね
	ちょっと やりにくそう・・・
	"""
	keyWait
		any = false
	end
}
script 172 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょっと さわがしかったけど、
	なにかあったのかな?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、はやくアクアマンを
	さがしに行こうよ! でないと
	インターネットが タイヘンだよ!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって アクアマンの
	あとを おいかけよう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅう子さんを さがそう!
	けど、手がかりがないね・・・
	ダレか しってる人いないかな?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 179
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しゅう子さんは
	電気街1ちょうめだよ!!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アクアマンのところにむかおう!
	プラグインおねがい!!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ごかいが とけてよかったね!
	さ、デンサンドームに行こう!
	"""
	keyWait
		any = false
	end
}
script 179 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このあたりに しゅう子さんが
	いるはずなんだけど・・・
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4 {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ユウコちゃんが
	ドームのそとで まってるよ
	はやく 行ってあげよう!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんに おきゃくさんって
	だれだろうね?
	はやく ウチにかえろう!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4 {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あくりょうナビは たいじしたね!
	ユウコちゃんのパパに
	ほうこくしよう!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あくりょうナビを
	じょうぶつさせなきゃ!
	熱斗くん、ボクをプラグインして!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、ユウコちゃんとの
	しあいだね!
	ドームへ行こう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	もえてるね、熱斗くん!
	そとにでて カラダでも
	うごかそっか!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ガンテツさん、ごうかいな人だね
	さっき たすけてもらったおれい、
	ちゃんといったほうが よくない?
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、タウンエリア3に
	行こう! ガンテツさんを
	すけだちしよう!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう! ガンテツさんのナビが
	あぶないよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう! あんなヤツらを
	のばなしにできないよ!!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ドームに行こう!
	オトコくらべにね!!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4 {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	日暮さんが大会に出ないなんて、
	きっと なにかあったんだよ!
	ヒグレヤに 行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	電脳世界で、ヒグレヤのチラシを
	10まい いじょう くばろう!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ヒグレヤの そうこは
	タウンエリアだったね!
	いそごう、熱斗くん!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4 {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そうこのカギを手にいれて、
	ナンバーマンを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ヒグレヤの ようすが
	きになるね・・・
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ 日暮さんとバトルだね!
	スタジアムへ いそごう!!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく タウンエリアに行って、
	ナンバーマンを たすけよう!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったね
	ヒグレヤに もどる?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	よし、もらったチラシは
	ぜんぶ くばったよ!
	ヒグレヤに もどろう!
	"""
	keyWait
		any = false
	end
}
@archive 758B88
@size 256

script 0 mmbn4 {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkFlag
		flag = 296
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 18
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 14
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"メイルちゃんちに 行こうよ!"
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウチにもどろう!
	なにが あったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア2に行こう!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう!
	パークエリア2に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア2に
	行こうよ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シェロ・カスティロに
	むかおうよ!!
	メイルちゃん まってるよ!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	バトラーズポイントをあつめよう!
	50ポイントたまったら、
	シェロ・カスティロに行こう!!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっそく ひかえしつに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん おつかれ!
	ひかえしつに もどろう!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきのボスって人を さがそう!
	きっと、まだシェロ・カスティロの
	どこかにいるよ
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリアへ行こう!
	リキさんのナビが きになるよ
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すごい みはりのかずだったね
	あの じょうたいのパークエリアを
	とっぱするのは、タイヘンだよ
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	リキさん、もうだいじょうぶかな?
	シェロ・カスティロに、ようすを
	見に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんとの
	オニごっこしょうぶ・・・
	やらなきゃならない みたいだね
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん、このちかくに
	いるのかな? ちょっと
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア1のグライドの
	ところに行こう!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	プラグインおねがい!
	ロールちゃんをさがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんは どこかに
	とじこめられてるかもしれない!
	なにか てがかりはないかな?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア3に
	行こう!
	ロールちゃんを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"それじゃあ おしろに行こっか"
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょうせんじょうって、
	ロールちゃん どうしたんだろ?
	とりあえず 行ってみようよ
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	どうやら ロールちゃん
	ホンキみたいだね・・・
	じゃあ おしろに行こっか・・・
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
}
script 72 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、ウチにかえろうよ!"
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアへ いそごう!
	ウインドマンを とめないと!!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアは大あらしだね
	ともかく、ウインドマンを
	とめるしかないよ
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そろそろ しあいだね!
	ランさんも たぶん
	かいじょうで まってるよ!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たま子さん、メルヒェンひろばで
	なにするつもりだろ?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いっちょキアイいれに
	行こうよ! おししょうさんは
	タウンエリア4に いるんだよね!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで、でしいりを
	ゆるしてもらえそうだね!!
	おししょうさんのトコにもどろ!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ししょうの さけのみともだちが
	パークエリアにいるんだったよね
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、じゅんびができたら
	すぐに イワくだきのしゅぎょうを
	はじめようよ!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅぎょうも おわったし、
	たま子さんの トコロに
	行ってみようよ!!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アイスクリームのやたいに
	プラグインおねがい!!
	メタルマンがまってるよ!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さぁ、おしろに むかおう!
	メタルマンと
	しんけんしょうぶだよ!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	インターネットの
	にぎやかな エリアの
	いりぐちっていえば・・・
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、かいじょビデオを
	さがしに行こう・・・!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、おしろに いそごう!
	このままじゃ
	しっかくになっちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、どうしてたのかな?
	しあいのまえに
	あってみたいね!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、きになるね・・・
	ここの ひろばにいるはずだけど
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんのためにも
	がんばろう!
	めざすは デンサンドーム!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんが きになるね
	ようすを見に行こうよ
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンを さがしに行くよ!
	熱斗くん、プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンに あわなきゃ!
	きっとパークエリアの
	どこかにいる!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんとウッドマン、
	ちゃんと さいかいできたかな?
	シェロ・カスティロに 行こう!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ しあいだね!
	熱斗くん、がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しあいまで
	なにしてようか?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まっててくれよ、ロックマン!
	すぐに行くからな!!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいじょうに 行こう!
	アツキさんも、
	ケンカをやめて きてるはずだよ
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	いそいで ボクをプラグインして!
	2人のケンカを とめないと!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、しあいがはじまるよ!"
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんのパソコンから
	けむりだって!
	いそがなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4 {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	味太くん、なにをするつもりだろ?
	はやくシェロ・カスティロへ
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	クッキングマスター・・・
	ちょっと あやしいかんじだけど、
	パークエリア2へ行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	はやく、パークエリア2へ行こう!
	りょうりの とっくんだよ!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4 {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しょくざいショップの
	てんちょうさんナビを さがそう!
	パークエリアにいるらしいよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シェロ・カスティロへ行こう!
	味太くんとの
	りょうりたいけつだよ!!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さあ、つぎはいよいよ
	味太くんとのネットバトルだね!
	おしろへ いそごう!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで しょくざいについては
	あんしんだね!
	りょうりどうじょうへ もどろう!
	"""
	keyWait
		any = false
	end
}
@archive 759370
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さぁ、くうこうに行こう!"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、どうしたの!?
	アメロッパにもどらなきゃ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん! トーナメントが
	はじまっちゃうよ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このホシにタイヘンなコトが
	おきてるんだよ!
	ANSAにもどろう!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	世界中のインターネットに
	ちょくせつプラグインして
	しゅうふくしよう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アメロッパエリアにいる
	オフィシャルのナビをさがそう!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリアにいる はんにんを
	つかまえよう!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ANSAに行こう!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パパたちのところに
	行かなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、たいせいが
	ととのったら ANSAに
	もどろう!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	ANSAにもどろう!!
	もう じかんがないよ!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく ANSAにもどって
	しょうわくせいの きどうを
	かえよう!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かわった おじいさんだったね
	そうだ、アメロッパンに
	チャレンジしに行かなきゃ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	だ、だれか たよれそうな人、
	いないかな・・・ウッツツ・・・
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	4つのあかしが そろったね・・・
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがしに 行こう・・・
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、4つのあかしを
	さがしに行こう・・・それで・・・
	「のろいにんぎょう」を・・・
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところへ・・・
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクは もうだいじょうぶだよ!
	さぁ、コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こう!
	アメロッパエリアだったよね!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	めがみぞうの電脳に行こう!!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひろいエリアって、どこの
	ことだろう?
	おもいあたるトコロは ない?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	えいゆうの中って、
	ドコだろう・・・?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	めがみぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	えいゆうぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアに行ってみようよ!
	なにか おてつだいできるかも
	しれないよ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なぁ、熱斗!
	トーナメントなんて
	キケンしちまおうぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	・・・おまえ、ホントに
	ロックマンだよな・・・?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	な、なにいってるんだ・・・
	オデは ロックマンだよ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そ、そうなのか・・・"
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"こ、こんどは なんなんだ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	もっかいきくけど、
	おまえ、ホントのホントに
	ロックマンなんだよな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"あ、あたりまえじゃないか!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"どうもあやしいな・・・"
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	オイ、どうしたんだよ?
	まさか、オデをうたがってるんじゃ
	ないだろうな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうだ、ロックマン、
	このあいだの オレの
	さんすうのテストって・・・
	"""
	keyWait
		any = false
	clearMsg
	"なんてんだったっけ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"エッ!?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"0てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"35てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"75てん"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	あぁ、そうだったよな!
	あれは ママにはナイショだぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あー、そういや オレの
	だいこうぶつって なんだっけ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"スキヤキ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"コロッケ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"カツカレー"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうそう、あげたてのカツに
	トロっとカレーがかかってるのが
	サイコーなんだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・でさ! 今までいろんな
	ナビと たたかってきたけど、
	イチバンつよかったナビって、
	"""
	keyWait
		any = false
	clearMsg
	"やっぱ アイツだよな?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"マッチョマンV3\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"キックマンSP\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"デンノウマンZ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	も、もちろん、コイツに
	きまってるじゃないか
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ひっかかったな!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンは、そんなナビと
	たたかったコトなんて
	いちどもないぜ!!
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ブッブー! ハズレだぜ!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンなら こたえられて
	とうぜんの しつもんだった
	はずだぜ?
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	ア、アジーナエリアニ
	イッテモ ロックマンハ
	ジャンクノ シタジキダゾ・・・
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	大きな人のイメージ・・・
	アレは なんだったんだろ?
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナにもどって、
	だいぶつさまにプラグイン
	できるように おねがいしに行こう
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アジーナにもどって
	だいぶつさまに
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"コロッセオにむかおう!!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアにもどって
	ゴミすてばを しらべてみようよ
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに行こう!
	ケンドーマンの いばしょを
	おしえてもらお!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ケンドーマンに
	あいに アッフリクエリアに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんだかわからないけど、
	アジーナエリアに ケイコしに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだよ
	けっこうキツイね・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎの ケイコばしょは
	シャーロエリアだよ・・・
	なんか、つかれてきちゃった
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	やっと、ケイコがおわったね
	ケンドーマンのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんにせよ ごかいがとけて
	よかったね!
	さ、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	めいじんさんは ドコに
	行ったんだろ・・・
	熱斗くん、ココロあたりない?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	もどって、ライオンぞうを
	せいじょうかさせよう!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ、めいじんと
	しょうぶだね!
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	行ってみようよ!
	おまつり、たのしそうだね!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットの
	アッフリクエリアに
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって、ミズガミサマを
	さがしに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このミズガミサマを
	アッフリクエリアに
	もってかえればいいんだよね?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	「
	"""
	printItem
		buffer = 0
		item = 118
	"""
	」 を
	さがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アッフリクに もどろう!
	ミズガミサマを
	しゅうふくしなきゃ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	コールドマンにあいに
	アメロッパエリアに行こう!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	てんねんものって、
	なんのコトだろうね?
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シャーロに行こう!!
	このままだと、トーナメントが
	メチャクチャにされちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、シャーロにもどろ!
	はやくふぶきを とめないと、
	トーナメントどころじゃないよ!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あんなみがってな人、
	ゆるせないね!!
	熱斗くん、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、まさかシャーロに
	むかうつもりなんじゃ・・・
	あんまりムチャしちゃダメだよ
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ライカくんと サーチマンは
	ウラインターネット6だって!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろう!!
	サーチマンにまけてられないよ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、コロッセオに
	むかおう! サーチマン、
	てごわそうだけど、がんばろう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ホテルに行ってみよう!
	ブルースになにがあったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	ブルースをさがしに行こう!
	そう とおくには行ってないよ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ウラインターネットに行こう!
	ブルースをさがそうよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろうよ!
	ブルースがしんぱいだよ!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネット5に
	行こう!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コロッセオにむかおう!
	ブルースと しんけんしょうぶだよ
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
@archive 759F80
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 12
		upper = 12
		jumpIfInRange = 7
		jumpIfOutOfRange = continue
	checkChapter
		lower = 11
		upper = 11
		jumpIfInRange = 6
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 10
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよほんせんが はじまるね!
	がんばろう!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、やったね
	さぁ、ひかえしつにもどろ!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	checkPlaythrough
		lower = 1
		upper = 255
		jumpIfInRange = continue
		jumpIfOutOfRange = 8
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、やったね
	さぁ、ひかえしつにもどろ!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	checkFlag
		flag = 5696
		jumpIfTrue = continue
		jumpIfFalse = 9
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、やったね
	さぁ、ひかえしつにもどろ!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しあいまで じかんがあるし、
	すこしブラブラする?
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はんにんのだした ヒントを
	てがかりに チサオくんを
	さがそう!!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"電気街のひろばに むかおう!!"
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、いよいよデカオくんとの
	バトルだね!
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すうじデータを あつめよう!
	ぜんぶそろえて
	電気街のひろばに むかわなきゃ!
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4 {
	checkFlag
		flag = 1613
		jumpIfTrue = 148
		jumpIfFalse = continue
	checkFlag
		flag = 1612
		jumpIfTrue = 147
		jumpIfFalse = continue
	checkFlag
		flag = 1606
		jumpIfTrue = 145
		jumpIfFalse = continue
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、タコヤキ屋さんに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい
	タコヤキきを なおそう!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タコヤキきを なおせるのは
	ヒノケンさんだけみたいだね
	ヒノケンさんをさがそ!
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ファイアマンたちのこと、
	ちょっと気になるけど・・・
	タコヤキ屋さんに もどろ!
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しあいがはじまるね!
	がんばろ!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 1607
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1608
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1609
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1610
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1611
		jumpIfTrue = continue
		jumpIfFalse = 146
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はっかそうちは
	ぜんぶとれたはず!
	スタジアムにもどろう
	"""
	keyWait
		any = false
	end
}
script 146 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ドームの中にかくされた
	はっかそうちを さがそう!
	そうちはぜんぶで 5つだよ!!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	HKはっかそうちを とめよう!
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 148 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、もうひといきで
	HKはっかそうちが とまるよ!
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4 {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、PETのメンテナンスを
	してもらおうよ!
	たしか、ドームのまえだったよね!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいぞうされたフォルダを
	だれかに なおしてもらわないと!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、「"
	printItem
		buffer = 0
		item = 9
	"""
	」 を
	ヒントに パスワードを見つけよう
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	フォルダも なおったし、
	かいじょうに もどろう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そういえば、しあいまで
	まだじかんがあるね
	なにしよっか?
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コマを おじいさんに
	とどけてあげようよ!
	けど、どこに行ったんだろう?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	おとしよりネットバトラーが
	あつまってる 秋原町の
	こうえんに 行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	タウンエリアで しけんか・・・
	熱斗くん、あのおじいさんの
	ためにも がんばろうよ
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しんぱいだから、
	ボクらも ようすを見に行こう!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いけない、もうすぐしあいが
	はじまっちゃうよ!
	はやくかいじょうに もどろ!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	会長さんのナビがいるのは
	秋原エリアだったよね!
	行ってみよう
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4 {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	checkFlag
		flag = 1794
		jumpIfTrue = 171
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	うらないなんて 気にしちゃ
	ダメだよ! さ、そとにでて
	じかんをつぶそ!
	"""
	keyWait
		any = false
	end
}
script 171 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきの おねえさんが
	ボクたちの あいてみたいだね
	ちょっと やりにくそう・・・
	"""
	keyWait
		any = false
	end
}
script 172 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょっと さわがしかったけど、
	なにかあったのかな?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、はやくアクアマンを
	さがしに行こうよ! でないと
	インターネットが タイヘンだよ!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって アクアマンの
	あとを おいかけよう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅう子さんを さがそう!
	けど、手がかりがないね・・・
	ダレか しってる人いないかな?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しゅう子さんは
	電気街1ちょうめだよ!!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アクアマンのところにむかおう!
	プラグインおねがい!!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ごかいが とけてよかったね!
	さ、デンサンドームに行こう!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4 {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのしあいまで
	けっこう じかんあるね・・・
	どうしようか?
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ユウコちゃんが
	ドームのそとで まってるよ
	はやく 行ってあげよう!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんに おきゃくさんって
	だれだろうね?
	はやく ウチにかえろう!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4 {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あくりょうナビは たいじしたね!
	ユウコちゃんのパパに
	ほうこくしよう!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あくりょうナビを
	じょうぶつさせなきゃ!
	熱斗くん、ボクをプラグインして!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、ユウコちゃんとの
	しあいだね!
	ドームへ行こう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	もえてるね、熱斗くん!
	そとにでて カラダでも
	うごかそっか!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ガンテツさん、ごうかいな人だね
	さっき たすけてもらったおれい、
	ちゃんといったほうが よくない?
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、タウンエリア3に
	行こう! ガンテツさんを
	すけだちしよう!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう! ガンテツさんのナビが
	あぶないよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう! あんなヤツらを
	のばなしにできないよ!!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ドームに行こう!
	オトコくらべにね!!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4 {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	日暮さんが大会に出ないなんて、
	きっと なにかあったんだよ!
	ヒグレヤに 行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	電脳世界で、ヒグレヤのチラシを
	10まい いじょうくばろう!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ヒグレヤの そうこは
	タウンエリアだったね!
	いそごう、熱斗くん!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4 {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そうこのカギを手にいれて、
	ナンバーマンを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ヒグレヤの ようすが
	きになるね・・・
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ 日暮さんとバトルだね!
	デンサンドームへ いそごう!!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく タウンエリアに行って、
	ナンバーマンを たすけよう!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったね
	ヒグレヤに もどる?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	よし、もらったチラシは
	ぜんぶ くばったよ!
	ヒグレヤに もどろう!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しあいがはじまるよ!
	おくのトビラに入って
	スタジアムに行こう!
	"""
	keyWait
		any = false
	end
}
script 231 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ひかえしつに行こう!!
	"""
	keyWait
		any = false
	end
}
@archive 75A820
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkFlag
		flag = 296
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 18
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 14
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"メイルちゃんちに 行こうよ!"
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウチにもどろう!
	なにが あったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア2に行こう!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどろう!
	パークエリア2に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア2に
	行こうよ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シェロ・カスティロに
	むかおうよ!!
	メイルちゃん まってるよ!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	バトラーズポイントをあつめよう!
	50ポイントたまったら、
	シェロ・カスティロに行こう!!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっそく ひかえしつに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん おつかれ!
	ひかえしつに もどろう!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきのボスって人を さがそう!
	きっと、まだシェロ・カスティロの
	どこかにいるよ
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリアへ行こう!
	リキさんのナビが きになるよ
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すごい みはりのかずだったね
	あの じょうたいのパークエリアを
	とっぱするのは、タイヘンだよ
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	リキさん、もうだいじょうぶかな?
	シェロ・カスティロに、ようすを
	見に行こうよ!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんとの
	オニごっこしょうぶ・・・
	やらなきゃならない みたいだね
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん、このちかくに
	いるのかな? ちょっと
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア1のグライドの
	ところに行こう!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	プラグインおねがい!
	ロールちゃんをさがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんは どこかに
	とじこめられてるかもしれない!
	なにか てがかりはないかな?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア3に
	行こう!
	ロールちゃんを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"それじゃあ おしろに行こっか"
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょうせんじょうって、
	ロールちゃん どうしたんだろ?
	とりあえず 行ってみようよ
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	どうやら ロールちゃん
	ホンキみたいだね・・・
	じゃあ おしろに行こっか・・・
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
}
script 72 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、ウチにかえろうよ!"
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアへ いそごう!
	ウインドマンを とめないと!!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアは大あらしだね
	ともかく、ウインドマンを
	とめるしかないよ
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そろそろ しあいだね!
	ランさんも たぶん
	かいじょうで まってるよ!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たま子さん、メルヒェンひろばで
	なにするつもりだろ?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いっちょキアイいれに
	行こうよ! おししょうさんは
	タウンエリア4に いるんだよね!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで、でしいりを
	ゆるしてもらえそうだね!!
	おししょうさんのトコにもどろ!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ししょうの さけのみともだちが
	パークエリアにいるんだったよね
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、じゅんびができたら
	すぐに イワくだきのしゅぎょうを
	はじめようよ!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅぎょうも おわったし、
	たま子さんの トコロに
	行ってみようよ!!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アイスクリームのやたいに
	プラグインおねがい!!
	メタルマンがまってるよ!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さぁ、おしろに むかおう!
	メタルマンと
	しんけんしょうぶだよ!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	インターネットの
	にぎやかな エリアの
	いりぐちっていえば・・・
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、かいじょビデオを
	さがしに行こう・・・!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、おしろに いそごう!
	このままじゃ
	しっかくになっちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、どうしてたのかな?
	しあいのまえに
	あってみたいね!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、きになるね・・・
	電気街に
	ようすを 見にいってみようよ
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんのためにも
	がんばろう!
	スタジアムへ いそごうよ!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんが きになるね
	ようすを見に行こうよ
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンを さがしに行くよ!
	熱斗くん、プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンに あわなきゃ!
	きっとパークエリアの
	どこかにいる!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんとウッドマン、
	ちゃんと さいかいできたかな?
	シェロ・カスティロに 行こう!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ しあいだね!
	熱斗くん、がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しあいまで
	なにしてようか?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まっててくれよ、ロックマン!
	すぐに行くからな!!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいじょうに 行こう!
	アツキさんも、
	ケンカをやめて きてるはずだよ
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	いそいで ボクをプラグインして!
	2人のケンカを とめないと!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、しあいがはじまるよ!"
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんのパソコンから
	けむりだって!
	いそがなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4 {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	味太くん、なにをするつもりだろ?
	はやくシェロ・カスティロへ
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	クッキングマスター・・・
	ちょっと あやしいかんじだけど、
	パークエリア2へ行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	はやく、パークエリア2へ行こう!
	りょうりの とっくんだよ!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4 {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しょくざいショップの
	てんちょうさんナビを さがそう!
	パークエリアにいるらしいよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シェロ・カスティロへ行こう!
	味太くんとの
	りょうりたいけつだよ!!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さあ、つぎはいよいよ
	味太くんとのネットバトルだね!
	おしろへ いそごう!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで しょくざいについては
	あんしんだね!
	りょうりどうじょうへ もどろう!
	"""
	keyWait
		any = false
	end
}
@archive 75B00C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さぁ、くうこうに行こう!"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、どうしたの!?
	アメロッパにもどらなきゃ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん! トーナメントが
	はじまっちゃうよ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このホシにタイヘンなコトが
	おきてるんだよ!
	ANSAにもどろう!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	世界中のインターネットに
	ちょくせつプラグインして
	しゅうふくしよう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アメロッパエリアにいる
	オフィシャルのナビをさがそう!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリアにいる はんにんを
	つかまえよう!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ANSAに行こう!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パパたちのところに
	行かなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、たいせいが
	ととのったら ANSAに
	もどろう!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	ANSAにもどろう!!
	もう じかんがないよ!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく ANSAにもどって
	しょうわくせいの きどうを
	かえよう!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かわった おじいさんだったね
	そうだ、アメロッパンに
	チャレンジしに行かなきゃ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	だ、だれか たよれそうな人、
	いないかな・・・ウッツツ・・・
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	4つのあかしが そろったね・・・
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがしに 行こう・・・
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、4つのあかしを
	さがしに行こう・・・それで・・・
	「のろいにんぎょう」を・・・
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところへ・・・
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクは もうだいじょうぶだよ!
	さぁ、コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こう!
	アメロッパエリアだったよね!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	めがみぞうの電脳に行こう!!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひろいエリアって、どこの
	ことだろう?
	おもいあたるトコロは ない?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	えいゆうの中って、
	ドコだろう・・・?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	めがみぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	えいゆうぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアに行ってみようよ!
	なにか おてつだいできるかも
	しれないよ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なぁ、熱斗!
	トーナメントなんて
	キケンしちまおうぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	・・・おまえ、ホントに
	ロックマンだよな・・・?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	な、なにいってるんだ・・・
	オデは ロックマンだよ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そ、そうなのか・・・"
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"こ、こんどは なんなんだ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	もっかいきくけど、
	おまえ、ホントのホントに
	ロックマンなんだよな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"あ、あたりまえじゃないか!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"どうもあやしいな・・・"
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	オイ、どうしたんだよ?
	まさか、オデをうたがってるんじゃ
	ないだろうな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうだ、ロックマン、
	このあいだの オレの
	さんすうのテストって・・・
	"""
	keyWait
		any = false
	clearMsg
	"なんてんだったっけ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"エッ!?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"0てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"35てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"75てん"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	あぁ、そうだったよな!
	あれは ママにはナイショだぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あー、そういや オレの
	だいこうぶつって なんだっけ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"スキヤキ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"コロッケ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"カツカレー"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうそう、あげたてのカツに
	トロっとカレーがかかってるのが
	サイコーなんだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・でさ! 今までいろんな
	ナビと たたかってきたけど、
	イチバンつよかったナビって、
	"""
	keyWait
		any = false
	clearMsg
	"やっぱ アイツだよな?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"マッチョマンV3\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"キックマンSP\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"デンノウマンZ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	も、もちろん、コイツに
	きまってるじゃないか
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ひっかかったな!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンは、そんなナビと
	たたかったコトなんて
	いちどもないぜ!!
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ブッブー! ハズレだぜ!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンなら こたえられて
	とうぜんの しつもんだった
	はずだぜ?
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	ア、アジーナエリアニ
	イッテモ ロックマンハ
	ジャンクノ シタジキダゾ・・・
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	大きな人のイメージ・・・
	アレは なんだったんだろ?
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナにもどって、
	だいぶつさまにプラグイン
	できるように おねがいしに行こう
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アジーナにもどって
	だいぶつさまに
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"コロッセオにむかおう!!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアにもどって
	ゴミすてばを しらべてみようよ
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに行こう!
	ケンドーマンの いばしょを
	おしえてもらお!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ケンドーマンに
	あいに アッフリクエリアに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんだかわからないけど、
	アジーナエリアに ケイコしに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだよ
	けっこうキツイね・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎの ケイコばしょは
	シャーロエリアだよ・・・
	なんか、つかれてきちゃった
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	やっと、ケイコがおわったね
	ケンドーマンのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんにせよ ごかいがとけて
	よかったね!
	さ、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	めいじんさんは ドコに
	行ったんだろ・・・
	熱斗くん、ココロあたりない?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	もどって、ライオンぞうを
	せいじょうかさせよう!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ、めいじんと
	しょうぶだね!
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	行ってみようよ!
	おまつり、たのしそうだね!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットの
	アッフリクエリアに
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって、ミズガミサマを
	さがしに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このミズガミサマを
	アッフリクエリアに
	もってかえればいいんだよね?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	「
	"""
	printItem
		buffer = 0
		item = 118
	"""
	」 を
	さがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アッフリクに もどろう!
	ミズガミサマを
	しゅうふくしなきゃ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	コールドマンにあいに
	アメロッパエリアに行こう!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	てんねんものって、
	なんのコトだろうね?
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シャーロに行こう!!
	このままだと、トーナメントが
	メチャクチャにされちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、シャーロにもどろ!
	はやくふぶきを とめないと、
	トーナメントどころじゃないよ!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あんなみがってな人、
	ゆるせないね!!
	熱斗くん、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、まさかシャーロに
	むかうつもりなんじゃ・・・
	あんまりムチャしちゃダメだよ
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ライカくんと サーチマンは
	ウラインターネット6だって!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろう!!
	サーチマンにまけてられないよ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、コロッセオに
	むかおう! サーチマン、
	てごわそうだけど、がんばろう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ホテルに行ってみよう!
	ブルースになにがあったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	ブルースをさがしに行こう!
	そう とおくには行ってないよ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ウラインターネットに行こう!
	ブルースをさがそうよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろうよ!
	ブルースがしんぱいだよ!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネット5に
	行こう!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コロッセオにむかおう!
	ブルースと しんけんしょうぶだよ
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
@archive 75BC1C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 25
		upper = 25
		jumpIfInRange = 48
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkFlag
		flag = 1038
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1037
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkItem
		item = 27
		amount = 1
		jumpIfEqual = 15
		jumpIfGreater = 15
		jumpIfLess = continue
	checkFlag
		flag = 1097
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1036
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1096
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1035
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	まちあわせは、いりぐちの
	まえだったよね!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんかようすが おかしいね?
	ちょっと しらべてみようよ
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリア3で なにかが
	あったみたいだね・・・
	ちょっと 見に行ってみる?
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん またせちゃったね
	おこってないかな?
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アイスクリームを かいに行こうよ
	どこで うってるのかな?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃんのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん、げんきだね
	熱斗くん くたびれてない?
	さ、きゅうけつきのやかたに行こ!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん、
	さきに 入っちゃったみたいだね
	ボクたちも 行こう
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	きゅうけつきのやかた か
	ゾクゾクするね!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっき はしっていったの
	メイルちゃん・・・だよね?
	がんばって さきにすすもう!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkFlag
		flag = 1045
		jumpIfTrue = 28
		jumpIfFalse = continue
	checkFlag
		flag = 1044
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	ぬいぐるみロボをとめよう!!
	このままじゃ、みんながあぶない!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	きゅうけつきのやかた に
	むかおう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = continue
		jumpIfOutOfRange = 29
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	まっくらだね・・・
	ぬいぐるみロボを さがして
	プラグインしよう!!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	あのけはいは ただごとじゃない
	はやくもどろう!!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	きゅうけつきのやかた に
	もどろう!!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 42
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	バトラーズポイントをあつめよう!
	50ポイントたまったら、
	ちゅうおうひろばに行こう!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっそく ひかえしつに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	バトラーズポイントが
	50ポイントたまったら
	ここにくれば よかったんだよね
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん おつかれ!
	ひかえしつに もどろう!
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ネットバトルマシンに
	プラグインおねがい!!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 2055
		jumpIfTrue = 55
		jumpIfFalse = continue
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	オペレーターもナビも、
	すこし こわいかんじだったね
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さっきのボスって人を さがそう!
	きっと、まだシェロ・カスティロの
	どこかにいるよ
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリアへ行こう!
	リキさんのナビが きになるよ
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	すごい みはりのかずだったね
	あの じょうたいのパークエリアを
	とっぱするのは、タイヘンだよ
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	リキさん、もうだいじょうぶかな?
	きっと このちかくにいると
	おもうんだけど・・・
	"""
	keyWait
		any = false
	end
}
script 55 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さ、おしろに入ろう!
	リキさんとの しあいかいしだよ!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんとの
	オニごっこしょうぶ・・・
	やらなきゃならない みたいだね
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	メイルちゃん、このちかくに
	いるのかな? ちょっと
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリア1のグライドの
	ところに行こう!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	プラグインおねがい!
	ロールちゃんをさがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ロールちゃんは どこかに
	とじこめられてるかもしれない!
	なにか 手がかりはないかな?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パークエリア3に
	行こう!
	ロールちゃんを たすけなきゃ!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"それじゃあ おしろに行こっか"
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ちょうせんじょうって、
	ロールちゃん どうしたんだろ?
	とりあえず 行ってみようよ
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	どうやら ロールちゃん
	ホンキみたいだね・・・
	じゃあ おしろに行こっか・・・
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
	checkFlag
		flag = 2179
		jumpIfTrue = 71
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひめいは メルヒェンひろばから
	きこえたよ!!
	"""
	keyWait
		any = false
	end
}
script 71 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ランさんを たすけなきゃ!"
	keyWait
		any = false
	end
}
script 72 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、ウチにかえろうよ!"
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアへ いそごう!
	ウインドマンを とめないと!!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パークエリアは大あらしだね
	ともかく、ウインドマンを
	とめるしかないよ
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 76
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そろそろ しあいだね!
	ランさんも たぶん
	かいじょうで まってるよ!
	"""
	keyWait
		any = false
	end
}
script 76 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ランさんがいるよ!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 88
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たま子さん、メルヒェンひろばで
	なにするつもりだろ?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いっちょキアイいれに
	行こうよ! おししょうさんは
	タウンエリア4に いるんだよね!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで、でしいりを
	ゆるしてもらえそうだね!!
	おししょうさんのトコにもどろ!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ししょうの さけのみともだちが
	パークエリアにいるんだったよね
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、じゅんびができたら
	すぐに イワくだきのしゅぎょうを
	はじめようよ!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 89
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しゅぎょうも おわったし、
	たま子さんの トコロに
	行ってみようよ!!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アイスクリームのやたいに
	プラグインおねがい!!
	メタルマンがまってるよ!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さぁ、おしろに むかおう!
	メタルマンと
	しんけんしょうぶだよ!
	"""
	keyWait
		any = false
	end
}
script 88 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たま子さん、ここでなにを
	するつもりなのかな?
	"""
	keyWait
		any = false
	end
}
script 89 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	たま子さんって、たしか
	このあたりにいるって
	いってたよね?
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	インターネットの
	にぎやかな エリアの
	いりぐちっていえば・・・
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、かいじょビデオを
	さがしに行こう・・・!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、おしろに いそごう!
	このままじゃ
	しっかくになっちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、どうしてたのかな?
	しあいのまえに
	あってみたいね!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさん、きになるね・・・
	電気街に
	ようすを 見にいってみようよ
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんのためにも
	がんばろう!
	めざすは デンサンドーム!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんが きになるね
	ようすを 見に行こうよ
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンを さがしに行くよ!
	熱斗くん、プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ウッドマンに あわなきゃ!
	きっとパークエリアの
	どこかにいる!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	サロマさんとウッドマン、
	ちゃんと さいかいできたかな?
	このへんにいるはずだけど・・・
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ しあいだね!
	熱斗くん、がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しあいまで
	なにしてようか?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まっててくれよ、ロックマン!
	すぐに行くからな!!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かいじょうに 行こう!
	アツキさんも、
	ケンカをやめて きてるはずだよ
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	いそいで ボクをプラグインして!
	2人のケンカを とめないと!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さ、しあいがはじまるよ!"
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くんのパソコンから
	けむりだって!
	いそがなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4 {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	味太くん、なにをするつもりだろ?
	ちかくにいるはずだから、
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 121 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、だいじょうぶなの?
	・・・熱斗くんってば!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	クッキングマスター・・・
	ちょっと あやしいかんじだけど、
	パークエリア2へ行ってみよう!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん!
	はやく、パークエリア2へ行こう!
	りょうりの とっくんだよ!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4 {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	しょくざいショップの
	てんちょうさんナビを さがそう!
	パークエリアにいるらしいよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さあ、メルヒェンひろばへ行こう!
	味太くんとの
	りょうりたいけつだよ!!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	さあ、つぎはいよいよ
	味太くんとのネットバトルだね!
	おしろへ いそごう!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	これで しょくざいについては
	あんしんだね!
	りょうりどうじょうへ もどろう!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しあいがはじまるよ!
	おくのエレベーターにのって
	スタジアムに行こう!
	"""
	keyWait
		any = false
	end
}
@archive 75C66C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"さぁ、くうこうに行こう!"
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、どうしたの!?
	アメロッパにもどらなきゃ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん! トーナメントが
	はじまっちゃうよ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このホシにタイヘンなコトが
	おきてるんだよ!
	ANSAにもどろう!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	世界中のインターネットに
	ちょくせつプラグインして
	しゅうふくしよう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アメロッパエリアにいる
	オフィシャルのナビをさがそう!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリアにいる はんにんを
	つかまえよう!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ANSAに行こう!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パパたちのところに
	行かなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、たいせいが
	ととのったら ANSAに
	もどろう!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	ANSAにもどろう!!
	もう じかんがないよ!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく ANSAにもどって
	しょうわくせいの きどうを
	かえよう!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かわった おじいさんだったね
	そうだ、アメロッパンに
	チャレンジしに行かなきゃ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	だ、だれか たよれそうな人、
	いないかな・・・ウッツツ・・・
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	4つのあかしが そろったね・・・
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがしに 行こう・・・
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、4つのあかしを
	さがしに行こう・・・それで・・・
	「のろいにんぎょう」を・・・
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところへ・・・
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクは もうだいじょうぶだよ!
	さぁ、コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こう!
	アメロッパエリアだったよね!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	めがみぞうの電脳に行こう!!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひろいエリアって、どこの
	ことだろう?
	おもいあたるトコロは ない?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	えいゆうの中って、
	ドコだろう・・・?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	めがみぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	えいゆうぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアに行ってみようよ!
	なにか おてつだいできるかも
	しれないよ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なぁ、熱斗!
	トーナメントなんて
	キケンしちまおうぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	・・・おまえ、ホントに
	ロックマンだよな・・・?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	な、なにいってるんだ・・・
	オデは ロックマンだよ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そ、そうなのか・・・"
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"こ、こんどは なんなんだ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	もっかいきくけど、
	おまえ、ホントのホントに
	ロックマンなんだよな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"あ、あたりまえじゃないか!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"どうもあやしいな・・・"
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	オイ、どうしたんだよ?
	まさか、オデをうたがってるんじゃ
	ないだろうな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうだ、ロックマン、
	このあいだの オレの
	さんすうのテストって・・・
	"""
	keyWait
		any = false
	clearMsg
	"なんてんだったっけ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"エッ!?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"0てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"35てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"75てん"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	あぁ、そうだったよな!
	あれは ママにはナイショだぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あー、そういや オレの
	だいこうぶつって なんだっけ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"スキヤキ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"コロッケ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"カツカレー"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうそう、あげたてのカツに
	トロっとカレーがかかってるのが
	サイコーなんだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・でさ! 今までいろんな
	ナビと たたかってきたけど、
	イチバンつよかったナビって、
	"""
	keyWait
		any = false
	clearMsg
	"やっぱ アイツだよな?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"マッチョマンV3\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"キックマンSP\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"デンノウマンZ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	も、もちろん、コイツに
	きまってるじゃないか
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ひっかかったな!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンは、そんなナビと
	たたかったコトなんて
	いちどもないぜ!!
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ブッブー! ハズレだぜ!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンなら こたえられて
	とうぜんの しつもんだった
	はずだぜ?
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	ア、アジーナエリアニ
	イッテモ ロックマンハ
	ジャンクノ シタジキダゾ・・・
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	大きな人のイメージ・・・
	アレは なんだったんだろ?
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナにもどって、
	だいぶつさまにプラグイン
	できるように おねがいしに行こう
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アジーナにもどって
	だいぶつさまに
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"コロッセオにむかおう!!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアにもどって
	ゴミすてばを しらべてみようよ
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに行こう!
	ケンドーマンの いばしょを
	おしえてもらお!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ケンドーマンに
	あいに アッフリクエリアに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんだかわからないけど、
	アジーナエリアに ケイコしに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだよ
	けっこうキツイね・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎの ケイコばしょは
	シャーロエリアだよ・・・
	なんか、つかれてきちゃった
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	やっと、ケイコがおわったね
	ケンドーマンのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんにせよ ごかいがとけて
	よかったね!
	さ、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	めいじんさんは ドコに
	行ったんだろ・・・
	熱斗くん、ココロあたりない?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	もどって、ライオンぞうを
	せいじょうかさせよう!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ、めいじんと
	しょうぶだね!
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	行ってみようよ!
	おまつり、たのしそうだね!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットの
	アッフリクエリアに
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって、ミズガミサマを
	さがしに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このミズガミサマを
	アッフリクエリアに
	もってかえればいいんだよね?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	「
	"""
	printItem
		buffer = 0
		item = 118
	"""
	」 を
	さがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アッフリクに もどろう!
	ミズガミサマを
	しゅうふくしなきゃ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	コールドマンにあいに
	アメロッパエリアに行こう!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	てんねんものって、
	なんのコトだろうね?
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シャーロに行こう!!
	このままだと、トーナメントが
	メチャクチャにされちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、シャーロにもどろ!
	はやくふぶきを とめないと、
	トーナメントどころじゃないよ!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あんなみがってな人、
	ゆるせないね!!
	熱斗くん、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、まさかシャーロに
	むかうつもりなんじゃ・・・
	あんまりムチャしちゃダメだよ
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ライカくんと サーチマンは
	ウラインターネット6だって!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろう!!
	サーチマンにまけてられないよ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、コロッセオに
	むかおう! サーチマン、
	てごわそうだけど、がんばろう!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ホテルに行ってみよう!
	ブルースになにがあったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	ブルースをさがしに行こう!
	そう とおくには行ってないよ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ウラインターネットに行こう!
	ブルースをさがそうよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろうよ!
	ブルースがしんぱいだよ!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネット5に
	行こう!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コロッセオにむかおう!
	ブルースと しんけんしょうぶだよ
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
@archive 75D27C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 35
		upper = 36
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1286
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1285
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1379
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5703
		jumpIfTrue = continue
		jumpIfFalse = 11
	checkFlag
		flag = 5575
		jumpIfTrue = continue
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールだよ
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ネットバトルきょうかいの人に
	あいに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	checkFlag
		flag = 1377
		jumpIfTrue = continue
		jumpIfFalse = 13
	checkFlag
		flag = 1376
		jumpIfTrue = continue
		jumpIfFalse = 13
	checkFlag
		flag = 1375
		jumpIfTrue = continue
		jumpIfFalse = 13
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	そろそろ じかんかな?
	ボンズさんのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じかんまで
	のんびりアメロッパを
	たのしもうよ
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインできそうな
	ところをさがそう!!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	はやくカギデータをさがそう!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、コロッセオに
	むかおう!!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのバトルにそなえて
	ひかえしつにもどろ!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	このホシにタイヘンなコトが
	おきてるんだよ!
	ANSAにもどろう!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	世界中のインターネットに
	ちょくせつプラグインして
	しゅうふくしよう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アメロッパエリアにいる
	オフィシャルのナビをさがそう!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリアにいる はんにんを
	つかまえよう!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"熱斗くん、ANSAに行こう!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、パパたちのところに
	行かなきゃ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、たいせいが
	ととのったら ANSAに
	もどろう!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	ANSAにもどろう!!
	もう じかんがないよ!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	はやく ANSAにもどって
	しょうわくせいの きどうを
	かえよう!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	かわった おじいさんだったね
	そうだ、アメロッパンに
	チャレンジしに行かなきゃ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	だ、だれか たよれそうな人、
	いないかな・・・ウッツツ・・・
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	4つのあかしが そろったね・・・
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがしに 行こう・・・
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、4つのあかしを
	さがしに行こう・・・それで・・・
	「のろいにんぎょう」を・・・
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところへ・・・
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ボクは もうだいじょうぶだよ!
	さぁ、コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こう!
	アメロッパエリアだったよね!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、メールを
	よんでみようよ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	めがみぞうの電脳に行こう!!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ひろいエリアって、どこの
	ことだろう?
	おもいあたるトコロは ない?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	えいゆうの中って、
	ドコだろう・・・?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	めがみぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	じゅんびができたら、
	えいゆうぞうの電脳にもどろう!
	フットボムには まけられないよ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアに行ってみようよ!
	なにか おてつだいできるかも
	しれないよ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なぁ、熱斗!
	トーナメントなんて
	キケンしちまおうぜ!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	・・・おまえ、ホントに
	ロックマンだよな・・・?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	な、なにいってるんだ・・・
	オデは ロックマンだよ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"そ、そうなのか・・・"
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"こ、こんどは なんなんだ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	もっかいきくけど、
	おまえ、ホントのホントに
	ロックマンなんだよな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"あ、あたりまえじゃないか!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"どうもあやしいな・・・"
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	オイ、どうしたんだよ?
	まさか、オデをうたがってるんじゃ
	ないだろうな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうだ、ロックマン、
	このあいだの オレの
	さんすうのテストって・・・
	"""
	keyWait
		any = false
	clearMsg
	"なんてんだったっけ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"エッ!?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"0てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"35てん\n"
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"75てん"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	あぁ、そうだったよな!
	あれは ママにはナイショだぜ!
	"""
	keyWait
		any = false
	clearMsg
	"""
	あー、そういや オレの
	だいこうぶつって なんだっけ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"スキヤキ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"コロッケ\n"
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"カツカレー"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	そうそう、あげたてのカツに
	トロっとカレーがかかってるのが
	サイコーなんだよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・でさ! 今までいろんな
	ナビと たたかってきたけど、
	イチバンつよかったナビって、
	"""
	keyWait
		any = false
	clearMsg
	"やっぱ アイツだよな?"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"マッチョマンV3\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"キックマンSP\n"
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"デンノウマンZ"
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	も、もちろん、コイツに
	きまってるじゃないか
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"ひっかかったな!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンは、そんなナビと
	たたかったコトなんて
	いちどもないぜ!!
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ブッブー! ハズレだぜ!!"
	keyWait
		any = false
	clearMsg
	"""
	ロックマンなら こたえられて
	とうぜんの しつもんだった
	はずだぜ?
	"""
	keyWait
		any = false
	clearMsg
	"しょうたいを あらわせ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"ぐ、もはやここまで・・・!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	オ、オデハ ジャンクマン・・・
	ロックマンノ ボディハ
	オデガ イタダイタ・・・
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"なんだって!!"
	keyWait
		any = false
	clearMsg
	"それじゃ、ホントのロックマンは?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤツノ ココロデータナラ、
	イマゴロ アジーナエリアノ
	ジャンクノ シタジキダ
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"今すぐ たすけに行くぞ!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"・・・ダレガ?"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	おまえに きまってるだろ!
	イヤでも チカラづくで
	オペレートしてやる!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	ヤ、ヤレルモノナラ
	ヤッテミヤガレ
	テイコウ シマクッテヤル
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	やってやるさ!
	アジーナエリアに行くぞ!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"イ、イヤダ!!"
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	うるさい!
	行くっつったら行くんだ!!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	ア、アジーナエリアニ
	イッテモ ロックマンハ
	ジャンクノ シタジキダゾ・・・
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	大きな人のイメージ・・・
	アレは なんだったんだろ?
	さがしてみようよ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	checkSubArea
		lower = 5
		upper = 6
		jumpIfInRange = 137
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナにもどって、
	だいぶつさまにプラグイン
	できるように おねがいしに行こう
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	checkSubArea
		lower = 5
		upper = 6
		jumpIfInRange = 138
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アジーナにもどって
	だいぶつさまに
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"コロッセオにむかおう!!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アジーナエリアにもどって
	ゴミすてばを しらべてみようよ
	"""
	keyWait
		any = false
	end
}
script 137 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	だいぶつさまにプラグイン
	できるように おねがいしに行こう
	"""
	keyWait
		any = false
	end
}
script 138 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、だいぶつさまに
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 146
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに行こう!
	ケンドーマンの いばしょを
	おしえてもらお!
	"""
	keyWait
		any = false
	end
}
script 146 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	せいねんだんの
	だんちょうさんをさがそうよ!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ケンドーマンに
	あいに アッフリクエリアに
	行こうよ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんだかわからないけど、
	アジーナエリアに ケイコしに
	行こうよ
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだよ
	けっこうキツイね・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	つぎの ケイコばしょは
	シャーロエリアだよ・・・
	なんか、つかれてきちゃった
	"""
	keyWait
		any = false
	end
}
script 154 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	もどって、ライオンぞうを
	せいじょうかさせよう!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	やっと、ケイコがおわったね
	ケンドーマンのトコロに
	もどろうよ
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	なんにせよ ごかいがとけて
	よかったね!
	さ、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	めいじんさんは ドコに
	行ったんだろ・・・
	熱斗くん、ココロあたりない?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = continue
		jumpIfOutOfRange = 154
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ライオンぞうを
	せいじょうかさせよう!
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いよいよ、めいじんと
	しょうぶだね!
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 161
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、アッフリクに
	行ってみようよ!
	おまつり、たのしそうだね!
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"ポレポレくんは ドコだろ?"
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットの
	アッフリクエリアに
	行ってみようよ!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	もどって、ミズガミサマを
	さがしに行こうよ!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"この「"
	printItem
		buffer = 0
		item = 127
	"""
	」 を
	アッフリクエリアに
	もってかえればいいんだよね?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	「
	"""
	printItem
		buffer = 0
		item = 118
	"""
	」 を
	さがしに行こう!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = continue
		jumpIfOutOfRange = 167
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ミズガミサマを
	しゅうふくしよう!
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 167 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アッフリクに もどろう!
	ミズガミサマを
	しゅうふくしなきゃ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、いそいで
	コロッセオにむかおう!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 180
		jumpIfGreater = 180
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 179
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	コールドマンにあいに
	アメロッパエリアに行こう!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	てんねんものって、
	なんのコトだろうね?
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = 183
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シャーロに行こう!!
	このままだと、トーナメントが
	メチャクチャにされちゃうよ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = continue
		jumpIfOutOfRange = 182
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アンテナをせいじょうかさせよう!
	プラグインおねがい!
	"""
	keyWait
		any = false
	end
}
script 179 mmbn4 {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = continue
		jumpIfOutOfRange = 182
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ゆきかきする
	どうぐが ひつようだよ!
	どこかにないか、さがしてみよう!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4 {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = continue
		jumpIfOutOfRange = 182
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アンテナを せいじょうかさせよう
	プラグインよろしく!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	あんなみがってな人、
	ゆるせないね!!
	熱斗くん、コロッセオに行こう!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、シャーロにもどろ!
	はやくふぶきを とめないと、
	トーナメントどころじゃないよ!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	シャーロにきたのはいいけど、
	どうすれば、ふぶきを
	とめられるんだろ?
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	アメロッパの まちなみでも
	ながめて キブンをかえようよ
	"""
	keyWait
		any = false
	end
}
script 186 mmbn4 {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = 190
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、まさかシャーロに
	むかうつもりなんじゃ・・・
	あんまりムチャしちゃダメだよ
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ライカくんと サーチマンは
	ウラインターネット6だって!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろう!!
	サーチマンにまけてられないよ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、コロッセオに
	むかおう! サーチマン、
	てごわそうだけど、がんばろう!
	"""
	keyWait
		any = false
	end
}
script 190 mmbn4 {
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 191
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ライカくんは うちゅうセンターが
	なんとかって いってたね・・・
	"""
	keyWait
		any = false
	end
}
script 191 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	ここにライカくんの
	いばしょをしる ヒントが
	あるのかな?
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ホテルに行ってみよう!
	ブルースになにがあったんだろ!?
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、インターネットに
	ブルースをさがしに行こう!
	そう とおくには行ってないよ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	ウラインターネットに行こう!
	ブルースをさがそうよ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネットに
	もどろうよ!
	ブルースがしんぱいだよ!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、ウラインターネット5に
	行こう!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	コロッセオにむかおう!
	ブルースと しんけんしょうぶだよ
	がんばろう!!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、しあいがはじまるよ!
	おくのトビラに入って
	しあいかいじょうに行こう!
	"""
	keyWait
		any = false
	end
}
@archive 75E070
@size 255

script 0 mmbn4 {
	msgOpen
	keyWait
		any = false
	end
}
@archive 75E0BC
@size 255

@archive 75E100
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	2かい おくのへやだったね
	いそいで行こう!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	世界中のインターネットに
	ちょくせつプラグインして
	しゅうふくしよう!!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、
	アメロッパエリアにいる
	オフィシャルのナビをさがそう!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	パークエリアにいる はんにんを
	つかまえよう!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	パパたちは どこだろう!?
	ダレかしっている人は
	いないのかな?
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、おくじょうに
	行こう!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、たいせいが
	ととのったら プラグイン
	おねがい!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	熱斗くん、プラグインおねがい!
	いそいで! じかんがないよ!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	いそいで しょうわくせいの
	きどうを かえなきゃ!!
	"""
	keyWait
		any = false
	end
}
@archive 75E2A8
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 7
		upper = 255
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkChapter
		lower = 6
		upper = 6
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 5
		jumpIfInRange = 1
		jumpIfOutOfRange = continue
	end
}
script 1 mmbn4 {
	checkFlag
		flag = 781
		jumpIfTrue = 2
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あのくろいナビは
	どこに行ったんだ!?
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	ちょくせつ でんぱとうに入るぞ!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4 {
	checkFlag
		flag = 787
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkFlag
		flag = 821
		jumpIfTrue = 10
		jumpIfFalse = continue
	checkFlag
		flag = 819
		jumpIfTrue = 9
		jumpIfFalse = continue
	checkFlag
		flag = 820
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkFlag
		flag = 818
		jumpIfTrue = 6
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ロールをさがすぞ!
	さきを いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 3
	"""
	」 を
	つかまえて、プログラムくんの
	ところに もって行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 8
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	もしかして、ここにも
	「
	"""
	printItem
		buffer = 0
		item = 3
	"""
	」 が
	いるのか・・・?
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いそがないと ロールが
	あぶない!!
	さぁ、さきにすすむぜ!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 3
	"""
	」 を
	つかまえて、プログラムくんの
	ところに もって行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ロール・・・ぶじでいてくれよ!"
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	もう シェードマンじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkFlag
		flag = 1540
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 1554
		jumpIfTrue = 21
		jumpIfFalse = continue
	jump
		target = 15
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	リスにかいてあったヒントって
	ここのコトなのか・・・?
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ひろばに むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	すうじデータを さがしに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	もう シェードマンじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 33
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 32
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤのチラシを、
	10まい いじょうくばるんだ!
	がんばろうぜ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったな
	ヒグレヤに もどるか?
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし、もらったチラシ、
	ぜんぶ くばったな!
	ヒグレヤに もどるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 75E550
@size 255

script 0 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	もう シェードマンじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
@archive 75E5C0
@size 255

script 0 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	もう シェードマンじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
@archive 75E630
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 21
		upper = 255
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1045
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1042
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1041
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ぬいぐるみロボの
	ていしスイッチをさがすんだ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	ちゅうおうひろばに
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ぬいぐるみロボを
	ていしさせるぞ!!
	スイッチはどこだ!?
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	べつの ぬいぐるみロボが
	あばれだしたぞ!!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	この ぬいぐるみロボは
	あんぜんだ!
	プラグアウトするぞ!!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン! はやく
	コイツをていしさせるんだ!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	きゅうけつきのやかた だ!
	いそぐぞ!!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このふんいき、なにがあるんだ?
	けど、こわがってるヒマはない!
	ていしスイッチをさがすぞ!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkChapter
		lower = 77
		upper = 77
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ぬいぐるみロボ ぼうそうじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	ぼうそうしてるのは
	このぬいぐるみじゃないぞ!!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 2192
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 2179
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ぬいぐるみロボ ぼうそうじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 21
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いそぐぜ ロックマン!
	ぼうそうを とめて
	ランさんを たすけるんだ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、また
	ぼうそうするなんて
	おもってもみなかったぜ・・・
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ぬいぐるみロボ ぼうそうじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
@archive 75E84C
@size 255

script 0 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ぬいぐるみロボ ぼうそうじけんの
	えいきょうは ないみたいだな
	"""
	keyWait
		any = false
	end
}
@archive 75E8C0
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 41
		upper = 42
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、リーガルのナビを
	おうんだ!!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、しょうわくせいの
	きどうを かえるぞ!
	このままじゃ このホシは・・・!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、いそげ!
	しょうわくせいの
	きどうをかえるんだ!!
	"""
	keyWait
		any = false
	end
}
@archive 75E97C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 4
		upper = 4
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	checkFlag
		flag = 774
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 6
		jumpIfGreater = 6
		jumpIfLess = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"たしか、「"
	printItem
		buffer = 0
		item = 2
	"""
	」は
	秋原エリア3で
	うってるんだったな
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし ロックマン、
	「
	"""
	printItem
		buffer = 0
		item = 2
	"""
	」を
	パパにわたしに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	checkMultiFlag
		flag = 803
		count = 5
		jumpIfAllSet = 8
		jumpIfNotAllSet = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットは
	かえってきてからにしよう
	さ、そとにでようぜ
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そろそろ まちあわせばしょに
	行ってみようぜ
	パパを またせちゃいけないし!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 2
	"""
	」は
	このエリアで うってるんだよな
	ささっと かっちゃおうぜ!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	みんなを さがすぞ!
	・・・どこだ!?
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 25
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	くろいナビを おうぞ!!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こうなったら、でんぱとうに
	ちょくせつプラグインだ!
	行くぞ!!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 23
		jumpIfGreater = 23
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ちょうおんぱを ふせぐ
	なにかを さがすぞ!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"電気街にもどろう!"
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールが あぶない!
	でんぱとうの電脳にもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	シェードマンが おとした
	このチップ・・・なんだろう?
	日暮さんなら わかるかな?
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	そろそろ プラグアウトしようぜ
	オレちょっと つかれちゃったよ
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 791
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	そこそこにして、
	電気街の ひろばに行くぞ
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリア3にいる
	はいいろのナビが エントリー
	してくれるんだったよな?
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ネームエントリーもおわったし、
	電気街の ひろばにもどるぜ!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 36
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 36
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 36
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	3人のいらいもクリアしたから
	プラグアウトして
	電気街のひろばに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デンサンドームに行こうぜ!
	ほんせんに おくれるワケには
	いかないしな!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よせんなんて、
	サクっとクリアしてやるぜ!
	めざすは ほんせん!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はんにんのだした ヒントを
	てがかりに チサオをさがすぞ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = Lan
	msgOpen
	"電気街の ひろばにむかうぞ!!"
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デカオとのたいけつだぜ!
	じゅんびが できたら、
	かいじょうに もどるぞ!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	すうじデータをもってる
	ナビは どこだ!?
	さがすぞ! ロックマン
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4 {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	あとにして、タコヤキ屋に行こうぜ
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	ビシっと タコヤキきを
	しゅうりしようぜ!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒノケン、どこ行っちゃったんだ?
	もしかしたら、インタ-ネットに
	ファイアマンが いるかもな・・・
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オレたちも タコヤキ屋に
	もどろう
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じゅんびが
	ととのったら すぐにドームに
	むかおう!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4 {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はやく PETのメンテナンスに
	行こうぜ もたもたしてたら
	おわっちゃうぜ?
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	くそっ、フォルダを
	かいぞうされるなんて・・・
	どこかで なおしてもらわないとな
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ヒントは 「"
	printItem
		buffer = 0
		item = 9
	"""
	」 だ
	いそいで パスワードを
	かいどくするぞ!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	フォルダも もどったし、
	あとは おもいっきり
	バトルするだけだぜ!!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
}
script 161 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	あの おじいさんに
	コマを とどけてあげようぜ
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットは あとにして、
	秋原町のこうえんに
	行ってみようぜ
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリアで しけんか・・・
	ま、あの おじいさんの
	ためだし、がんばるかぁ
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、オレたちも
	電気街のひろばに 行こうぜ!!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じかんがないぞ
	じゅんびが できたら
	すぐに かいじょうにもどろう
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	会長のナビは 秋原エリアだな!
	行ってみようぜ!
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4 {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	end
}
script 172 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さっき、ドームのまえが
	さわがしかったけど、
	なにかあったのかな?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アクアマンをさがすんだ!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いそげっ!
	アクアマンの あとをおうぞ!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しゅう子さんを さがさなきゃな
	だれか じょうほうを
	もっている人はいないかな・・・?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、しゅう子さんの
	ところに行くぞ!
	インターネットはあとだ!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アクアマンのところに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットも
	ふっきゅうしたし、
	デンサンドームに むかうか!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4 {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ユウコちゃんが
	ドームのそとで まってるぜ!
	インターネットは あとにするぞ!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オレに おきゃくさんって
	いってたな・・・
	ウチにかえったほうがいいか
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4 {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あくりょうナビは たいじしたな!
	ロックマン、いつでも
	プラグアウトしていいぜ!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	あくりょうナビを
	じょうぶつさせるぞ!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ユウコちゃんとの
	しあいだぜ!
	ドームへ いそぐぞ!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ガンテツさんに さっきの
	おれいを いいに行ったほうが
	いいよな・・・
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	タウンエリア3にむかうぞ!
	ガンテツさんの すけだちだ!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリア3に もどるぞ!
	ガンテツさんの ナビが
	あぶない!!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリア3にもどるぞ!
	あいつらを こらしめなきゃな!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ドームにむかうぞ!
	オトコとオトコのしょうぶが
	まってるぜ!!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4 {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	日暮さんが大会を じたいなんて
	きになるな・・・
	ヒグレヤに行ってみるか!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤのチラシを、
	10まい いじょうくばるんだ!
	がんばろうぜ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤの そうこは
	タウンエリアだったな!
	いそぐぜ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4 {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そうこのカギを手にいれて、
	ナンバーマンを たすけないと!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤは
	どうなったかな・・・
	行ってみるか!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いよいよ 日暮さんとバトルだぜ!
	ロックマン、
	ドームに 行くぜ!!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリアに いそげ!
	ナンバーマンを たすけるんだ!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったな
	ヒグレヤに もどるか?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし、もらったチラシ、
	ぜんぶ くばったな!
	ヒグレヤに もどるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 75F2A0
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkFlag
		flag = 296
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1030
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1027
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkItem
		item = 144
		amount = 1
		jumpIfEqual = 17
		jumpIfGreater = 17
		jumpIfLess = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メイルと2人で インターネットか
	ちょっとテレくさいな・・・
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	チャレンジしにタウンエリアに
	もどるぞ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ママがしんぱいだ!
	ウチにもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そういえば、ママがパソコンが
	なんとかって いってたよな
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	パークエリア2にむかうぞ!
	って、パークエリアってドコだ?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、タウンエリア3に
	もどるぞ! トビラをひらいて
	パークエリアにむかうんだ!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、パークエリア2に
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールがいるのは
	タウンエリア3だったよな
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メイルに ひとこえ
	かけとくかぁ・・・
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkFlag
		flag = 1037
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkItem
		item = 27
		amount = 1
		jumpIfEqual = 25
		jumpIfGreater = 25
		jumpIfLess = continue
	checkFlag
		flag = 1097
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 1036
		jumpIfTrue = 23
		jumpIfFalse = continue
	checkFlag
		flag = 1096
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 21
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はやくシェロ・カスティロに
	むかわないとヤベーぞ!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メイルを ほうっておいちゃ
	まずいよな・・・
	プラグアウトしようぜ!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"パークエリア3に 行ってみるか?"
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	メイルを またせっぱなしだから
	はやいとこもどるぞ
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アイスって どこでうってるんだ?
	電脳世界には・・・ないよな
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"メイルのとこに もどろうぜ"
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	きゅうけつきのやかた に
	むかうかぁ・・・
	・・・ふぅ
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1044
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、すぐにもどるぞ!
	インターネットに行っている
	ヒマはない!!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	きゅうけつきのやかた に
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	きゅうけつきのやかた に
	もどるぞ!!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	バトラーズポイントをあつめるぞ!
	50ポイントたまったら、
	シェロ・カスティロに行こう!!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じゅんびができたら
	ひかえしつにむかうぜ!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はやめにきりあげて、
	シェロ・カスティロで
	マフィアのボスを さがそうぜ!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	なんか いやなかんじがしたな
	ロックマン、
	パークエリアに 行ってみるか
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	パークエリアの かんしは
	げんじゅうだったな
	見つからないように しないと
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	リキさんが きになるな・・・
	シェロ・カスティロに、ようすを
	見に行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オニごっこしょうぶか・・・
	うけてたつしか
	ないみたいだな・・・
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	end
}
script 61 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、パークエリア1の
	グライドのところに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	グライドのはなしじゃ、
	はんにんはパークエリアの
	おくのほうに行ったんだったな!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールを さがす手がかりは
	ないのか・・・?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、パークエリア3に
	むかうぞ!!
	ロールをたすけるんだ!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	と、とりあえず
	プラグアウトして
	おしろにむかうか・・・
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さっきのメール、
	なにが かいてあったんだ?
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ちょうせんじょうなんて
	ぶっそうだな・・・とにかく、
	ロールの ところに行ってみようぜ
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールのヤツ、かなりやる気
	みたいだな・・・とりあえず、
	おしろに行ってみるか・・・
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メルヒェンひろばで
	なにかあったんだ!
	ロックマン、プラグアウトだ!
	"""
	keyWait
		any = false
	end
}
script 72 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はらペコだよ・・・
	はやく ママに
	なにか つくってもらおうぜ!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	パークエリアへ いそぐぜ!
	ウインドマンを とめるんだ!!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	パークエリアは大あらしか・・・
	こうなったら、ウインドマンを
	とめるしかないな
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ランさんも たぶん
	かいじょうだな!
	ロックマン、しあいに行くぜ!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	たま子さん、メルヒェンひろばで
	なにするんだ?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たま子さんの
	おししょうさんに
	あいに行こうぜ!!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	おサケもおツマミも
	よういしたし、
	これで でしいりできるだろ!?
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ししょうの さけのみ
	ともだちが パークエリアに
	いるっていってたな・・・
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、しゅぎょうに
	もどろうぜ!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しゅぎょうが おわったコト、
	たま子さんに ほうこくしようぜ
	プラグアウトするぞ!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たま子さんが
	まってるぜ、プラグアウトして
	メルヒェンひろばに もどろうぜ
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	うぉーっ、なんかもえてきた!
	おしろに 行こうぜ!!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	にぎやかなエリアのいりぐち
	っていえば・・・
	やっぱ、あそこか・・・?
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、かいじょビデオを
	さがすんだ! しんちょうにな!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	いそがないと しあいに
	まにあわない!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	サロマさんに
	あいに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	サロマさん、なにかあったのかな?
	電気街に 行ってみるか
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	デンサンドームへ いそぐぞ!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"サロマさん だいじょうぶかな?"
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	ウッドマンを さがすんだ!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ウッドマンは、パークエリアの
	どこかにいるはずだ!
	きをつけて すすめよ!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	サロマさんとウッドマン、
	さいかいできたかな?
	シェロ・カスティロに行くぜ!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いよいよ しあいだ!
	かいじょうへ いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2480
		jumpIfTrue = 117
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しあいまで
	なにか やることないかな?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まっててくれよ、ロックマン!
	すぐに行くからな!!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	かいじょうに 行くぜ!
	アツキって人も、ケンカやめて
	きてるだろうしな!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あの2人、
	パークエリアでケンカしてるんだ!
	はやく とめないと!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	おしろに 行こう!
	しあいがはじまるぜ!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オレのパソコンから
	けむりだって!?
	いそがないと やばいぜ!!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、秋原エリアへ
	ちょっこうだ!!
	あの 2人を とめるぜ!!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4 {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あの味太ってヤツ、
	なにをするつもりなのかな・・・
	シェロ・カスティロへ いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 121 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	やばい・・・
	やばいことになったぞ・・・
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	クッキングマスターか・・・
	なんか うさんくさいけど、
	パークエリア2へ行ってみるか!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	パークエリア2へ行くぜ!
	りょうりの とっくんだ!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4 {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しょくざいショップの
	てんちょうナビを さがすぜ!
	パークエリアのどこかにいるはず!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メルヒェンひろばへ行くぜ!
	味太との りょうりたいけつだ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いよいよ
	味太とのバトルだ!
	おしろに いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし! しょくざいについては
	これで あんしんだな!
	りょうりどうじょうへ もどるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 75FBD4
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1286
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1379
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1350
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、そろそろ
	しゅっぱつのじかんだ
	ママにあいさつしに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	ほどほどにして
	そろそろ しゅっぱつしようぜ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	checkFlag
		flag = 5703
		jumpIfTrue = continue
		jumpIfFalse = 13
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さっきのメールは
	なんだったんだ?
	よんでみようぜ!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ネットバトルきょうかいの人に
	あいに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	checkFlag
		flag = 1377
		jumpIfTrue = continue
		jumpIfFalse = 15
	checkFlag
		flag = 1376
		jumpIfTrue = continue
		jumpIfFalse = 15
	checkFlag
		flag = 1375
		jumpIfTrue = continue
		jumpIfFalse = 15
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そろそろ じかんかな?
	ボンズさんのトコロに
	もどろうぜ
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットは あとにして、
	アメロッパかんこうしようぜ~
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	checkItem
		item = 34
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	checkItem
		item = 35
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	checkItem
		item = 36
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	checkItem
		item = 37
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし、カギデータがそろったな!
	ロックマン、プラグアウトだ!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	4つのカギデータを
	さがすんだ!!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	ほどほどにして、コロッセオに
	行くぜ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ANSAにもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	世界のインターネットを
	しゅうふくしてまわるぞ!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	アメロッパエリアにいる
	オフィシャルのナビをさがすぞ!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	パークエリアにいる
	はんにんを つかまえるんだ!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"ロックマン、ANSAに行くぞ!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、グズグズしている
	ヒマはない! パパのトコロに
	いそぐぞ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たいせいが
	ととのったら ANSAに
	もどるぞ!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、いそいで
	ANSAにもどるぞ!!
	もう じかんがない!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ANSAにもどって
	しょうわくせいの きどうを
	かえるぞ!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アメロッパンにチャレンジは、
	アメロッパエリアの
	ネットショップのまえだったな!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ
	ダレかたよれる人を さがそう
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	4つのあかしが そろったぜ
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがすぞ!!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	4つのあかしを さがすんだ!
	たしかアメロッパエリアと
	アジーナエリアにあるんだよな!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところに
	もって行くぞ!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、もうへいきそうだな!
	よかったぜ~!
	さ、コロッセオにむかうぞ!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こうぜ!
	たしか、アメロッパエリアだったな
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	メールを よんでみようぜ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	めがみぞうの電脳に行くぞ!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ひろいエリアって どこだ?
	ロックマン、わかるか?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	えいゆうぞうの電脳に
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コロッセオに行くぜ!!
	ネットバトルは こっちの
	ほんぎょう! まけないぜ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アジーナエリアに行ってみようぜ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、だいじょうぶなのか?
	って、おまえ・・・
	ロックマン・・・だよな・・・?
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ジャンクマン! せきにんもって
	しっかりロックマンのとこまで
	行ってもらうぜ!
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマンが見たっていう
	大きな人ってのを
	さがしに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アジーナにもどって
	だいぶつさまにプラグイン
	できるように たのみに行くか!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	だいぶつさまに プラグインしに
	行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"コロッセオにむかおうぜ!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ごみすてばを
	しらべてみてくれ!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ケンドーマンの いばしょを
	ききに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ケンドーマンは
	アッフリクエリアだってさ!
	行ってみようぜ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さいしょのケイコは、
	アジーナエリアだってさ
	がんばれ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだ!
	けっこうキツそうだな・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、つぎは
	シャーロエリアだ!
	がんばれ!!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アッフリクエリアの
	ケンドーマンのところに
	もどるぜ!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しんどい目にあったけど、
	ごかいがとけてよかったぜ
	さ、コロッセオに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	めいじんは ドコに行ったんだ?
	ハ! もしかして・・・
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	ライオンぞうを せいじょうか
	させるんだ!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	じゅんびが できたら
	コロッセオに行くぜ
	めいじんと たいけつだ!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ポレポレを さがそうぜ!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ポレポレが こいっていってたのは
	アッフリクエリアだったっけ?
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 127
	"""
	」 を
	ゲットするぜ! ことしは、
	どのエリアに おちてるのかな?
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	「
	"""
	printItem
		buffer = 0
		item = 127
	"""
	」 を
	アッフリクエリアにもってくぜ!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 118
	"""
	」 は
	アッフリクエリアだったな!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ミズガミサマを
	しゅうふくしに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じかんがない!
	コロッセオにいそぐぞ!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アメロッパエリアにむかうぞ!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	てんねんものって、なんのコトだ?
	ま、いいや、ひとまわりしたら
	プラグアウトするぞ
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	シャーロで なにかが
	おこってるみたいだぞ!!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットを
	してるじかんはない!!
	アンテナをせいじょうかさせるぞ!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ
	コロッセオにむかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ライカのあとを
	おうぞ!! やられっぱなしじゃ
	気がすまないぜ!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、めざすは
	ウラインターネット6だ!
	いそげっ!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ウラインターネットに もどるぞ
	キケンなコトは わかってるけど
	まけるワケにはいかないんだ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	コロッセオにむかうぞ!
	ライカと たいけつだ!!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	炎山のことが気になるな
	ロックマン、ホテルに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ブルースを
	さがすぞ! まだとおくへは
	行っていないはずだ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ウラインターネットに行くぞ!
	ブルースをさがすんだ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = Chaud
	msgOpen
	"""
	ロックマン、
	ウラインターネットにもどるんだ
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = Chaud
	msgOpen
	"""
	ロックマン、
	ウラインターネット5だ!
	まっていろ・・・ブルース
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コロッセオに行こう!
	・・・炎山、しょうぶだぜ!
	"""
	keyWait
		any = false
	end
}
@archive 7604AC
@size 255

script 0 mmbn4 {
	checkSubArea
		lower = 15
		upper = 15
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 14
		upper = 14
		jumpIfInRange = 19
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 13
		upper = 13
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 12
		upper = 12
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 11
		upper = 11
		jumpIfInRange = 16
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 10
		upper = 10
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 8
		upper = 8
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 8
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 7
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 6
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	jump
		target = 27
}
script 6 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 55
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 6
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 3
		upper = 4
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 2
		upper = 2
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	jump
		target = 21
}
script 7 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 52
		jumpIfInRange = 37
		jumpIfOutOfRange = continue
	jump
		target = 22
}
script 8 mmbn4 {
	checkChapter
		lower = 53
		upper = 53
		jumpIfInRange = 39
		jumpIfOutOfRange = continue
	jump
		target = 23
}
script 9 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 65
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 56
		jumpIfInRange = 41
		jumpIfOutOfRange = continue
	jump
		target = 24
}
script 10 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 9
		upper = 9
		jumpIfInRange = 46
		jumpIfOutOfRange = continue
	jump
		target = 25
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	この中にプラグインすると、
	なんだか、気がひきしまるよな!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、ぶつぞうにプラグイン
	できるなんてビックリだぜ!
	バチがあたったら ヤだな・・・
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ここって、なんかのまもりがみ
	じゃないのか?
	いいのかな プラグインしちゃって
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	うちゅうセンターのコンピュータか
	・・・くうきはあるよな? って、
	電脳世界って くうきがあるのか?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	世の中、いろんなところに
	プラグインできるもんだなー
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	世界さいきょうをきめる ぶたい
	なんか、キンチョーするなぁ・・・
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、電脳ライオンなんて
	いないだろうな・・・
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 75
		jumpIfOutOfRange = continue
	jump
		target = 26
}
script 19 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	jump
		target = 28
}
script 20 mmbn4 {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 85
		jumpIfOutOfRange = continue
	jump
		target = 29
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いいステレオは
	おとが ちがうっていうけど、
	プログラムくんが いいんだろうな
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タコヤキきの中か・・・
	ロックマンに ソースのにおいが
	ついちゃいそうだな
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 44
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デンサンバトルトーナメント
	けっせんのち か・・・
	なんだか もえるぜ!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コマの電脳に 入ってると、
	目がまわっちゃいそうだな
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こんな うすっぺらいのに
	プラグインできるのって、
	すごいよな!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このイヌ小屋のおかげで
	わがやの セキュリティは
	バッチリ・・・なのかな
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	電脳世界でも、レンジの中は
	やっぱり あついのかな?
	どう ロックマン?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そうでもないよ!"
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ふるいゲームもいいけど、
	やっぱ、あたらしいゲームきの
	ほうがいいよな!!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、中をちょっといじって
	タダで ジュースをだしたり
	できない?・・・ジョーダンだよ!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 774
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ちゃちゃっと
	「
	"""
	printItem
		buffer = 0
		item = 2
	"""
	」をかいに
	行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"パパに「"
	printItem
		buffer = 0
		item = 2
	"""
	」を
	わたそうぜ
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	プログラムくん、
	なおってよかったな!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	checkFlag
		flag = 837
		jumpIfTrue = continue
		jumpIfFalse = 34
	checkFlag
		flag = 836
		jumpIfTrue = continue
		jumpIfFalse = 34
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	じゃ、グルっと ひとまわりして
	プラグアウトするかぁ
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	2人に こえかけようぜ!
	まさか、こんなところで
	あえるなんてな!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	checkFlag
		flag = 779
		jumpIfTrue = 36
		jumpIfFalse = continue
	checkFlag
		flag = 778
		jumpIfTrue = 45
		jumpIfFalse = continue
	jump
		target = 21
}
script 36 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	秋原エリアにむかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	checkFlag
		flag = 1605
		jumpIfTrue = 38
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = continue
		jumpIfFalse = 38
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、タコヤキきを
	なおすぞ!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4 {
	jump
		target = 22
}
script 39 mmbn4 {
	checkFlag
		flag = 1614
		jumpIfTrue = 23
		jumpIfFalse = continue
	checkFlag
		flag = 1612
		jumpIfTrue = continue
		jumpIfFalse = 23
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	HKはっかそうちを
	とめるんだ!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	checkFlag
		flag = 1731
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 1740
		jumpIfTrue = 42
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	コマを ぼうそうさせている
	ウイルスをたおすんだ!
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ロックマン、プラグアウトするぞ!"
	keyWait
		any = false
	end
}
script 44 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	シティバトルトーナメント
	けっせんのち か・・・
	なんだか もえるぜ!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	な、なんだかようすが
	おかしいぞ!?
	まわりを しらべよう!!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4 {
	checkFlag
		flag = 854
		jumpIfTrue = 48
		jumpIfFalse = continue
	checkFlag
		flag = 853
		jumpIfTrue = 47
		jumpIfFalse = continue
	jump
		target = 25
}
script 47 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	電気屋とたかいトコロ・・・
	ここしかないよな・・・
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	プラグアウトして、
	ひろばにもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 51
		jumpIfFalse = continue
	jump
		target = 27
}
script 51 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 52 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤのチラシを、
	10まい いじょうくばるんだ!
	がんばろうぜ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったな
	ヒグレヤに もどるか?
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし、もらったチラシ、
	ぜんぶ くばったな!
	ヒグレヤに もどるぜ!
	"""
	keyWait
		any = false
	end
}
script 55 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 56
		jumpIfFalse = continue
	jump
		target = 21
}
script 56 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 60 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 61
		jumpIfFalse = continue
	jump
		target = 22
}
script 61 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 65 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 66
		jumpIfFalse = continue
	jump
		target = 24
}
script 66 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 70 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 71
		jumpIfFalse = continue
	jump
		target = 25
}
script 71 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 75 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 76
		jumpIfFalse = continue
	jump
		target = 26
}
script 76 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 80 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 81
		jumpIfFalse = continue
	jump
		target = 28
}
script 81 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 85 mmbn4 {
	checkFlag
		flag = 1986
		jumpIfTrue = 86
		jumpIfFalse = continue
	jump
		target = 29
}
script 86 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 54
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 53
	jump
		target = 52
}
script 90 mmbn4 {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 92
		jumpIfGreater = 92
		jumpIfLess = continue
	checkFlag
		flag = 782
		jumpIfTrue = 91
		jumpIfFalse = continue
	jump
		target = 21
}
script 91 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そういや なにかあったよな
	みみをふさぐ どうぐがさ!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	ロールを たすけに行くぞ!
	"""
	keyWait
		any = false
	end
}
@archive 760B24
@size 255

script 0 mmbn4 {
	checkSubArea
		lower = 15
		upper = 15
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 14
		upper = 14
		jumpIfInRange = 19
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 13
		upper = 13
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 12
		upper = 12
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 11
		upper = 11
		jumpIfInRange = 16
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 10
		upper = 10
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 8
		upper = 8
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 8
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 7
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 6
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	電脳世界でも、レンジの中は
	やっぱり あついのかな?
	どう ロックマン?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そうでもないよ!"
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いいステレオは
	おとが ちがうっていうけど、
	プログラムくんが いいんだろうな
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タコヤキきの中か・・・
	ロックマンに ソースのにおいが
	ついちゃいそうだな
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	checkChapter
		lower = 84
		upper = 84
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	jump
		target = 23
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コマの電脳に 入ってると、
	目がまわっちゃいそうだな
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こんな うすっぺらいのに
	プラグインできるのって、
	すごいよな!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	この中にプラグインすると、
	なんだか、気がひきしまるよな!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、ぶつぞうにプラグイン
	できるなんてビックリだぜ!
	バチがあたったら ヤだな・・・
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ここって、なんかのまもりがみ
	じゃないのか?
	いいのかな プラグインしちゃって
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	うちゅうセンターのコンピュータか
	・・・くうきはあるよな? って、
	電脳世界って くうきがあるのか?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	checkChapter
		lower = 76
		upper = 76
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	jump
		target = 21
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	世界さいきょうをきめる ぶたい
	なんか、キンチョーするなぁ・・・
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、電脳ライオンなんて
	いないだろうな・・・
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4 {
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	jump
		target = 27
}
script 19 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ふるいゲームもいいけど、
	やっぱ、あたらしいゲームきの
	ほうがいいよな!!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、中をちょっといじって
	タダで ジュースをだしたり
	できない?・・・ジョーダンだよ!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	世の中、いろんなところに
	プラグインできるもんだなー
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 44
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デンサンバトルトーナメント
	けっせんのち か・・・
	なんだか もえるぜ!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このイヌ小屋のおかげで
	わがやの セキュリティは
	バッチリ・・・なのかな
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 2372
		jumpIfTrue = 31
		jumpIfFalse = continue
	jump
		target = 23
}
script 31 mmbn4 {
	checkFlag
		flag = 2383
		jumpIfTrue = 32
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	サロマさんが いってた
	メンバーの1人がいるはずだ!!
	さがすぞ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	なんかイヤなかんじだな・・・
	わるい よかんがするぜ
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	checkFlag
		flag = 1030
		jumpIfTrue = 37
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 36
		jumpIfFalse = continue
	jump
		target = 27
}
script 36 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ウチで なにかあったのか!?"
	keyWait
		any = false
	clearMsg
	"""
	ママがしんぱいだ、
	プラグアウトするぞ!
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はんにんが すぐに
	にげていったのは、
	この けいほうきの おかげかな?
	"""
	keyWait
		any = false
	clearMsg
	"""
	そんなコトより、はやく
	はんにんを さがさないとな!!
	"""
	keyWait
		any = false
	end
}
script 39 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オニごっこしょうぶか・・・
	うけてたつしか
	ないみたいだな・・・
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 43
		jumpIfFalse = continue
	checkFlag
		flag = 2123
		jumpIfTrue = 42
		jumpIfFalse = continue
	checkFlag
		flag = 2129
		jumpIfTrue = 39
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 41
		jumpIfFalse = continue
	jump
		target = 21
}
script 41 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールのヤツ、なんのつもりだ?
	とりあえず ちょくせつ
	ハナシを きいてみようぜ
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールのヤツ、
	なんてすばしっこいんだ!
	がんばれ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 43 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	おしろに むかうぜ!!
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	シティバトルトーナメント
	けっせんのち か・・・
	なんだか もえるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 760FF8
@size 255

script 0 mmbn4 {
	checkSubArea
		lower = 15
		upper = 15
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 14
		upper = 14
		jumpIfInRange = 19
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 13
		upper = 13
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 12
		upper = 12
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 11
		upper = 11
		jumpIfInRange = 16
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 10
		upper = 10
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 8
		upper = 8
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 8
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 7
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 6
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	電脳世界でも、レンジの中は
	やっぱり あついのかな?
	どう ロックマン?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そうでもないよ!"
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いいステレオは
	おとが ちがうっていうけど、
	プログラムくんが いいんだろうな
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タコヤキきの中か・・・
	ロックマンに ソースのにおいが
	ついちゃいそうだな
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 44
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デンサンバトルトーナメント
	けっせんのち か・・・
	なんだか もえるぜ!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コマの電脳に 入ってると、
	目がまわっちゃいそうだな
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こんな うすっぺらいのに
	プラグインできるのって、
	すごいよな!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	この中にプラグインすると、
	なんだか、気がひきしまるよな!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、ぶつぞうにプラグイン
	できるなんてビックリだぜ!
	バチがあたったら ヤだな・・・
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ここって、なんかのまもりがみ
	じゃないのか?
	いいのかな プラグインしちゃって
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	うちゅうセンターのコンピュータか
	・・・くうきはあるよな? って、
	電脳世界って くうきがあるのか?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	世の中、いろんなところに
	プラグインできるもんだなー
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	世界さいきょうをきめる ぶたい
	なんか、キンチョーするなぁ・・・
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	checkChapter
		lower = 112
		upper = 112
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	jump
		target = 21
}
script 18 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このイヌ小屋のおかげで
	わがやの セキュリティは
	バッチリ・・・なのかな
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ふるいゲームもいいけど、
	やっぱ、あたらしいゲームきの
	ほうがいいよな!!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、中をちょっといじって
	タダで ジュースをだしたり
	できない?・・・ジョーダンだよ!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まさか、電脳ライオンなんて
	いないだろうな・・・
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 2757
		jumpIfTrue = 31
		jumpIfFalse = continue
	jump
		target = 21
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ライオンのぞうを
	せいじょうかするんだ!!
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	シティバトルトーナメント
	けっせんのち か・・・
	なんだか もえるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 76136C
@size 255

script 0 mmbn4 {
	checkSubArea
		lower = 11
		upper = 11
		jumpIfInRange = 21
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 10
		upper = 10
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 19
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 8
		upper = 8
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 16
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	カードリーダーの電脳かぁ
	ロックマンのじょうほうも
	よみとられてそうだな・・・
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	すいどうの電脳だからって、
	水びたしなワケじゃないんだな
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	けんばいきの電脳か・・・
	やすみの日なんかは
	いそがしそうだな!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	checkChapter
		lower = 80
		upper = 80
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	jump
		target = 22
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ここから きしょうえいせいを
	そうじゅうする でんぱを
	おくるんだな・・・
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	jump
		target = 14
}
script 16 mmbn4 {
	jump
		target = 14
}
script 17 mmbn4 {
	jump
		target = 14
}
script 18 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このぶつぞう、ちかくにいるだけで
	やすらかな キモチになるぜ・・・
	ロックマンも かんじるだろ?
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	jump
		target = 23
}
script 20 mmbn4 {
	jump
		target = 24
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	クッキングマシンか・・・
	いいニオイがただよってきそうだな
	・・・ゴクリ・・・
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こっちじゃ あまーいニオイが
	するけど、電脳世界もそうなのか?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そうとうなものだよ!"
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	めがみぞうか・・・
	なにかごりやくが あると
	いいんだけどな!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	えいゆうぞうの電脳か・・・
	オレたちに ぴったりの電脳だな!
	・・・なんちゃって
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たま子さんに
	オレたちのキアイを
	見せてやろうぜ!!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	うぉーっ、なんかもえてきた!
	おしろに 行こうぜ!!
	"""
	keyWait
		any = false
	end
}
@archive 7615F0
@size 255

script 0 mmbn4 {
	checkSubArea
		lower = 11
		upper = 11
		jumpIfInRange = 21
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 10
		upper = 10
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 19
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 8
		upper = 8
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 16
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	カードリーダーの電脳かぁ
	ロックマンのじょうほうも
	よみとられてそうだな・・・
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	すいどうの電脳だからって、
	水びたしなワケじゃないんだな
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	けんばいきの電脳か・・・
	やすみの日なんかは
	いそがしそうだな!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こっちじゃ あまーいニオイが
	するけど、電脳世界もそうなのか?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"そうとうなものだよ!"
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	checkChapter
		lower = 119
		upper = 119
		jumpIfInRange = 51
		jumpIfOutOfRange = continue
	checkChapter
		lower = 118
		upper = 118
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	jump
		target = 26
}
script 15 mmbn4 {
	checkChapter
		lower = 119
		upper = 119
		jumpIfInRange = 51
		jumpIfOutOfRange = continue
	checkChapter
		lower = 118
		upper = 118
		jumpIfInRange = 46
		jumpIfOutOfRange = continue
	jump
		target = 26
}
script 16 mmbn4 {
	checkChapter
		lower = 119
		upper = 119
		jumpIfInRange = 51
		jumpIfOutOfRange = continue
	checkChapter
		lower = 118
		upper = 118
		jumpIfInRange = 47
		jumpIfOutOfRange = continue
	jump
		target = 26
}
script 17 mmbn4 {
	checkChapter
		lower = 119
		upper = 119
		jumpIfInRange = 51
		jumpIfOutOfRange = continue
	checkChapter
		lower = 118
		upper = 118
		jumpIfInRange = 48
		jumpIfOutOfRange = continue
	jump
		target = 26
}
script 18 mmbn4 {
	checkChapter
		lower = 109
		upper = 109
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	jump
		target = 25
}
script 19 mmbn4 {
	checkChapter
		lower = 104
		upper = 104
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	jump
		target = 23
}
script 20 mmbn4 {
	checkChapter
		lower = 105
		upper = 105
		jumpIfInRange = 36
		jumpIfOutOfRange = continue
	jump
		target = 24
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	クッキングマシンか・・・
	いいニオイがただよってきそうだな
	・・・ゴクリ・・・
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	めがみぞうか・・・
	なにかごりやくが あると
	いいんだけどな!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	えいゆうぞうの電脳か・・・
	オレたちに ぴったりの電脳だな!
	・・・なんちゃって
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	このぶつぞう、ちかくにいるだけで
	やすらかな キモチになるぜ・・・
	ロックマンも かんじるだろ?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"・・・うん"
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ここから きしょうえいせいを
	そうじゅうする でんぱを
	おくるんだな・・・
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	checkFlag
		flag = 5582
		jumpIfTrue = 36
		jumpIfFalse = continue
	jump
		target = 23
}
script 36 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	フットボムたいけつか・・・
	ぜったいまけられないな!
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4 {
	checkFlag
		flag = 2627
		jumpIfTrue = 38
		jumpIfFalse = continue
	jump
		target = 24
}
script 38 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ネットバトラーだいひょうとして、
	フットボムには ぜったい
	まけられないぜ!!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkItem
		item = 124
		amount = 1
		jumpIfEqual = 42
		jumpIfGreater = 42
		jumpIfLess = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 41
		jumpIfFalse = continue
	jump
		target = 25
}
script 41 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマンが 見た
	大きな人っていうのは、
	このダイブツさまじゃないのか?
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	コロッセオにむかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4 {
	checkFlag
		flag = 2929
		jumpIfTrue = 50
		jumpIfFalse = continue
	jump
		target = 49
}
script 46 mmbn4 {
	checkFlag
		flag = 2930
		jumpIfTrue = 50
		jumpIfFalse = continue
	jump
		target = 49
}
script 47 mmbn4 {
	checkFlag
		flag = 2931
		jumpIfTrue = 50
		jumpIfFalse = continue
	jump
		target = 49
}
script 48 mmbn4 {
	checkFlag
		flag = 2932
		jumpIfTrue = 50
		jumpIfFalse = continue
	jump
		target = 49
}
script 49 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	電脳スノーマンを ぜんぶこわして
	たいまつに 火をともすんだ!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	そこは もうだいじょうぶだ!
	べつのアンテナにむかうぞ!
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、コロッセオに
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
@archive 76195C
@size 255

script 0 mmbn4 {
	checkSubArea
		lower = 0
		upper = 15
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkChapter
		lower = 115
		upper = 115
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	jump
		target = 11
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、まよわないように
	気をつけろよ!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ミズガミサマを
	せいじょうかするんだ!
	まようなよ!!
	"""
	keyWait
		any = false
	end
}
@archive 7619FC
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 4
		upper = 4
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4 {
	checkFlag
		flag = 774
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 6
		jumpIfGreater = 6
		jumpIfLess = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"たしか、「"
	printItem
		buffer = 0
		item = 2
	"""
	」は
	秋原エリア3で
	うってるんだったな
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし ロックマン、
	「
	"""
	printItem
		buffer = 0
		item = 2
	"""
	」を
	パパにわたしに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4 {
	checkMultiFlag
		flag = 803
		count = 5
		jumpIfAllSet = 8
		jumpIfNotAllSet = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットは
	かえってきてからにしよう
	さ、そとにでようぜ
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そろそろ まちあわせばしょに
	行ってみようぜ
	パパを またせちゃいけないし!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 2
	"""
	」は
	このエリアで うってるんだよな
	ささっと かっちゃおうぜ!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	みんなを さがすぞ!
	・・・どこだ!?
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 25
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	くろいナビを おうぞ!!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こうなったら、でんぱとうに
	ちょくせつプラグインだ!
	行くぞ!!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 23
		jumpIfGreater = 23
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ちょうおんぱを ふせぐ
	なにかを さがすぞ!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"電気街にもどろう!"
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールが あぶない!
	でんぱとうの電脳にもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	シェードマンが おとした
	このチップ・・・なんだろう?
	日暮さんなら わかるかな?
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	そろそろ プラグアウトしようぜ
	オレちょっと つかれちゃったよ
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 791
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	そこそこにして、
	電気街の ひろばに行くぞ
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリア3にいる
	はいいろのナビが エントリー
	してくれるんだったよな?
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ネームエントリーもおわったし、
	電気街の ひろばにもどるぜ!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 36
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 36
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 36
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	3人のいらいもクリアしたから
	プラグアウトして
	電気街のひろばに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デンサンドームに行こうぜ!
	ほんせんに おくれるワケには
	いかないしな!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よせんなんて、
	サクっとクリアしてやるぜ!
	めざすは ほんせん!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はんにんのだした ヒントを
	てがかりに チサオをさがすぞ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = Lan
	msgOpen
	"電気街の ひろばにむかうぞ!!"
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	デカオとのたいけつだぜ!
	じゅんびが できたら、
	かいじょうに もどるぞ!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	すうじデータをもってる
	ナビは どこだ!?
	さがすぞ! ロックマン
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4 {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	あとにして、タコヤキ屋に行こうぜ
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	ビシっと タコヤキきを
	しゅうりしようぜ!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒノケン、どこ行っちゃったんだ?
	もしかしたら、インタ-ネットに
	ファイアマンが いるかもな・・・
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オレたちも タコヤキ屋に
	もどろう
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じゅんびが
	ととのったら すぐにドームに
	むかおう!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4 {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はやく PETのメンテナンスに
	行こうぜ もたもたしてたら
	おわっちゃうぜ?
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	くそっ、フォルダを
	かいぞうされるなんて・・・
	どこかで なおしてもらわないとな
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"ヒントは 「"
	printItem
		buffer = 0
		item = 9
	"""
	」 だ
	いそいで パスワードを
	かいどくするぞ!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	フォルダも もどったし、
	あとは おもいっきり
	バトルするだけだぜ!!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
}
script 161 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	あの おじいさんに
	コマを とどけてあげようぜ
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットは あとにして、
	秋原町のこうえんに
	行ってみようぜ
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリアで しけんか・・・
	ま、あの おじいさんの
	ためだし、がんばるかぁ
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、オレたちも
	電気街のひろばに 行こうぜ!!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じかんがないぞ
	じゅんびが できたら
	すぐに かいじょうにもどろう
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	会長のナビ、
	この秋原エリアのどこかに
	いるんだよな?
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4 {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	end
}
script 172 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	わっ! インターネットが
	水ぼつしてるじゃないか!
	ロックマン、プラグアウトだ!
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アクアマンをさがすんだ!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いそげっ!
	アクアマンの あとをおうぞ!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しゅう子さんを さがさなきゃな
	だれか じょうほうを
	もっている人はいないかな・・・?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、しゅう子さんの
	ところに行くぞ!
	インターネットはあとだ!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アクアマンのところに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットも
	ふっきゅうしたし、
	デンサンドームに むかうか!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4 {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ユウコちゃんが
	ドームのそとで まってるぜ!
	インターネットは あとにするぞ!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オレに おきゃくさんって
	いってたな・・・
	ウチにかえったほうがいいか
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4 {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あくりょうナビは たいじしたな!
	ロックマン、いつでも
	プラグアウトしていいぜ!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	あくりょうナビを
	じょうぶつさせるぞ!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ユウコちゃんとの
	しあいだぜ!
	ドームへ いそぐぞ!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ガンテツさんに さっきの
	おれいを いいに行ったほうが
	いいよな・・・
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	タウンエリア3にむかうぞ!
	ガンテツさんの すけだちだ!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリア3に もどるぞ!
	ガンテツさんの ナビが
	あぶない!!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリア3にもどるぞ!
	あいつらを こらしめなきゃな!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ドームにむかうぞ!
	オトコとオトコのしょうぶが
	まってるぜ!!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4 {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	日暮さんが大会を じたいなんて
	きになるな・・・
	ヒグレヤに行ってみるか!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4 {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤのチラシを、
	10まい いじょうくばるんだ!
	がんばろうぜ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤの そうこは
	タウンエリアだったな!
	いそぐぜ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4 {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そうこのカギを手にいれて、
	ナンバーマンを たすけないと!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ヒグレヤは
	どうなったかな・・・
	行ってみるか!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いよいよ 日暮さんとバトルだぜ!
	ロックマン、
	ドームに 行くぜ!!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	タウンエリアに いそげ!
	ナンバーマンを たすけるんだ!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まだチラシは のこってるけど、
	いわれてたぶんは くばったな
	ヒグレヤに もどるか?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし、もらったチラシ、
	ぜんぶ くばったな!
	ヒグレヤに もどるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 762320
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4 {
	checkFlag
		flag = 296
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1030
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1027
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkItem
		item = 144
		amount = 1
		jumpIfEqual = 17
		jumpIfGreater = 17
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メイルと2人で インターネットか
	ちょっとテレくさいな・・・
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	チャレンジしにタウンエリアに
	もどるぞ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ママがしんぱいだ!
	ウチにもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そういえば、ママがパソコンが
	なんとかって いってたよな
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	パークエリア2にむかうぞ!
	って、パークエリアってドコだ?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、タウンエリア3に
	もどるぞ! トビラをひらいて
	パークエリアにむかうんだ!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、パークエリア2に
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールがいるのは
	タウンエリア3だったよな
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4 {
	checkFlag
		flag = 1037
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkItem
		item = 27
		amount = 1
		jumpIfEqual = 25
		jumpIfGreater = 25
		jumpIfLess = continue
	checkFlag
		flag = 1097
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 1036
		jumpIfTrue = 23
		jumpIfFalse = continue
	checkFlag
		flag = 1096
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 1035
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はやくシェロ・カスティロに
	むかわないとヤベーぞ!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メイルを ほうっておいちゃ
	まずいよな・・・
	プラグアウトしようぜ!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"パークエリア3に 行ってみるか?"
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	メイルを またせっぱなしだから
	はやいとこもどるぞ
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アイスって どこでうってるんだ?
	電脳世界には・・・ないよな
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"メイルのとこに もどろうぜ"
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	きゅうけつきのやかた に
	むかうかぁ・・・
	・・・ふぅ
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1044
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、すぐにもどるぞ!
	インターネットに行っている
	ヒマはない!!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	きゅうけつきのやかた に
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	きゅうけつきのやかた に
	もどるぞ!!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4 {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	バトラーズポイントをあつめるぞ!
	50ポイントたまったら、
	シェロ・カスティロに行こう!!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じゅんびができたら
	ひかえしつにむかうぜ!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4 {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はやめにきりあげて、
	シェロ・カスティロで
	マフィアのボスを さがそうぜ!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	なんか いやなかんじがしたな
	ロックマン、
	パークエリアに 行ってみるか
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	パークエリアの かんしは
	げんじゅうだったな
	見つからないように しないと
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	リキさんが きになるな・・・
	シェロ・カスティロに、ようすを
	見に行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オニごっこしょうぶか・・・
	うけてたつしか
	ないみたいだな・・・
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4 {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	end
}
script 61 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、パークエリア1の
	グライドのところに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	グライドのはなしじゃ、
	はんにんはパークエリアの
	おくのほうに行ったんだったな!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールを さがす手がかりは
	ないのか・・・?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、パークエリア3に
	むかうぞ!!
	ロールをたすけるんだ!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	と、とりあえず
	プラグアウトして
	おしろにむかうか・・・
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4 {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さっきのメール、
	なにが かいてあったんだ?
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4 {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ちょうせんじょうなんて
	ぶっそうだな・・・とにかく、
	ロールの ところに行ってみようぜ
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールのヤツ、かなりやる気
	みたいだな・・・とりあえず、
	おしろに行ってみるか・・・
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4 {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メルヒェンひろばで
	なにかあったんだ!
	ロックマン、プラグアウトだ!
	"""
	keyWait
		any = false
	end
}
script 72 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	はらペコだよ・・・
	はやく ママに
	なにか つくってもらおうぜ!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	パークエリアへ いそぐぜ!
	ウインドマンを とめるんだ!!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	パークエリアは大あらしか・・・
	こうなったら、ウインドマンを
	とめるしかないな
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ランさんも たぶん
	かいじょうだな!
	ロックマン、しあいに行くぜ!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4 {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	たま子さん、メルヒェンひろばで
	なにするんだ?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たま子さんの
	おししょうさんに
	あいに行こうぜ!!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4 {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	おサケもおツマミも
	よういしたし、
	これで でしいりできるだろ!?
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ししょうの さけのみ
	ともだちが パークエリアに
	いるっていってたな・・・
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、しゅぎょうに
	もどろうぜ!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しゅぎょうが おわったコト、
	たま子さんに ほうこくしようぜ
	プラグアウトするぞ!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たま子さんが
	まってるぜ、プラグアウトして
	メルヒェンひろばに もどろうぜ
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	うぉーっ、なんかもえてきた!
	おしろに 行こうぜ!!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4 {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	にぎやかなエリアのいりぐち
	っていえば・・・
	やっぱ、あそこか・・・?
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4 {
	checkItem
		item = 97
		amount = 1
		jumpIfEqual = 94
		jumpIfGreater = 94
		jumpIfLess = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 93
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、かいじょビデオを
	さがすんだ! しんちょうにな!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	いそがないと しあいに
	まにあわない!!
	"""
	keyWait
		any = false
	end
}
script 93 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	かいじょビデオのうちの
	1本は このエリアにあるって
	ビデオマンがいってたよな・・・
	"""
	keyWait
		any = false
	end
}
script 94 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	のこりのビデオを さがすぞ!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	サロマさんに
	あいに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	サロマさん、なにかあったのかな?
	電気街に 行ってみるか
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	デンサンドームへ いそぐぞ!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"サロマさん だいじょうぶかな?"
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	ウッドマンを さがすんだ!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ウッドマンは、パークエリアの
	どこかにいるはずだ!
	きをつけて すすめよ!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	サロマさんとウッドマン、
	さいかいできたかな?
	シェロ・カスティロに行くぜ!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いよいよ しあいだ!
	かいじょうへ いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2480
		jumpIfTrue = 117
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しあいまで
	なにか やることないかな?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	まっててくれよ、ロックマン!
	すぐに行くからな!!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	かいじょうに 行くぜ!
	アツキって人も、ケンカやめて
	きてるだろうしな!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あの2人、
	パークエリアでケンカしてるんだ!
	はやく とめないと!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	おしろに 行こう!
	しあいがはじまるぜ!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	オレのパソコンから
	けむりだって!?
	いそがないと やばいぜ!!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しょうかバスターで、
	火をけしつつ すすむぜ!
	あの 2人を とめるんだ!!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4 {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	あの味太ってヤツ、
	なにをするつもりなのかな・・・
	シェロ・カスティロへ いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 121 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	やばい・・・
	やばいことになったぞ・・・
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	クッキングマスターか・・・
	なんか うさんくさいけど、
	パークエリア2へ行ってみるか!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	パークエリア2へ行くぜ!
	りょうりの とっくんだ!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4 {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しょくざいショップの
	てんちょうナビを さがすぜ!
	パークエリアのどこかにいるはず!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	メルヒェンひろばへ行くぜ!
	味太との りょうりたいけつだ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	いよいよ
	味太とのバトルだ!
	おしろに いそぐぜ!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	よし! しょくざいについては
	これで あんしんだな!
	りょうりどうじょうへ もどるぜ!
	"""
	keyWait
		any = false
	end
}
@archive 762C80
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4 {
	checkFlag
		flag = 1288
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1379
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1350
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、そろそろ
	しゅっぱつのじかんだ
	ママにあいさつしに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	ほどほどにして
	そろそろ しゅっぱつしようぜ!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4 {
	checkFlag
		flag = 5703
		jumpIfTrue = continue
		jumpIfFalse = 13
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さっきのメールは
	なんだったんだ?
	よんでみようぜ!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ネットバトルきょうかいの人に
	あいに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4 {
	checkFlag
		flag = 1377
		jumpIfTrue = continue
		jumpIfFalse = 15
	checkFlag
		flag = 1376
		jumpIfTrue = continue
		jumpIfFalse = 15
	checkFlag
		flag = 1375
		jumpIfTrue = continue
		jumpIfFalse = 15
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	そろそろ じかんかな?
	ボンズさんのトコロに
	もどろうぜ
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	インターネットは あとにして、
	アメロッパかんこうしようぜ~
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットは
	ほどほどにして、コロッセオに
	行くぜ!!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ANSAにもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	世界のインターネットを
	しゅうふくしてまわるぞ!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	アメロッパエリアにいる
	オフィシャルのナビをさがすぞ!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	パークエリアにいる
	はんにんを つかまえるんだ!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"ロックマン、ANSAに行くぞ!"
	keyWait
		any = false
	end
}
script 31 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、グズグズしている
	ヒマはない! パパのトコロに
	いそぐぞ!!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、たいせいが
	ととのったら ANSAに
	もどるぞ!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、いそいで
	ANSAにもどるぞ!!
	もう じかんがない!!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ANSAにもどって
	しょうわくせいの きどうを
	かえるぞ!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4 {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アメロッパンにチャレンジは、
	アメロッパエリアの
	ネットショップのまえだったな!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ
	ダレかたよれる人を さがそう
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4 {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	4つのあかしが そろったぜ
	「
	"""
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	さがすぞ!!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	4つのあかしを さがすんだ!
	たしかアメロッパエリアと
	アジーナエリアにあるんだよな!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 120
	"""
	」 を
	サンダーマンのところに
	もって行くぞ!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、もうへいきそうだな!
	よかったぜ~!
	さ、コロッセオにむかうぞ!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4 {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 98
	"""
	」 を
	ゲットしに行こうぜ!
	たしか、アメロッパエリアだったな
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4 {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	メールを よんでみようぜ!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	めがみぞうの電脳に行くぞ!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ひろいエリアって どこだ?
	ロックマン、わかるか?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	えいゆうぞうの電脳に
	むかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コロッセオに行くぜ!!
	ネットバトルは こっちの
	ほんぎょう! まけないぜ!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4 {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アジーナエリアに行ってみようぜ!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、だいじょうぶなのか?
	って、おまえ・・・
	ロックマン・・・だよな・・・?
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ジャンクマン! せきにんもって
	しっかりロックマンのとこまで
	行ってもらうぜ!
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマンが見たっていう
	大きな人ってのを
	さがしに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アジーナにもどって
	だいぶつさまにプラグイン
	できるように たのみに行くか!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	だいぶつさまに プラグインしに
	行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"コロッセオにむかおうぜ!"
	keyWait
		any = false
	end
}
script 136 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ごみすてばを
	しらべてみてくれ!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4 {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ケンドーマンの いばしょを
	ききに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ケンドーマンは
	アッフリクエリアだってさ!
	行ってみようぜ!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	さいしょのケイコは、
	アジーナエリアだってさ
	がんばれ、ロックマン!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	つぎのケイコばしょは
	アメロッパエリアだ!
	けっこうキツそうだな・・・
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、つぎは
	シャーロエリアだ!
	がんばれ!!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	アッフリクエリアの
	ケンドーマンのところに
	もどるぜ!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	しんどい目にあったけど、
	ごかいがとけてよかったぜ
	さ、コロッセオに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	めいじんは ドコに行ったんだ?
	ハ! もしかして・・・
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	ライオンぞうを せいじょうか
	させるんだ!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	じゅんびが できたら
	コロッセオに行くぜ
	めいじんと たいけつだ!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4 {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ポレポレを さがそうぜ!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ポレポレが こいっていってたのは
	アッフリクエリアだったっけ?
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 127
	"""
	」 を
	ゲットするぜ! ことしは、
	どのエリアに おちてるのかな?
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	「
	"""
	printItem
		buffer = 0
		item = 127
	"""
	」 を
	アッフリクエリアにもってくぜ!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"「"
	printItem
		buffer = 0
		item = 118
	"""
	」 は
	アッフリクエリアだったな!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ミズガミサマを
	しゅうふくしに行くぞ!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、じかんがない!
	コロッセオにいそぐぞ!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4 {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	アメロッパエリアにむかうぞ!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	てんねんものって、なんのコトだ?
	ま、いいや、ひとまわりしたら
	プラグアウトするぞ
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ!
	シャーロで なにかが
	おこってるみたいだぞ!!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、インターネットを
	してるじかんはない!!
	アンテナをせいじょうかさせるぞ!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトだ
	コロッセオにむかうぞ!!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4 {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ライカのあとを
	おうぞ!! やられっぱなしじゃ
	気がすまないぜ!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、めざすは
	ウラインターネット6だ!
	いそげっ!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ウラインターネットに もどるぞ
	キケンなコトは わかってるけど
	まけるワケにはいかないんだ!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	コロッセオにむかうぞ!
	ライカと たいけつだ!!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4 {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	炎山のことが気になるな
	ロックマン、ホテルに行こうぜ!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、ブルースを
	さがすぞ! まだとおくへは
	行っていないはずだ!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ウラインターネットに行くぞ!
	ブルースをさがすんだ!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4 {
	mugshotShow
		mugshot = Chaud
	msgOpen
	"""
	ロックマン、
	ウラインターネットにもどるんだ
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4 {
	mugshotShow
		mugshot = Chaud
	msgOpen
	"""
	ロックマン、
	ウラインターネット5だ!
	まっていろ・・・ブルース
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	コロッセオに行こう!
	・・・炎山、しょうぶだぜ!
	"""
	keyWait
		any = false
	end
}
@archive 76351C
@size 255

script 0 mmbn4 {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
}
script 20 mmbn4 {
	checkFlag
		flag = 788
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 25
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン!
	くろいナビを おうぞ!!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	こうなったら、でんぱとうに
	ちょくせつプラグインだ!
	行くぞ!!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4 {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 23
		jumpIfGreater = 23
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、プラグアウトして
	ちょうおんぱを ふせぐ
	なにかを さがすぞ!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"電気街にもどろう!"
	keyWait
		any = false
	end
}
script 24 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロールが あぶない!
	でんぱとうの電脳にもどるぞ!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	シェードマンが おとした
	このチップ・・・なんだろう?
	日暮さんなら わかるかな?
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4 {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	ロックマン、
	そろそろ プラグアウトしようぜ
	オレちょっと つかれちゃったよ
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4 {
	checkFlag
		flag = 791
		jumpIfTrue = 33
		jumpIfFalse = continue
}