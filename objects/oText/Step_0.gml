/// @description Insert description here
// You can write your code in this editor

sfx = max(sfx-1,0)

if sfx = 0 and letters <= length{
	audio_play_sound(signTalking, 1, 0)
	sfx = 7
}

letters += spd

text_current = string_copy(text,1,floor(letters))

draw_set_font(Font1)
if h == 0 {
	h = string_height(text)
}

w = string_width(text_current)


//Destroy
if (letters >= length) and keyboard_check(vk_anykey)
{
	instance_destroy()
	
}