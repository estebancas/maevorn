extends CharacterBody2D


const SPEED = 300.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	velocity = direction * SPEED
	
	# Handle animation
	if velocity.x != 0 or velocity.y != 0:
		animated_sprite.play("run")
	else:
		animated_sprite.play("idle")
		
	# Handle sprite flipping
	if velocity.x > 0:
		animated_sprite.flip_h = false
	elif velocity.x < 0:
		animated_sprite.flip_h = true

	# Move character
	move_and_slide()
