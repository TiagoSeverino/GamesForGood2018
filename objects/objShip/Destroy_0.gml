/// @description destroy

Hp = 0;
repeat (2000)
{
	instance_create_layer(x,y,"Instances",objExplosion)
	{
		direction = objShip.direction;
		speed = objShip.speed;		
		motion_add(random(360), 2);
	}	
}
