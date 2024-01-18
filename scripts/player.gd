extends CharacterBody2D

var speed = 300.0

func _ready():
	pass
	
func _process(delta):
	pass
	
func _physics_process(delta):
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
