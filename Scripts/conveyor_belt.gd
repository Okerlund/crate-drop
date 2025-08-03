extends Area2D

@export var crate_velocity : float = 100.0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Crate"):
		body.set_on_conveyor(Vector2(-crate_velocity, 0))

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Crate"):
		body.exit_conveyor()
