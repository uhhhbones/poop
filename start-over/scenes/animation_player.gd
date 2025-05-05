extends AnimationPlayer


func add_poop():
	(get_parent()as Game).poop += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
