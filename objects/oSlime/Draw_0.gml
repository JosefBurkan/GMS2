/// @description Insert description here
// You can write your code in this editor
draw_self()

pc = (enemyHealth / max_health) * 100


if enemyHealth < 5 {
draw_healthbar(x+7, y-10, x-8, y-12.5, pc, c_red, c_lime, c_lime, 1, true, false)
}