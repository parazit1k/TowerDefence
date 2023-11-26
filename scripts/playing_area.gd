extends Node2D

@export var onScreen = false
@export var enemy = preload("res://screens/enemy.tscn")

@onready var spawner = $Path2D/PathFollow2D
@onready var pathSpawner = $Path2D

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(10):
		pathSpawner.add_child(spawner)
		spawner.add_child(enemy.instantiate())
		get_tree().create_timer(1).timeout
