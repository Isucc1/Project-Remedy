draw_self()

var healthPercent = (enemyCurrentHealth/enemyMaxHealth) * 100

draw_set_color(c_lime)
draw_healthbar(x - 15, y - 23, x + 9, y - 20, healthPercent, c_black, c_lime, c_lime, 0, true, false)