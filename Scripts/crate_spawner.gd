extends Node2D

@export var crate : PackedScene

func _ready() -> void:
	spawn_crate()
	
func _on_timer_timeout() -> void:
	spawn_crate()

func spawn_crate():
	var new_crate = crate.instantiate()
	add_child(new_crate)
