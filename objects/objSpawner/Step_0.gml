/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape)){
	room_goto(rmMain);
}

if (keyboard_check_pressed(ord("F"))){
	window_set_fullscreen(!window_get_fullscreen());
}


if (room == rmCatchFood){
      if (A==true)
	{
	alarm[0] = 15*room_speed;
	A=false;
	}

}else if (room == rmFWD){
	if (!hasFoodSpawned){
		if (!instance_exists(objFood)){
			alarm[0] = room_speed * 2;
			hasFoodSpawned = true;
		}
	}
}else if (room == rmSpace){
	if(!instance_exists(objTrash) and instance_exists(objShip))
	{
	LixoQty += 5;
	repeat (LixoQty)
	{
		do {
			newX = random(room_width);
			newY = random(room_height);
			}
		until (point_distance(newX,newY,objShip.x,objShip.y) > 150)
		with (instance_create_layer(newX,newY,"Instances",objTrash)){}
	}	
}

}