/// @description check room + changes to food

if (room == rmCatchFood){
     
}else if (room == rmFWD){
	
}else if (room == rmSpace){
	image_angle += spin;
	if global.vacuum
	{	
		var d = point_distance(x,y,objShip.x, objShip.y);
		if d < 350
		move_towards_point(objShip.x, objShip.y, 100/sqr(d>>4))
	}	
}
