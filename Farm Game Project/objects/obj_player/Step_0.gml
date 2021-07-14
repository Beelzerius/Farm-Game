/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")) room_restart()

// Leitura de Comandos
key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_up = keyboard_check_direct(ord("W"));
key_down = keyboard_check_direct(ord("S"));

move_x = key_right - key_left;
move_y = key_down - key_up;
moving = abs(move_x) or abs(move_y);
if moving last_dir = dir;
dir = point_direction(0,0,move_x, move_y);

// Colisão e Movimento Horizontal
if moving {
	if(place_meeting( x + lengthdir_x(spd,dir), y, obj_wall)){
		while(true){
			if place_meeting(x + sign(lengthdir_x(spd,dir)), y, obj_wall){
				for(var i = 1; i<=4; i++){
					if !place_meeting(x + sign(lengthdir_x(spd,dir)), y+i, obj_wall){
						y+=i;
						break;
					}
					if !place_meeting(x + sign(lengthdir_x(spd,dir)), y-i, obj_wall){
						y-=i;
						break;
					}
				}
				break;
			}else
				x += sign(lengthdir_x(spd,dir));
		}
	} else {
		x += lengthdir_x(spd,dir);
	}
	
	// Colisão Vertical
	if(place_meeting( x, y + lengthdir_y(spd,dir), obj_wall)){
		while(true){
			if place_meeting(x, y + sign(lengthdir_y(spd,dir)), obj_wall){
				for(var i = 1; i<=4; i++){
					if !place_meeting(x+i, y + sign(lengthdir_y(spd,dir)), obj_wall){
						x+=i;
						break;
					}
					if !place_meeting(x-i, y + sign(lengthdir_y(spd,dir)), obj_wall){
						x-=i;
						break;
					}
				}
				break;
			} else
				y += sign(lengthdir_y(spd,dir));
		}
	} else {
		y += lengthdir_y(spd,dir);
	}
}
