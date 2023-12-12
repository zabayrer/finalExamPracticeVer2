extends Area2D

@export var speed = 400
var velocity

func _process(delta):
	#makes us stop moving at the start of the cycle
	velocity = Vector2.ZERO
	
	#gets player's input
	if Input.is_action_pressed("move_left"):
		velocity.x += -1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_up"):
		velocity.y += -1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	#normalize
	if (velocity.length() > 1):
		velocity = velocity.normalized()
		
	#makes player actualy move
	position += velocity * speed * delta
