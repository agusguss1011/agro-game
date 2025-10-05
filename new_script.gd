extends CharacterBody2D # A que nodo se aplica el script
@onready var animated_sprite = $AnimatedSprite2D
var speed :float = 125 # velocidad de movimiento
var last_direction = "ui_down"
func _physics_process(delta):
	get_input()
	move_and_slide() #mover usando el nodo
	
func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_direction == Vector2.ZERO:
		velocity = Vector2.ZERO
		update_animation("idle")
		return
		
	if abs(input_direction.x) > abs(input_direction.y):
		if input_direction.x > 0:
			last_direction = "ui_right"
		else:
			last_direction = "ui_left"
	else:
		if input_direction.y > 0:
			last_direction = "ui_down"
		else:
			last_direction = "ui_up"
	
	update_animation("walk")
		
	velocity = input_direction * speed

func update_animation(state):
	animated_sprite.play(state + "_" + last_direction)
