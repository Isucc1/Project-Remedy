var a = layer_get_all();
for (var i = 0; i < array_length(a); i++;)
{
    layer_depth(a[i], 0)
}
if !instance_exists(obj_playerMain) && global.roomType != "Cutscene"{
	instance_create_depth((room_width/2), (room_height/2), 0, obj_playerMain)
}