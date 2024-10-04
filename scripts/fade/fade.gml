/// @desc Fades out, holds for so many seconds, and fades back in
/// @param {Real} fadeOutTime Time it takes to fade out, in delta time
/// @param {Real} holdFadeTime Time it holds the fade, in delta time
/// @param {Real} fadeInTime Time it fades back in, in delta time
/// @param {Constant} color it's the color of the fade
/// @returns {Id.Instance} ID of the fade object created
function fade(fadeOutTime, holdFadeTime, fadeInTime, color = c_black){
	
	var _fade = instance_create_depth(0, 0, 0, obj_fade);
	
	_fade.fadeOutTime = fadeOutTime;
	_fade.holdFadeTime = holdFadeTime;
	_fade.fadeInTime = fadeInTime;
	_fade.color = color;
	
	_fade.image_alpha = 0.5;
	
	return _fade;
}