/// @description destroy

if(instance_exists(objShip))
{
score += 10;
}
repeat (random_range(2,4))
{
	instance_create_layer(x,y,"Instances",objFood)
	{
		objFood.image_speed = 0;
		direction = instance_nearest(x,y,objTrash.direction);
		speed = instance_nearest(x,y,objTrash.speed);
		motion_add(random(360),2);			
	}	
}

