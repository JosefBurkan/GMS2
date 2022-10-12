// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function roll(){

	if global.slashDuration = 0 {
		image_index = 0
		image_speed = 0.35
		speed = rollSpeed
		direction = memory_direction
	}
	
	else  {
		image_speed = 0.40
		speed = rollSpeed
		direction = memory_direction - 180
		rollDur = 10
	}
}