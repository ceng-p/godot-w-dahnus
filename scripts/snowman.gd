extends CharacterBody2D


const SPEED = 2.0
const JUMP_VELOCITY = -200.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


@onready var progress_bar = $ProgressBar

var health = 100
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += (gravity / 2) * delta
		velocity.x =0
	
	move_and_slide()


func _on_timer_2_timeout():
		# Handle jump.

	velocity.y = JUMP_VELOCITY
	print("Me jump")

