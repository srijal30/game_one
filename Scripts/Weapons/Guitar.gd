extends Node2D

export var swingDamage = 25

#not strum
func attack():
	$AnimationPlayer.play("swing")	
	
	
#strum (maybe cooldown)
func second_attack():
	
	print("there is no second attack!")




#when guitar body hits while swinging
func _on_AttackArea_area_entered(area):
	if area.is_in_group("enemy") and $AnimationPlayer.current_animation == "swing":
		area.get_parent().take_damage( swingDamage )
