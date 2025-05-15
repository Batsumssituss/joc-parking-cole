extends CanvasLayer

func _process(delta):
	$Label.text = "Monedes: %d" % Global.score
