extends Node2D

@export var spawn_timer : float = 5.0
@export var crate = preload("res://Scenes/crate.tscn")

func _ready() -> void:
	crate = crate.instantiate()
	add_child(crate)

func _process(_delta: float) -> void:
	pass
