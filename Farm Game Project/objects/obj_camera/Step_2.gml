/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target)){
	//viewx = clamp(lerp(viewx, floor(target.x), 0.08), global.gameWidth/2,room_width-global.gameWidth/2);
	//viewy = clamp(lerp(viewy, floor(target.y), 0.08),global.gameHeight/2,room_height-global.gameHeight/2);
	vm = matrix_build_lookat(viewx, viewy, -10, viewx, viewy, 0, 0, 1, 0);
	camera_set_view_mat(camera, vm)
}