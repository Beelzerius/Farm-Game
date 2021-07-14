/// @description Insert description here
// You can write your code in this editor
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += move_x * spd
y += move_y * spd