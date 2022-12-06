// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spin(){
	global.slashDuration = 25
	image_speed = 0.33
	sprite_index = spinSprite
	global.spinCooldown = 90
	
	instance_create_depth(x,y,1,oSpinHBox)
}