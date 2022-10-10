// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function freeze(_freezeduration){
	t = current_time + _freezeduration
	while (current_time < t) { }

}