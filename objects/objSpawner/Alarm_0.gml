/// @description Insert description here
// You can write your code in this editor

if (room == rmCatchFood){
     
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