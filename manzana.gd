@tool
class_name item extends Area2D
signal applecollected
enum ItemType { tomate, zanaoria, trigo }
func _ready() -> void:
	add_to_group("Inventario")
func collect_item():
	queue_free()
	emit_signal("applecollected")
