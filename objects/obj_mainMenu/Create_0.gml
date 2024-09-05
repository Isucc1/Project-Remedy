menuText = "this is broken"

titleScreenOptions[0] = ["Play", "Settings", "Credits", "Quit"]
titleScreenOptions[1] = ["rm_firstTestRoom", "rm_maze", "rm_puzzleTest", "rm_seriousRoom", "Back to Main Menu"]
titleScreenOptions[2] = ["No functionality fuck you", "Back to Main Menu"]
titleScreenOptions[3] = ["Joseph - Lead artist & director", "Me - coder", "blake - bitch", "Adrien - Story", "Ayvyn - Chef", "Wyatt - Hot"]

currentMenu[0] = "Main"
currentMenu[2] = "Settings"
currentMenu[3] = "Credits"
currentMenu[1] = "what"
widest = 0
subMenu = 0
index = 0

instance_create_depth(0, 0, 0, obj_musicHandler)

draw_set_font(global.mainFont)

audio_play_sound(mus_mainMenu, 1, true)