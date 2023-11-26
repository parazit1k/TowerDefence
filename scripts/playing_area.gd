extends Node2D

@export var onScreen = false
@export var enemy = preload("res://screens/enemy.tscn")

@onready var spawner = $Path2D/PathFollow2D

# Called when the node enters the scene tree for the first time.
func _ready():
	spawner.add_child(enemy.instantiate())
