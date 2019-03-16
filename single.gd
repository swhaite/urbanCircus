extends Node
var monsters = []

var playerName = 'Tyguy'
var money = 5000
var Monster = load('res://Monster.gd')

func getRandomNumber():
	randomize()
	return randi()%11