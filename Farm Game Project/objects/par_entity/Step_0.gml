/// @description Insert description here
// You can write your code in this editor
moving = abs(move_x) or abs(move_y);

if moving{
	last_dir = dir;
	dir = point_direction(0,0,move_x, move_y);
	
	move_spd += acc;
	move_spd = min(max_spd, move_spd)
	
} else {
	move_spd -= fric;
	move_spd = max(0, move_spd);
}

h_speed = floor(lengthdir_x(move_spd*mult_spd,dir));
v_speed = floor(lengthdir_y(move_spd*mult_spd,dir));

// Colisão e Movimento Horizontal
if(place_meeting( x + h_speed, y, obj_wall)){
	while(true){
		if place_meeting(x + sign(h_speed), y, obj_wall){
			for(var i = 1; i<=4; i++){
				if !place_meeting(x + sign(h_speed), y+i, obj_wall){
					y+=i;
					break;
				}
				if !place_meeting(x + sign(h_speed), y-i, obj_wall){
					y-=i;
					break;
				}
			}
			break;
		}else
			x += sign(h_speed);
	}
} else {
	x += h_speed;
}
	
// Colisão Vertical
if(place_meeting( x, y + v_speed, obj_wall)){
	while(true){
		if place_meeting(x, y + sign(v_speed), obj_wall){
			for(var i = 1; i<=4; i++){
				if !place_meeting(x+i, y + sign(v_speed), obj_wall){
					x+=i;
					break;
				}
				if !place_meeting(x-i, y + sign(v_speed), obj_wall){
					x-=i;
					break;
				}
			}
			break;
		} else
			y += sign(v_speed);
	}
} else {
	y += v_speed;
}