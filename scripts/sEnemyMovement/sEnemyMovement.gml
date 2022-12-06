// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyMovement(_movespeed, _aggroRange, _jump){
	
	if _jump = true && jumpFrequency <= 30{
		if iFrames = 0 && point_in_circle(oPlayer.x, oPlayer.y, x, y, _aggroRange){
			speed = moveSpeed
			

		}
	}
	
	
	else if _jump = false  {
		if iFrames = 0 && point_in_circle(oPlayer.x, oPlayer.y, x, y, _aggroRange){
			move_towards_point(oPlayer.x,oPlayer.y, _movespeed)
		}
	}


	

}