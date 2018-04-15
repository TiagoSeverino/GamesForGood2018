/// @description Insert description here
// You can write your code in this editor
image_speed=0;
image_xscale = 0.45;
image_yscale = 0.45;

if (room == rmCatchFood)
{
	y = 930;
}else if (room == rmFWD){
	ocupiedVolunteers = 0;

	image_speed = 0;
	rand = irandom(100);
	randomize();

	if (rand < 80){
		image_index = 1;
		image_xscale = 0.15;
		image_yscale = 0.15;
		maxVolunteers = 2;
	}else{
		image_index = 0;
		image_xscale = 0.25;
		image_yscale = 0.25;
		maxVolunteers = 1;
	}
}