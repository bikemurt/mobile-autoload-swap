# mobile-autoload-swap

This repo uses the [Resource Remaps](https://godotengine.org/asset-library/asset/3451) plugin to test swapping autoload resources for the mobile build.

## Autoload Setup
- Create an autoload on the Desktop build as you normally would. Add it to `Project Settings -> Globals -> Autoload`
- In your code, interact with the autoload as normal
- Make sure to wrap the autoload script in a `Node` .tscn file. The Resource Remaps addon does not allow swapping script files on export, but it does allow swapping scenes

## Resource Remapping
Simply remap your default autoload to the mobile one. In my case, the `globals/desktop/some_autoload.tscn` file gets remapped to `globals/mobile/some_autoload.tscn`
<img width="774" height="542" alt="image" src="https://github.com/user-attachments/assets/5b0c5566-350c-4bd7-b23d-2617b5c4e994" />

## Keep the same "interface" for both autoloads

As long as your autoloads have the same functions, variables, signals, etc., your external calling code will not care about which underlying version gets called. This could be very useful for multiplayer, achievements, or other systems that are platform specific.

``
extends Node3D

@onready var label: Label = %Label

func _on_button_pressed() -> void:
	label.text = SomeAutoload.get_thing()
``
