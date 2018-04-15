/// @description check room + changes to food

if (room == rmCatchFood){
     
}else if (room == rmFWD){
	
}else if (room == rmSpace){
	image_angle += spin;
	if global.vacuum
	{	
		var d = point_distance(x,y,objShip.x, objShip.y);
		if d < 256
		move_towards_point(objShip.x, objShip.y, 64/sqr(d>>4))
	}
	else speed=0;
}
