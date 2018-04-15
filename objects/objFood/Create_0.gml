/// @description Insert description here
// You can write your code in this editor
sprite_index = random_range(sprCarrot, sprMeat + 1);

randomize();
if (room == rmSpace)
{
	image_speed = 0;
	scale = 2;
	image_xscale = choose(scale,-scale);
	image_yscale = choose(scale,-scale);	
	spin = random_range(-2,2);
	motion_set(random(360),random(1));
	
}else if (room==rmCatchFood)
{
	A=true;
}

else
{
	image_xscale = 2;
	image_yscale = 2;
	image_speed = 0.5;
}

global.comidaApanhada = 0;