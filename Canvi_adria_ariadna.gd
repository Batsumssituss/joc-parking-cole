extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var canvia_a_final = preload("res://ariadna.tscn")

func _on_character_body_2d_dues_moneda():
	monitoring = true
	visible = true


func _on_body_entered(body):
	get_tree().change_scene_to_file("res://ariadna.tscn")
