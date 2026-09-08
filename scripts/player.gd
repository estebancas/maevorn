extends CharacterBody2D

@export var speed = 300.0

func _physics_process(_delta: float) -> void:
	# Get input direction
	var direction = Input.get_vector("move_down", "move_up", "move_left", "move_right");
	
	# Apply velocity
	velocity = direction * speed
	
	# Handle animation
	
	move_and_slide()
