/// @description Insert description here
// You can write your code in this editor
speed = 0

if global.playerDirection == "dirLeft"{
	hspeed -= 1.5
}
if global.playerDirection == "dirRight"{ 
	hspeed += 1.5
}

if global.playerDirection == "dirUp" {
	vspeed -= 1.5
}

if global.playerDirection == "dirDown" {
	vspeed += 1.5

}

