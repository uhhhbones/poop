class_name Game
extends Node

var poop : int 
var funny_label = "[tornado] %s poops" % str(poop)


func change_label():
	(get_child(1)as RichTextLabel).text = funny_label


func _physics_process(_delta: float) -> void: 
	change_label()
	

func _on_animation_player_poop() -> void:
	poop += 1
	funny_label = "[tornado] %s poops" % str(poop)
	print("pooped")
