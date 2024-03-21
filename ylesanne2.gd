extends Node

func _ready():
	var raha := 50
	var toote_hind := 30

	if raha >= toote_hind:
		print("Mängija saab toote osta.")
	else:
		var puudu := toote_hind - raha
		print("Mängijal puudub", puudu, "raha, et toodet osta.")

	var külg1 := 5
	var külg2 := 10

	var pindala := külg1 * külg2
	print("Ristküliku pindala on", pindala)

	if külg1 == külg2:
		print("Tegemist on ruuduga.")
	else:
		print("Tegemist on ristkülikuga.")
