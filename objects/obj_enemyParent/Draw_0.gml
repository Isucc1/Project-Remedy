draw_self()

var healthPercent = (enemyCurrentHealth/enemyMaxHealth) * 100

draw_set_color(c_lime)
draw_healthbar(x, y - 2, x + 32, y - 7, healthPercent, c_black, c_lime, c_lime, 0, true, false)