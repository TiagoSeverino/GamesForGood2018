/// @description fade
image_alpha -= 1 / (room_speed * 4);

if (image_alpha < 0)
{
instance_destroy();	
}
