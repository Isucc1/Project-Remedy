menuText = "this is broken"

titleScreenOptions[0] = ["Play", "Settings", "Credits", "Quit"]
titleScreenOptions[1] = ["First Test Room", "Totally Original Maze", "Puzzle Test", "The Serious Room", "Blake's First Map", "Back to Main Menu"]
titleScreenOptions[2] = ["No functionality fuck you", "Back to Main Menu"]
titleScreenOptions[3] = ["Joseph - Lead artist & director", "Me - coder", "blake - bitch", "Adrien - Story", "Ayvyn - Chef", "Wyatt - Hot"]

currentMenu[0] = "Select Room"
currentMenu[2] = "Settings"
currentMenu[3] = "Credits"
currentMenu[1] = "what"
widest = 0
subMenu = 0
index = 0

draw_set_font(global.mainFont)

audio_play_sound(mus_mainMenu, 1, true)