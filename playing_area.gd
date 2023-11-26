extends Node2D

@export var onScreen = false
@export var enemy = preload("res://enemy.gd")

@onready var spawner = $Path2D/PathFollow2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not onScreen:
		print("spawned")
		spawner.add_child(enemy.new())
		onScreen = true
