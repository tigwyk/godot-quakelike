extends Control

@export var close_button : Button
@export var sens_slider : HSlider

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	close_button.pressed.connect(_on_close_pressed)
	sens_slider.value_changed.connect(_on_sens_changed)

func _on_close_pressed():
	
	queue_free()

func _on_sens_changed(sens: float):
	print_debug("Sens: %s" % sens)
