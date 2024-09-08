var _room = array_get(other.destination, 0)
var _x = array_get(other.destination, 1)
var _y = array_get(other.destination, 2)

change_room(_room, _x, _y)

if array_get(other.destination, 0) == rm_seriousRoom{
	image_xscale = 1.5
	image_yscale = 1.5
}