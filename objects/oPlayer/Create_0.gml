/// @description Insert description here
// You can write your code in this editor
global.playerDirection = ["dirNone", "dirLeft", "dirRight", "dirUp", "dirDown"]
global.damage = 1
global.slashDuration = 0
global.oPlayerHealth = 3
global.oPlayerHealthCurrent = 3
global.oPlayerIFrames = 0
memory_direction = 0
rollSpeed = 2
global.spinCooldown = 0

enum Player_State{
	hurt,
	attack,
	idle,
	walk,
	dodge
	
}