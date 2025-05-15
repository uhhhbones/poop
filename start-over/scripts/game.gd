class_name Game
extends Node

var poop : int 
var funny_label = "[pulse] %s poops" % str(poop)
func spawn_creature():
	var new_creature = preload("res://scenes/creature.tscn").instantiate()
	new_creature.global_position = $cave.global_position
	add_child(new_creature)



func change_label():
	(get_child(1)as RichTextLabel).text = funny_label


func _physics_process(_delta: float) -> void: 
	change_label()
	

func _on_animation_player_poop() -> void:
	poop += 1
	funny_label = "[pulse] %s poops" % str(poop)
	print("pooped %s times" % str(poop) )


func _on_button_pressed() -> void:
	print("creature spawned")
	spawn_creature()
