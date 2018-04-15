/// @description physx


if (room == rmCatchFood){
     
}else if (room == rmFWD){
	
}else if (room == rmSpace){
	spd = random(2);
	opposite_direction = point_direction(x,y,other.x,other.y) + 180;
	//direction = opposite_direction;
	motion_set(opposite_direction,spd);
}
