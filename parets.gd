extends Area2D
func _process(delta: float) -> void:
	pass
	var canvia = preload("res://pau.tscn")

func _on_body_entered(body) -> void:
	get_tree().change_scene_to_file("res://pau.tscn")
	


func _on_parets_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
