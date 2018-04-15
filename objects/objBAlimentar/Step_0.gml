/// @description Insert description here
// You can write your code in this editor

if (room == rmFWD){
	if (ocupiedVolunteers < maxVolunteers){
		if (instance_exists(objFood)){
			if distance_to_object(instance_nearest(x, y, objFood)) < 350
			{
				ocupiedVolunteers++;
				instance_create_depth(x, y, -1, objPlayer);
			}
		}
	}
}