/// @description Insert description here
// You can write your code in this editor

if (room == rmCatchFood){
      A=true;
    if(!instance_exists(objFood))
	{
		for (i = 1; i < 10; i++)
        {
			spawn= irandom_range(1,4);
			if(spawn==1)
			{
			obj = instance_create_layer(random_range(1560,1860), 0, "Instances", objFood);
			}else if(spawn==2)
			{
			obj = instance_create_layer(random_range(350,670), 0, "Instances", objFood);
			}else
			{
			obj = instance_create_layer(random_range(970,1460), 0, "Instances", objFood);
			}
			
			obj.speed = random_range(2,6);
			obj.direction = 270;
			randomize();
			//show_debug_message(spawn);
        }
	}

}else if (room == rmFWD){
	for(i = 0; i <= foodAmmount; i++)
	{
		obj = instance_create_layer(-64, 0, "Instances", objFood);
		obj.alarm[0] = i * room_speed * 0.35 + 1;
	}
	foodAmmount *= 1.5;
	hasFoodSpawned = false;
}else if (room == rmSpace){
	
}