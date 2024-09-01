draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(global.mainFont)
draw_text_ext(344, 284, menuText, (string_height(menuText)/array_length(titleScreenOptions[subMenu])) + 10, 600)
draw_set_font(global.mainFont)
draw_set_color(c_yellow)
draw_text_ext_transformed(344, 244, currentMenu[subMenu], 100, 600, 2, 2, 0)

