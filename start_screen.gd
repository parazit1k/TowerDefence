extends Control

@onready var titleButton = $game_title/title_button
@onready var title = $game_title

@export var line = false
@export var do_line = true

# Called when the node enters the scene tree for the first time.
func _ready():
	_do_lines()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _do_lines():
	await get_tree().create_timer(0.3).timeout
	if do_line:
		if line:
			title.text = title.text.substr(0, title.text.length() - 1)
		else:
			title.text += "|"
		
		line = !line
	
	_do_lines()
	

func _on_title_button_pressed():
	edit_title_text()

func edit_title_text():
	titleButton.disabled = true
	if line:
		title.text = title.text.substr(0, title.text.length() - 1)
		line = false
	
	do_line = false
	
	for i in range(3):
		title.text += "."
		await get_tree().create_timer(0.5).timeout
	
	await get_tree().create_timer(1).timeout
	
	for i in range(3):
		title.text = title.text.substr(0, title.text.length() - 1)
		await get_tree().create_timer(0.15).timeout
	
	titleButton.disabled = false
	do_line = true
