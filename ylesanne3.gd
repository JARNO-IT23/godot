extends Node

func _ready():
	var mängija_elud := 100
	var vaenlase_elud := 100
	var mängija_mõõga_tugevus := randi_range(12,19)
	var vaenlase_mõõga_tugevus := randi_range(10, 17)

	while mängija_elud > 0 and vaenlase_elud > 0:
		vaenlase_elud -= mängija_mõõga_tugevus
		if vaenlase_elud <= 0:
			vaenlase_elud = 0
			break

		mängija_elud -= vaenlase_mõõga_tugevus
		if mängija_elud <= 0:
			mängija_elud = 0
			break

		print("Mängija ründab vaenlast", mängija_mõõga_tugevus, "ühikuga. Vaenlase elud:", vaenlase_elud)
		print("Vaenlane ründab mängijat", vaenlase_mõõga_tugevus, "ühikuga. Mängija elud:", mängija_elud)

	if mängija_elud == vaenlase_elud:
		print("Viik! Mõlemad langesid lahingus.")
	elif mängija_elud <= 0:
		print("Vaenlane võitis! Mängijal said elud otsa.")
	else:
		print("Mängija võitis! Vaenlasel said elud otsa.")


