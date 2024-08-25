draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_ew)
draw_text_ext(344, 224, menuText, (string_height(menuText)/array_length(titleScreenOptions[subMenu])) + 10, 300)
draw_set_font(fnt_ewButLarge)
draw_set_color(c_yellow)
draw_text_ext(344, 124, currentMenu[subMenu], 100, 300)

