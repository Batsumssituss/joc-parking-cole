extends Area2D

@onready var particles = $CPUParticles2D
@onready var sprite = $Sprite2D
@onready var sound = $so

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "CharacterBody2D": 
		particles.emitting = true
		sound.play()
		sprite.visible = false
		$CollisionShape2D.disabled = true

		# Esperem que acabi el so abans d’eliminar o desactivar del tot
		await get_tree().create_timer(1.0).timeout
		queue_free()
