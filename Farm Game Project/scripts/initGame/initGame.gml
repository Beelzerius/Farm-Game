// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initGame(){
	global.gameWidth = 384;
	global.gameHeight = 216;
	global.zoom = 3;
	global.resolution = 1;
	
	global.item_list = ds_map_create();
	get_itens();
}