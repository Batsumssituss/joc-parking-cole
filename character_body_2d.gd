extends CharacterBody2D

var velocitat := 300
var direccio := Vector2.ZERO

func _ready() -> void:
	position = Vector2(500, 300) #possició inicial
	
func _process(delta: float) -> void:
	direccio.x = Input.get_axis("dreta","esquerre")
	direccio.y = Input.get_axis("davant","darrere")
	
	velocity.x = direccio.x * velocitat
	velocity.y = direccio.y * velocitat
	
	
	var desplaçament: Vector2 = direccio * velocitat
	position = position + desplaçament*delta
