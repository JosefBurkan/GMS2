/// @description Player_Functions


//Variables
#region


left = keyboard_check_direct(ord("A"))
right = keyboard_check_direct(ord("D"))
down = keyboard_check_direct(ord("S"))
up = keyboard_check_direct(ord("W"))
slashAttack = keyboard_check_pressed(ord("K"))
spinAttack = keyboard_check_pressed(ord("L"))
dodgeRoll = keyboard_check_pressed(vk_space)
anyAttack = slashAttack or spinAttack

PlayerMoving = left or up or down or right

//Remember previous playerDirection
if (speed != 0 and rollDur = 0) {memory_direction = direction}

#endregion

//variableTimers
#region

//slashDuration - Duration of attacks
global.slashDuration = max(global.slashDuration-1,0)

//PlayerIFrames - Duration of invincibility after taking damage
global.oPlayerIFrames = max(global.oPlayerIFrames-1,0)

//combo attack
attackCombo = max(attackCombo-1,0)


//slashSlide - Movement during attacks
slashSlide = max(slashSlide-1,0)

//Roll - rollduration
rollDur = max(rollDur-1,0)

//SpinAttack - Cooldown
global.spinCooldown = max(global.spinCooldown-1,0)


//Prevents currentHealth from going above maxHealth
if global.oPlayerHealthCurrent > global.oPlayerHealth {
	global.oPlayerHealthCurrent -= 0.5
}

#endregion

//what direction oPlayer is facing
	if global.slashDuration = 0 {
	
		if left { global.playerDirection = "dirLeft" }
		if right { global.playerDirection = "dirRight"}
		if up { global.playerDirection = "dirUp" }
		if down { global.playerDirection = "dirDown"}
	}

//Player death
if global.oPlayerHealthCurrent <= 0 {
	game_restart()
}

//Allows attackSliding and noMovement
if slashSlide = 0 && rollDur = 0{
speed = 0
}

//How to enter Player_States
#region

state = Player_State.idle

//Enter rollState
if dodgeRoll{
	state = Player_State.dodge
	rollDur = 22
}

//Enter attackState
if anyAttack && global.slashDuration = 0 && rollDur = 0 {
	state = Player_State.attack
	
	//slashDuration and slashSlide needs to be >=1 for the code to work, not sure why
	global.slashDuration = 1
	slashSlide = 1

}

//Enter MovementState 
if PlayerMoving && global.slashDuration = 0 && rollDur = 0 {
	state = Player_State.walk
}

#endregion


//What does Player_States do
#region

if state = Player_State.dodge {
	roll()
}

//Attacking
if state = Player_State.attack{
	image_index = 0
	
	//An attack is used
	if slashAttack {
		//Slideduration, SlideSpeed
		attack(8, 1)
	}
	
	else if spinAttack && global.spinCooldown = 0 {	
		spin()
	}
	
}

//walking
if state = Player_State.walk {
	//movementspeed
	Movement(1)
}


//idle - only if no other action is taken
if state = Player_State.idle && global.slashDuration = 0 && rollDur = 0{
	//animationspeed
	Idle(0.1)
}
#endregion