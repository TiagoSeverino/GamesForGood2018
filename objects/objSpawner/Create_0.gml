/// @description Insert description here
// You can write your code in this editor
if room==rmCatchFood
{
     if(!instance_exists(objFood))
	{
		for (i = 0; i <= 5; i++)
        {
			obj=instance_create_layer(random(room_width),0,"Instances",objFood);
			obj.speed =random_range(2,6);
			obj.direction = 270;
        }
	}
}