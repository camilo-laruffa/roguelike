extends CharacterBody2D

var mouse_pos
var sprite_scale

func _ready():
	sprite_scale = $Sprite_Gun.scale.y

func _process(delta):
	mouse_pos = get_global_mouse_position().angle_to_point(get_parent().position)
	rotation = mouse_pos - PI/2
	if ((mouse_pos > 1.5 && mouse_pos < PI) || (mouse_pos < -1.5 && mouse_pos > -PI)):
		$Sprite_Gun.scale.y = -sprite_scale
	else:
		$Sprite_Gun.scale.y = sprite_scale
