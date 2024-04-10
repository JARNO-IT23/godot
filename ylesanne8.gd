extends Node2D

var kasutaja_valik = ""
var kasutaja_punktid = 0
var arvuti_skoor = 0
var mängu_loppenud = false

func _on_kivi_pressed():
	$"kasutaja valik".text = "KIVI"
	game("kivi")


func _on_paber_pressed():
	$"kasutaja valik".text = "PABER"
	game("paber")
func _on_käärid_pressed():
	$"kasutaja valik".text = "KÄÄRID"
	game("käärid")
func _on_uus_mäng_pressed():
	pass
	

func game(valik):
	var valikud = ["Kivi", "Paber", "Käärid"]
	var arvutivalik = valikud[randi() % valikud.size()]
	$"arvuti_valik".text = arvutivalik
	print(arvutivalik) 
	if arvutivalik == valik:
		$tulemus.text = "viik"
	elif valik == "kivi" and arvutivalik == "paber" : 
		$tulemus.text = "arvuti võitis"
		arvuti_skoor+=1
	elif valik == "kivi" and arvutivalik == "käärid" : 
		$tulemus.text = "kasutaja võitis"
		kasutaja_punktid+=1 
	elif valik == "paber" and arvutivalik == "kivi" : 
		$tulemus.text = "kasutaja võitis"
		kasutaja_punktid+=1 
	elif valik == "paber" and arvutivalik == "käärid" : 
		$tulemus.text = "arvuti võitis"
		arvuti_skoor+=1 
	elif valik == "käärid" and arvutivalik == "paber" : 
		$tulemus.text = "kasutaja võitis"
		kasutaja_punktid+=1 
	elif valik == "käärid" and arvutivalik == "kivi" : 
		$tulemus.text = "arvuti võitis"
		arvuti_skoor+=1  
	
	






func _ready():
	pass



