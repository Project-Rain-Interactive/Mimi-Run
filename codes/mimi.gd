extends CharacterBody2D

const GRAVITY : int = 3050
const JUMP_SPEED : int = -1000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	if is_on_floor():
		if not get_parent().game_running:
			$AnimatedSprite2D.play("idle")
		else:
			$RunCol.disabled = false
			if Input.is_action_pressed("jumping"):
				velocity.y = JUMP_SPEED
				$JumpSound.play()
			else:
				$AnimatedSprite2D.play("run")
	elif velocity.y < 0:
		$AnimatedSprite2D.play("jump")
	else:
		$AnimatedSprite2D.play("fall")
	
	if Input.is_action_just_released("jumping") and velocity.y < 0:
		velocity.y = JUMP_SPEED / 50.0
		
	move_and_slide()
	
