/// @description entirely stolen from main menu object

menuText = "this is broken"

pauseMenuOptions[0] = ["Resume", "Settings", "Debug Options", "Title"]
pauseMenuOptions[1] = ["No functionality yet; Come back later", "Back to Main Menu"]
pauseMenuOptions[2] = ["Change Room", "Edit Stats/Values", "Toggle Debug", "Back to Main Menu"]
pauseMenuOptions[3] = ["rm_firstTestRoom", "rm_maze", "rm_puzzleTest", "rm_seriousRoom", "Back to Main Menu"] //To be implemented

currentMenu[0] = "Main"
currentMenu[1] = "W.I.P."
currentMenu[2] = "Debug Options"
currentMenu[3] = "Debug Room Changer"

widest = 0
subMenu = 0
index = 0

draw_set_font(global.mainFont)
