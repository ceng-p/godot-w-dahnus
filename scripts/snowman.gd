extends CharacterBody2D


const SPEED = 2.0
const JUMP_VELOCITY = -250.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


@onready var progress_bar = $ProgressBar

@onready var timer = $Timer
var health = 100
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += (gravity / 2) * delta
	
		velocity.x =0
		
	# Handle jump.
	if timer.is_stopped() and is_on_floor():
		velocity.y = JUMP_VELOCITY
	

	
	move_and_slide()
