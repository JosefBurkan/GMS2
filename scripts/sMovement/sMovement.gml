// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Movement(_baseSpeed){



baseSpeed = _baseSpeed
image_speed = 0.3



if (up) 
{
	vspeed = -baseSpeed
	sprite_index = Invincible_Up

}

if (down)
{
	vspeed = baseSpeed
	sprite_index = Invincible_Down

}


if (left)
{
	
	hspeed = -baseSpeed
	sprite_index = Invincible_Left

}


if (right)
{	
	hspeed = baseSpeed
	sprite_index = Invincible_Right

	
}

}