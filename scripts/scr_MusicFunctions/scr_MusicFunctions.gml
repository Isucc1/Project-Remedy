// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_music_ingame(_music, _fadeOutCurrentMusic = 0, _fadeIn = 0){
	with(obj_musicHandler){
		targetSongAsset = _music;
		endFadeOutTime = _fadeOutCurrentMusic;
		startFadeInTime = _fadeIn
	}
}