extends Node3D

@onready var label: Label = %Label

func _on_button_pressed() -> void:
	label.text = SomeAutoload.get_thing()
