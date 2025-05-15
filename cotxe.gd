extends CharacterBody2D 

var speed = 150 
var rotation_speed = 1.5
var rotation_direction = 0
var moneda := 0 

signal dues_moneda
 

func get_input(): 
	rotation_direction = Input.get_axis("esquerra", "dreta") 

	velocity = transform.y * Input.get_axis("adalt", "abaix") * speed 

func _physics_process(delta): 
	get_input() 
	rotation += rotation_direction * rotation_speed * delta 
	move_and_slide() 


func _on_area_2d_body_entered(body: Node2D) -> void:
	preload("res://pau.tscn")

func agafa_moneda():
	moneda += 1
	print(moneda)
	if moneda >= 1:
		dues_moneda.emit()


func _on_parets_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
