/// @description Insert description here
// You can write your code in this editor

moveBack = max(moveBack-1,0)

if moveBack = 0{
	if point_in_circle(oPlayer.x, oPlayer.y, x, y, 100){
		move_towards_point(oPlayer.x, oPlayer.y, mSpeed)
	}
}

if place_meeting(x,y,oPlayer){
	moveBack = 30
	if moveBack > 0 {
		move_towards_point(oPlayer.x, oPlayer.y, mSpeed = -4)
	}
		
}