/// @description Insert description here
// You can write your code in this editor


//Variables health
playerHealth = global.oPlayerHealth
playerHealthCurrent = global.oPlayerHealthCurrent
playerHealthFrac = frac(playerHealthCurrent);
playerHealthCurrent -= playerHealthFrac;
	
	

for (i = 1; i <= playerHealth; i++) {
	imageIndex = (i > playerHealthCurrent)	
	if (i == playerHealthCurrent+1)
	{
		imageIndex += (playerHealthFrac > 0)
		imageIndex += (playerHealthFrac > 0.5)
	}
	draw_sprite(Hearth, imageIndex, 20 + ((i-1) * 40), 20)
	
}

//Variables Spin
spinCd = global.spinCooldown 

a = (spinCd / 60) * 100


//draw_line_width_color(0, 100, spinCd, 100, 30, c_blue, c_red)
draw_healthbar(5, 50, 105, 70, a, c_blue, c_black, c_black, 1, 1, 0)