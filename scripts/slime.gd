extends AnimatedSprite2D

const SPEED = 60

var direction = 1

@onready var ray_cast_2d_left = $RayCast2DLeft
@onready var ray_cast_2d_right = $RayCast2DRight
@onready var slime = $"."


func _process(delta):
	if ray_cast_2d_left.is_colliding():
		direction = 1
		slime.flip_h = false
	if ray_cast_2d_right.is_colliding():
		direction = -1	
		slime.flip_h = true
	
	position.x += direction * SPEED * delta
