extends Area2D

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Crate"):
		body.gravity_scale = 0.0
		#body.linear_velocity.x = -100.0
