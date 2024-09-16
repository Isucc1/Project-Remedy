if global.roomType != "Cutscene" instance_destroy();

var _player = instance_nearest(room_width, room_height, obj_playerMain);

_playerActor = instance_create_depth(_player.x, _player.y, 0, obj_playerActor)

instance_deactivate_object(obj_playerMain)