extends Node2D

#bullet
onready var Bullet = load("res://Scenes/Items/TestGun/Bullet.tscn")


#for shooting
func attack():
	#create instance of new bullet
	var bullet = Bullet.instance()
	#add it as child to mainScene
	get_tree().get_current_scene().add_child(bullet)
	#set position of bullet to gfx position
	bullet.global_position = $Gfx.global_position
	bullet.set_rotation_degrees( rotation_degrees - 90 )	

func second_attack():
	print("there is no second attack!")

#for process update
func _process(delta):
	rotation_degrees = rad2deg( get_global_mouse_position().angle_to_point( global_position ) ) + 90
