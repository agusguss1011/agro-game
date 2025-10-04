extends CharacterBody2D # A que nodo se aplica el script
var velocidad :float = 200 # velocidad de movimiento
func _physics_process(delta):
	var direccion = Vector2.ZERO
	#Entrada de movimiento
	if Input.is_action_pressed("ui_right"):
		direccion.x +=1
	if Input.is_action_pressed("ui_left"):
		direccion.x -=1
	if Input.is_action_pressed("ui_down"):
		direccion.y +=1
	if Input.is_action_pressed("ui_up"):
		direccion.y -=1
# Normalizar direccion para evitar diagonal mas veloz
	if direccion != Vector2.ZERO:
		direccion = direccion.normalized()
	velocity = direccion*velocidad #aplicar velocidad
	move_and_slide() #mover usando el nodo
