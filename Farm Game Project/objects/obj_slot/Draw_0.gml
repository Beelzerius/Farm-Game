/// @description Insert description here
// You can write your code in this editor

if bar and obj_inventory.current == inventory_slot image_index = 1
else image_index = 0
draw_self();
var iid = obj_inventory.inventory[inventory_slot].iid
var ref_item = global.item_list[? iid]
var amount = obj_inventory.inventory[inventory_slot].amount;
draw_sprite(ref_item.sprite, ref_item.image, x, y);
if amount > 1 {
	draw_set_font(fnt_itens);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(x, y+16, amount, c_yellow,c_yellow,c_yellow,c_yellow,1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}