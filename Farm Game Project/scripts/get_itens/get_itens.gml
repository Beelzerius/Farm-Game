// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dev_item(_iid, _name="", _sprite=placeholder_itens, _image=0, _use=noone, _price=0){
	var item = {
		iid : _iid,
		name : _name,
		sprite : _sprite,
		image : _image,
		use : _use,
		price : _price
	}
	ds_map_add(global.item_list, _iid, item);
}
function get_itens(){
	dev_item(0)
	dev_item("sword", "Sword", placeholder_itens, 1)
	dev_item("potion", "Potion", placeholder_itens, 2)
	/*var item_list = ds_map_create();
	itens[0] = {
		name : "",
		sprite : placeholder_itens,
		image : 0,
		use: noone
	}
	itens[1] = {
		name : "Espada de Madeira",
		sprite : placeholder_itens,
		image : 1,
		use: noone
	}
	itens[2] = {
		name : "Frasco Vazio",
		sprite : placeholder_itens,
		image : 2,
		use: noone
	}
	return itens;*/
}