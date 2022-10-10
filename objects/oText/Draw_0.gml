/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1)
txtHeight = 15
size = string_height(text)
scale = txtHeight / size


draw_text_transformed(x, y, text_current, scale, scale, 0)
