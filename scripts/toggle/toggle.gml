// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function toggle(argument0){
	if argument0 == true{
		argument0 = false
	} else if argument0 == false{
	argument0 = true
	} else show_message("Error: Argument not Boolean\nDo better")
}