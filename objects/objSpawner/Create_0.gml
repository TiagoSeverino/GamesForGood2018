/// @description Insert description here
// You can write your code in this editor

foodAmmount = 5;
hasFoodSpawned = true;

if (room == rmCatchFood){
			A=false;
alarm[0]=1;

    if(!instance_exists(objFood))
	{
		for (i = 0; i <= 5; i++)
        {
			obj = instance_create_layer(random(room_width), 0, "Instances", objFood);
			obj.speed = random_range(2,6);
			obj.direction = 270;
        }
	}
}else if (room == rmFWD){
	alarm[0] = room_speed * 2;
}else if (room == rmSpace){
	LixoQty = 0;
}