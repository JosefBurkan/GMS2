/// @description Insert description here
// You can write your code in this editor
if point_in_circle(oPlayer.x, oPlayer.y, x+8, y+40, 40) and !instance_exists(oText)
{
	with instance_create_layer(positionX,positionY,layer,oText)
	{
		text = other.text
		length = string_length(text)
		oText.depth = 1
	}
	
}