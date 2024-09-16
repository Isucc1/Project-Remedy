

for (var i = 0; i < array_length(importantObjects); i++){
	if !instance_exists(importantObjects[i]) && global.roomType != "Cutscene"{
		instance_create_depth(0, 0, 0, importantObjects[i])
	}
}