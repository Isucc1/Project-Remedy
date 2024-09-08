// ---  TODO  --- 
// Add a fade effect; maybe as a different script, but I don't see any uses where we would need to switch rooms without fading out first.

/// @desc Change rooms
/// @param {asset.GMRoom} _room room to go to
/// @param {real} _x x position you want to be at
/// @param {real} _y y position you want to be at
function change_room(_room, _x, _y){
	if _room != room{
		room = _room
	} else{
		show_message("Can't move into the room we're already in now can we?"); 
		return;
	}
	if !instance_exists(obj_playerMain){
		instance_create_depth(_x,	_y,	0, obj_playerMain)
		print_to_log("Error: Player object not found, creating new one in center of room. ", "Please add player character to room if not already.");
	}
}	