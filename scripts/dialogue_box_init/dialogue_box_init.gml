// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogue_box_init(argument){
	if !layer_exists("messages")
		layer_create(-9999999999,"messages")
	var _dialogue = instance_create_layer(0,0,"messages",obj_dialogueController)
	for (var i = 0; i < array_length(argument); ++i) {
		_dialogue.msg[i] = argument[i];
	}
	_dialogue.current_message = 0	
	_dialogue.dialogue_length = array_length(argument)
}