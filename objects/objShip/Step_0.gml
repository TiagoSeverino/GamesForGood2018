/// @description move

image_angle = Facing;	

if(keyboard_check(vk_left))
{
	Facing += Turn;
}	
if(keyboard_check(vk_right))
{
	Facing -= Turn;
}
if(keyboard_check(vk_up))
{	
	motion_add(Facing, Accel);
	if(speed > 5) { speed = MaxSpeed };	
}
if(keyboard_check(vk_down))
{	
	motion_add(Facing, -Accel);
	if(speed > 5) { speed = MaxSpeed };
}
if(keyboard_check(vk_space))
{		
	if(CanShoot = true)
	{
		with(instance_create_layer(x,y,"Instances",objBullet))
		{
			direction = objShip.Facing;			
			speed = objShip.speed + 5;
			motion_add(objShip.Facing,5)			
		};
		CanShoot = false;
		alarm[0] = 8;
	}	
}
if(keyboard_check(vk_shift))
{
	global.vacuum = true;
}
else
{
	global.vacuum = false;
}
speed = max(speed - 0.01 , 0);
if(keyboard_check(vk_control))
{instance_destroy();}
	