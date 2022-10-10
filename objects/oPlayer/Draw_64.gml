/// @description Insert description here
// You can write your code in this editor
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


