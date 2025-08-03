extends RigidBody2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
var on_conveyor := false
var conveyor_velocity := Vector2.ZERO

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

func _physics_process(_delta: float) -> void:
	if on_conveyor:
		linear_velocity = conveyor_velocity

func set_on_conveyor(velocity: Vector2):
	on_conveyor = true
	conveyor_velocity = velocity
	gravity_scale = 0.0

func exit_conveyor():
	on_conveyor = false
	conveyor_velocity = Vector2.ZERO
	gravity_scale = 1.0
