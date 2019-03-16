class Monster:
	var name
	var age
	var obedience
	var strength
	var dexterity
	var endurance
	var popularity
	var intelligence

	func _init(name, age=0, obedience=Single.getRandomNumber(),
		strength=Single.getRandomNumber(),
		dexterity=Single.getRandomNumber(),
		endurance=Single.getRandomNumber(),
		popularity=Single.getRandomNumber(),
		intelligence=Single.getRandomNumber()):
		self.name = name
		self.age = age
		self.obedience = obedience
		self.strength = strength
		self.dexterity = dexterity
		self.endurance = endurance
		self.popularity = popularity
		self.intelligence = intelligence
		
	func getStats():
		return [name, age, obedience, strength, dexterity, endurance, popularity, intelligence]
	