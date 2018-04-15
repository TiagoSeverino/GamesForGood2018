/// @description Insert description here
// You can write your code in this editor

baseScale = 0.35;
baseImgSpeed = 1;
baseSpeed = 10;

image_xscale = baseScale;
image_yscale = baseScale;
image_speed = 0;


if (room == rmCatchFood){
     baseSpeed = 10;
	 baseImgSpeed = 3;
}else if (room == rmFWD){
	baseSpeed = 4;
	hasFood = false;
	objParent = instance_nearest(x, y, objBAlimentar);
}else if (room == rmSpace){
	
}