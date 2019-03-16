
var monsterName
var age
var obedience
var strength
var dexterity
var endurance
var popularity
var intelligence

func _init(monsterName, age=0, obedience=Singleton.getRandomNumber(),
	strength=Singleton.getRandomNumber(),
	dexterity=Singleton.getRandomNumber(),
	endurance=Singleton.getRandomNumber(),
	popularity=Singleton.getRandomNumber(),
	intelligence=Singleton.getRandomNumber()):
	self.monsterName = monsterName
	self.age = age
	self.obedience = obedience
	self.strength = strength
	self.dexterity = dexterity
	self.endurance = endurance
	self.popularity = popularity
	self.intelligence = intelligence
	
func getStats():
	return [monsterName, age, obedience, strength, dexterity, endurance, popularity, intelligence]

