/// @description Insert description here
// You can write your code in this editor

speed = 0
image_index = 0
iFrames = max(iFrames-1,0)
knockBack = max(knockBack-1,0)


//How to kill
if enemyHealth <= 0 {
	instance_destroy()
}

//iFrames, knockBackDuration, knockbackSpeed, Freezeduration
sEnemyHit(22, 15, 1.2, 30, 1, enemy1Hurt)


//Aggro range and movement
enemyMovement(1, 60, false)




//depth
depth = 0
