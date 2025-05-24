extends CharacterBody2D
var SPEED = 100
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction > 0:
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("walk")
	elif direction < 0:
		$AnimatedSprite.flip_h =true
		$AnimatedSprite.play("walk")
	else:
		
		
		$AnimatedSprite.play("idle")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_hurtbox_area_entered(area: Area2D) :
	self.queue_free()
	get_tree().change_scene_to_file("res://scenes/exit.tscn")
	
