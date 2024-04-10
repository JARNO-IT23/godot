extends Node

func _ready():
	var players = ["Feake", "Bradwell", "Dreger", "Bloggett", "Lambole", "Daish", "Lippiett",
			   "Blackie", "Stollenbeck", "Houseago", "Dugall", "Sprowson", "Kitley", "Mcenamin",
			   "Allchin", "Doghartie", "Brierly", "Pirrone", "Fairnie", "Seal", "Scoffins",
			   "Galer", "Matevosian", "DeBlase", "Cubbin", "Izzett", "Ebi", "Clohisey",
			   "Prater", "Probart", "Samwaye", "Concannon", "MacLure", "Eliet", "Kundt", "Reyes"]

	print("Mängijate arv:", players.size())
	print("Kõige esimene nimi massiivist:", players[0])

	players.sort()
	print("Järjestatud mängijate massiiv:", players)

	players.erase(players.find("Reyes"))
	print("Mängija Reyes eemaldatud.")

	var my_name = "MinuNimi"
	players.append(my_name)
	print("Oma nimi lisatud massiivi.")

	var longest_name = ""
	for player in players:
		if len(player) > len(longest_name):
			longest_name = player
	print("Kõige pikem nimi massiivis:", longest_name)

	print("Kõik mängijad:")
	for player in players:
		print(player)

	var player = {
		"name": "John",
		"posx": 10,
		"posy": 20,
		"health": 100,
		"items": ["sword", "shield"],
		"gold": 50
	}

	for i in range(5):
		player["gold"] += 5

	print("Mängija kulla kogus:", player["gold"])


