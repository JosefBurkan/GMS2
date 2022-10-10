// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack(_slideDuration, _slideSpeed){
	
	image_speed = 0.58
	global.slashDuration = 20
	
	slashSlide = _slideDuration
	slideSpeed = _slideSpeed

//Checking playerdirection and updating oPlayer.sprite

with oPlayer {
	
	if global.playerDirection == "dirRight"{
			sprite_index = Sword_Slash_Right
		}
		
	
	else if global.playerDirection == "dirLeft"{
		sprite_index = Sword_Slash_Left
		}
	

	else if global.playerDirection == "dirUp"{
		sprite_index = Sword_Slash_Up
		}
	
	else if global.playerDirection == "dirDown" {
		sprite_index = Sword_Slash_Down
		}
		
	else {
		sprite_index = Sword_Slash_Right
	}
	
}
		

//Moving the player while attacking
	if slashSlide != 0 {
		if global.playerDirection = "dirLeft"{hspeed = -slideSpeed}
		if global.playerDirection = "dirRight"{hspeed = slideSpeed}
		if global.playerDirection = "dirUp" {vspeed = -slideSpeed}
		if global.playerDirection = "dirDown" {vspeed = slideSpeed}


	}

//The hitbox of the attack
instance_create_depth(x,y,3,oSlash)

	
}
