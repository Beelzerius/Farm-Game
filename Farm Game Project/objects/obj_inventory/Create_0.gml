/// @description Insert description here
// You can write your code in this editor
using = false;
slots = 9;
current = 0;
itens_list = get_itens();
for(var i=0; i<slots; i++){
	inventory[i] = {
		iid : 0,
		amount : 0
	}
}

inventory[0].iid = "sword";
inventory[0].amount = 1;

inventory[6].iid = "potion";
inventory[6].amount = 2;

var w = global.gameWidth;
var border = ((w / slots)-16);
var h =  global.gameHeight;

for(var i=0; i<slots; i++){
	with(instance_create_layer(border/2 + (i*16+border*(i)),  h - 20, "UI", obj_slot)){
		ativation_key = ord(string(i+1));
		bar = true;
		inventory_slot = i;
		show_debug_message(x)
	}
}