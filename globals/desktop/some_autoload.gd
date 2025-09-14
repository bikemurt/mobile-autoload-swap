# Autoload name: SomeAutoload
extends Node

var a_variable := 123

func get_thing() -> String:
	return "This is the PC version: %d" % [a_variable]
