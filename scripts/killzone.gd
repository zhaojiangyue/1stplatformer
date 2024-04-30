extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.3
	timer.start()
	


func _on_timer_timeout():
	get_tree().reload_current_scene()
	Engine.time_scale = 1.0
