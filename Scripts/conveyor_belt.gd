extends Area2D

@export var crate_velocity : float = 100.0

var is_on_conveyor : bool = false
var crate_body : Node

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Crate"):
		body.set_on_conveyor(Vector2(-crate_velocity, 0))

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Crate"):
		body.exit_conveyor()
