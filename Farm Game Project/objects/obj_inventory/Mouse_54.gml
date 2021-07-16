/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
dir = round(dir/45)*45
if !using {
	using = true;
	
} else if alarm[0]==-1{
	using = false;
}