var a = layer_get_all();
for (var i = 0; i < array_length(a); i++;)
{
	if layer_get_element_type(a[i] != layerelementtype_tile)	layer_depth(a[i], 0)
}

for (var i = 0; i < array_length(importantObjects); i++){
	if !instance_exists(importantObjects[i]) && global.roomType != "Cutscene"{
		instance_create_depth(0, 0, 0, importantObjects[i])
	}
}