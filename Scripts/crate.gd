extends RigidBody2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _ready() -> void:
	var random_number : int = randi_range(0, 100)
	if random_number <= 20:
		collision_shape_2d.modulate = Color.RED
	elif random_number > 20 and random_number <= 40:
		collision_shape_2d.modulate = Color.BLUE
	elif random_number > 40 and random_number <= 60:
		collision_shape_2d.modulate = Color.GREEN
	elif random_number > 60 and random_number <= 80:
		collision_shape_2d.modulate = Color.BROWN
	elif random_number > 80 and random_number <= 100:
		collision_shape_2d.modulate = Color.ORANGE
