extends Control

@export var start_button : Button
@export var settings_button : Button
@export var quit_button : Button

@export var test_level : PackedScene
@export var settings_menu : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_button.pressed.connect(_on_start_clicked)
	settings_button.pressed.connect(_on_settings_clicked)
	quit_button.pressed.connect(_on_quit_clicked)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_start_clicked():
	get_tree().change_scene_to_packed(test_level)

func _on_settings_clicked():
	var settings_menu_inst = settings_menu.instantiate()
	add_child(settings_menu_inst)

func _on_quit_clicked():
	get_tree().quit()
