// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Idle(_animationspeed){
	image_speed = _animationspeed


	if global.playerDirection = "dirLeft" {
		sprite_index = Idle_Left
}

	if global.playerDirection = "dirRight" {
	sprite_index = Idle_Right
}

	if global.playerDirection = "dirUp" {
		sprite_index = Idle_Up
}

	if global.playerDirection = "dirDown" {
		sprite_index = Idle_Down
}


}