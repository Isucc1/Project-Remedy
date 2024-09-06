//variables for directional keys
global.upKey = ord("W")
global.downKey = ord("S")
global.leftKey = ord("A")
global.rightKey = ord("D")
global.interactionKey = ord("Z")

global.roomType = "Cutscene"
global.paused = false
global.debug = true //change this to false for public demo

global.mainFont = font_add_sprite_ext(spr_placeholderFont, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.:,;(*!?})#${%^&-+@", true, 1)