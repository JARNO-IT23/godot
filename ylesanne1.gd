extends Node

func _ready():
	var mängija_nimi := "John"
	var mängija_elud := 3

	print("Mängija nimi:", mängija_nimi)
	print("Mängija elude arv:", mängija_elud)

	print("Mängija nime pikkus:", mängija_nimi.length())

	mängija_elud += 2
	print("Mängija elude arv, kui sai kaks elu juurde:", mängija_elud)

	var suvaline_arv := randi() % 20
	print("Suvine arv 0-19:", suvaline_arv)
