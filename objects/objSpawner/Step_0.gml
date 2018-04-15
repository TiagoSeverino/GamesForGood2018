/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape)){
	room_goto(rmMain);
}

if (room == rmCatchFood){
     
}else if (room == rmFWD){
	if (!hasFoodSpawned){
		if (!instance_exists(objFood)){
			alarm[0] = room_speed * 2;
			hasFoodSpawned = true;
		}
	}
}else if (room == rmSpace){
	
}