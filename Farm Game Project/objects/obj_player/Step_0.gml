/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("M")) debug = !debug;
if keyboard_check_pressed(ord("R")) room_restart()

// Leitura de Comandos

move_x = obj_input.right - obj_input.left;
move_y = obj_input.down - obj_input.up;


if(obj_input.run and (abs(move_x) or abs(move_y)))
{
	running = true;
	stamina = max(0, stamina - 0.08);
	if stamina > 0
		mult_spd = 1.5;
	else
		mult_spd = 0;
} else if running {
	if !alarm[0] alarm[0] = 0.5*room_speed;	
} else {
	stamina = min(max_stamina, stamina + 0.05);
	mult_spd = 1;
}

//show_debug_message(running)

event_inherited()