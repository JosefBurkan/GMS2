/// @description Insert description here
// You can write your code in this editor



speed = 0




iFrames = max(iFrames-1,0)
knockBack = max(knockBack-1,0)
jumpFrequency = max(jumpFrequency-1,0)
jumpDirection = max(jumpDirection-1, 0)

moveSpeed = lerp(speed, 1, 0.8)

//How often slime will jump towards player
if jumpFrequency <= 0 {
	jumpFrequency = 90
}

//Slime updates it's pathing
if jumpDirection = 0 {
	direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	jumpDirection = 30
}


//Damage to player
if global.oPlayerIFrames = 0 and place_meeting(x,y,oPlayer){
enemyHitPlayer(0.5)
audio_play_sound(oPlayerHurt, 1,0)
}


//How to kill
if enemyHealth <= 0 {
	instance_destroy()
	instance_create_depth(x,y,3,oSlimeMini)
}

//iFrames, knockBackDuration, knockbackSpeed, Freezeduration, spriteWhenHit
sEnemyHit(22, 20, 1.6, 10, 0, slimeHurt)


//movementSpeed, aggroRange
enemyMovement(1.5, 120, true)

if speed != 0{
	sprite_index = slimeJump
	image_speed = 0.5
}
else {
	image_speed = 0.2
	sprite_index = slime

}


