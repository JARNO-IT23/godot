extends Node

func arvuta_tasu(töötunnid, tunnitasu):
	var tasu = 0
	if töötunnid <= 40:
		tasu = töötunnid * tunnitasu
	else:
		tasu = 40 * tunnitasu + (töötunnid - 40) * 1.5 * tunnitasu
	return round(tasu)

func keskmine_punktide_arv(punktid):
	return round(punktid.sum() / punktid.size())

func kõik_punktid(punktid):
	print("Kõik punktid:")
	for punkt in punktid:
		print(punkt)

func hinne_punktide_järgi(punktid):
	print("Punktid ja hinded:")
	for punkt in punktid:
		var hinne = 5 if punkt >= 90 else 4 if punkt >= 75 else 3 if punkt >= 50 else 2
		print("%dp - %d" % [punkt, hinne])

func _ready():
	print("Makstav tasu:", arvuta_tasu(45, 10))
	print("Makstav tasu:", arvuta_tasu(35, 12))

	var eksamipunktid = [7, 28, 64, 51, 81, 40, 21, 73, 34, 98, 39, 17, 33, 85, 35, 44]

	print("Keskmine punktide arv:", keskmine_punktide_arv(eksamipunktid))
	kõik_punktid(eksamipunktid)
	hinne_punktide_järgi(eksamipunktid)




