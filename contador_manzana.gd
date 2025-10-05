extends CanvasLayer
var apple: int = 0

func _ready():
	var list = get_tree().get_nodes_in_group("Inventario") 

	var apple_nodes = list[0]
	apple_nodes.connect("applecollected",handle_apple_collected)
	$apple_collect_text.text = str(apple)

func handle_apple_collected():
	apple += 1
	$apple_collect_text.text = str(apple) 
