# Autoload name: SomeAutoload
extends Node

var a_variable := 456

func get_thing() -> String:
	return "This is the mobile version: %d" % [a_variable]
