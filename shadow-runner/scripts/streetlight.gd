extends Sprite2D
var level =1
@onready  var point_light_2d: PointLight2D = $PointLight2D
@onready var timer: Timer = $Timer
@onready var hitbox: Area2D = $Hitbox
@onready var collision_shape: CollisionShape2D = $Hitbox/CollisionShape2D


var light_on: bool = false  # Tracks whether the light is on

func _ready():
	timer.wait_time =2  # Blinking interval in seconds (adjust as needed)
	timer.start()
	
func _process(float) :
	pass

func _on_timer_timeout():
	light_on = !light_on
	
	if light_on:
		point_light_2d.energy =0.9
		collision_shape.disabled=false
		
		
	else:
		point_light_2d.energy =0.0
		collision_shape.disabled=true
			
	
	timer.start()
