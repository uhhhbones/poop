extends AnimationPlayer

signal poop
func add_poop():
	emit_signal("poop")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
