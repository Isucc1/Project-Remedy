/// @desc Toggle a boolean value
/// @param {bool} boolean value to need to toggle
function toggle(argument0){
	if argument0 == true{
		argument0 = false
	} else if argument0 == false{
	argument0 = true
	} else show_message("Error: Argument not Boolean\nDo better")
}