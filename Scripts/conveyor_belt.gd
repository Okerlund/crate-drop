extends Area2D

@export var crate_velocity : float = 100.0

var is_on_conveyor : bool = false
var crate_body : Node

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Crate"):
		is_on_conveyor = true
		crate_body = body

func _physics_process(_delta: float) -> void:
	if is_on_conveyor:
		crate_body.gravity_scale = 0.0
		crate_body.linear_velocity.x = -crate_velocity
