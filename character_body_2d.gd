#extends CharacterBody2D

#var velocitat := 300
#var direccio := Vector2.ZERO

#func _ready() -> void:
#	position = Vector2(500, 300) #possició inicial
	
#func _process(delta: float) -> void:
#	direccio.x = Input.get_axis("dreta","esquerre")
#	direccio.y = Input.get_axis("davant","darrere")
	
#	velocity.x = direccio.x * velocitat
#	velocity.y = direccio.y * velocitat
	
	
#	var desplaçament: Vector2 = direccio * velocitat
#	position = position + desplaçament*delta

extends CharacterBody2D 

var speed = 150 
var rotation_speed = 1.5
var rotation_direction = 0 

 
func get_input(): 
	rotation_direction = Input.get_axis("esquerra", "dreta") 

	velocity = transform.y * Input.get_axis("abaix", "adalt") * speed 

func _physics_process(delta): 
	get_input() 
	rotation += rotation_direction * rotation_speed * delta 
	move_and_slide() 


func _on_area_2d_body_entered(body: Node2D) -> void:
	preload("res://pau.tscn")
