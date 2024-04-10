extends Node

var vaenlaseElud = 100
var salveSuurus = 5
var skoor = 0
var tabamisprots = 0.0
var laskudeArv = 0

func _ready():
	$"Zalto/gameover".visible = false
	pass

func _process(float):
	$"Zalto/elud".text= "Elud " +str(vaenlaseElud)
	$"Zalto/padrunid".text= "padrunid " + str(salveSuurus)
	if Input.is_action_just_pressed("shoot"):
		tulistamine()

	if Input.is_action_just_pressed("R"):
		laadimine()

func tulistamine():
	if salveSuurus > 0:
		$Zalto/tegevused.text = "pihtas"
		print("Vaenlase elud:", vaenlaseElud)
		print("Hetke damage:", randi_range(1, 8)) 
		print("Salves olevate padrunite arv:", salveSuurus)
		

		salveSuurus -= 1
		laskudeArv += 1
		var pihtas = bool(randi() % 2)
		if pihtas:
			vaenlaseElud -= randi_range(8, 12)
			skoor += 1
			print("Tabasid vaenlast!")
			$Zalto/tegevused.text = "pihtas"
		else:
			print("Mööda lastud!")
			$Zalto/tegevused.text = "möödas"
	else:
		print("Tegevus: laetakse (vajuta R)")
		$Zalto/tegevused.text = "reload"

	if vaenlaseElud <= 0:
		mängLäbi()

func laadimine():
	salveSuurus = 5

func mängLäbi():
	$"Zalto/gameover".visible= true
	print("Mäng läbi!")
	print("Skoor:", skoor)
	$"Zalto/skoor".text = "skoor " + str(skoor)
	print("Mitu lasku lasti:", laskudeArv)
	if laskudeArv > 0:
		tabamisprots = float(skoor) / float(laskudeArv) * 100.0
		print("Tabamisprotsent:", tabamisprots, "%")
	else:
		print("Tabamisprotsent: 0%")
	get_tree().paused= true




