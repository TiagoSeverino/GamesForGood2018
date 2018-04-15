/// @description Insert description here
// You can write your code in this editor

if (!isPlaced){
	x = mouse_x;
	y = mouse_y;
	
	if (mouse_check_button(mb_left)){
		isPlaced = true;
	}
}else{
	if (ocupiedVolunteers < maxVolunteers){
		if (instance_exists(objFood)){
			if distance_to_object(instance_nearest(x, y, objFood)) < 150
			{
				ocupiedVolunteers++;
				obj = instance_create_depth(x, y, -1, objPlayer);
				obj.objParent = instance_nearest(x, y, objHouse);
			}
		}
	}
}