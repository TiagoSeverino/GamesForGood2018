/// @description destroy


if (room == rmCatchFood){
     
}else if (room == rmFWD){
	
}else if (room == rmSpace){
	if(instance_exists(objShip))
	{
	score += 10;
	}
	repeat (random_range(2,4))
	{
		instance_create_layer(x,y,"Instances",objFood)
		{		
			direction = instance_nearest(x,y,objTrash.direction);
			speed = instance_nearest(x,y,objTrash.speed);
			motion_add(random(360),random_range(0.15,0.2));			
		}	
	}
}


