extends Area2D

@onready var timer = $Timer
@onready var sfx_die = $SFX_Die



func _on_body_entered(body):
	sfx_die.play()
	print("You died!")
	Music.stop()
	Engine.time_scale = 0.3
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout():
	get_tree().reload_current_scene()
	Music.play()
	Engine.time_scale = 1.0
