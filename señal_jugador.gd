extends Area2D
signal applecollected
func _ready() -> void:
	add_to_group("Inventario")
func _on_area_entered(area: Area2D) -> void:
	add_to_group("Inventario")
	if area: area.queue_free()
	emit_signal("applecollected")
