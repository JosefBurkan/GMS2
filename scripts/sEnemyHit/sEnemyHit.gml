// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sEnemyHit(_iFrames, _knockBack, _knockBackSpeed, _freezeDuration, _spriteWhenHit, _sfx){





	if place_meeting(x,y,oSlash){
		
	
		
		if iFrames = 0 {
			enemyHealth-=global.damage
			iFrames = _iFrames
			knockBack = _knockBack
			instance_create_depth(x,y,-1,oHitmark)
			audio_play_sound(_sfx, 1, 0)

			}
			
	}
			


	
	
		if knockBack != 0 {
			move_towards_point(oPlayer.x, oPlayer.y, - _knockBackSpeed)
			image_index = _spriteWhenHit

		}
		
		if knockBack = 14 {
			freeze(_freezeDuration)
		}
		


}