/// @description check room + changes to food

if (room == rmCatchFood){
      if(y > 1000)
	{
	speed = 0;
	if (A==true)
	{
	alarm[0] = 5*room_speed
	A=false
	}
	score = 0;

	}
	if place_meeting(x, y, objPlayer)
	{
		global.comidaApanhada += 1;
		instance_destroy();
	}

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
