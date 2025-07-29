extends Area2D

@export var crate_velocity : float = 100.0

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Crate"):
		body.gravity_scale = 0.0
		body.linear_velocity.x = -crate_velocity

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_pressed("drop_crate"):
		pass
