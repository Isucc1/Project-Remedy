// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogue_box_init(_message){
	if !layer_exists("messages")
		layer_create(-15999,"messages")
	var _dialogue = instance_create_layer(0,0,"messages",obj_dialogueController)
	for (var i = 0; i < array_length(_message); ++i) {
		_dialogue.msg[i] = _message[i];
	}
	_dialogue.current_message = 0	
	_dialogue.dialogue_length = array_length(_message)
}