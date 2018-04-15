/// @description Insert description here
// You can write your code in this editor

if (room == rmCatchFood){
	
		//if place_meeting(x, y, objBAlimentar);/*CONTAR PONTOS*/
	
    LEFT = keyboard_check(vk_left);
	RIGHT = keyboard_check(vk_right);
	FIRE = keyboard_check(vk_space);

	//Move Player
	if (LEFT && x > sprite_width/2) 
	{ 
		if !place_meeting(x, y, objBAlimentar) x -= baseSpeed;
		//x -= baseSpeed;
		image_xscale = -baseScale;
		image_speed = baseImgSpeed;
	}

	if (RIGHT && x < room_width - sprite_width/2) 
	{ 
		x += baseSpeed;
		image_xscale = baseScale;
		image_speed = baseImgSpeed;
	}
	
	if (!(LEFT && x > sprite_width/2) && !(RIGHT && x < room_width - sprite_width/2)){
		image_speed = 0;
		image_index = 0;
	}
}else if (room == rmFWD){
	LEFT = keyboard_check(ord("A"));
	RIGHT = keyboard_check(ord("D"));
	UP = keyboard_check(ord("W"));
	DOWN = keyboard_check(ord("S"));

	if (!hasFood){
		follow = instance_nearest(x, y, objFood);

		if (!instance_exists(follow)){
			hasFood = true;
			return;
		}

		if (follow.x + 2 > x){
			RIGHT = true;
		}else{
			RIGHT = false;
		}

		if (follow.x < x + 2){
			LEFT = true;
		}else{
			LEFT = false;
		}

		if (follow.y + 2> y){
			DOWN = true;
		}else{
			DOWN = false;
		}

		if (follow.y < y + 2){
			UP = true;
		}else{
			UP = false;
		}
	}else{
		if (objParent.x + 2 > x){
			RIGHT = true;
		}else{
			RIGHT = false;
		}

		if (objParent.x < x + 2){
			LEFT = true;
		}else{
			LEFT = false;
		}

		if (objParent.y + 2> y){
			DOWN = true;
		}else{
			DOWN = false;
		}

		if (objParent.y < y + 2){
			UP = true;
		}else{
			UP = false;
		}
	}

	if (LEFT){
		image_xscale = -baseScale;
		x -= baseSpeed;
	}

	if (RIGHT){
		image_xscale = baseScale;
		x += baseSpeed;
	}

	if (UP){
		//image_xscale = -baseScale;
		y -= baseSpeed;
	}

	if (DOWN){
		//image_xscale = baseScale;
		y += baseSpeed;
	}

	if (!LEFT && !RIGHT && !UP && !DOWN){
		image_speed = 0;
		image_index = 0;
	}else{
		image_speed = baseImgSpeed;
	}
}else if (room == rmSpace){
	
}


