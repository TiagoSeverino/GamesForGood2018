/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left))
{
	if (position_meeting(mouse_x, mouse_y, objVanCreator)){
			isEnabled = true;
			obj = instance_create_layer(mouse_x, mouse_y, "Instances", objVan);
			obj.objParent = instance_nearest(x, y, objVanCreator);
	}
	if (isEnabled){
		isEnabled = false;
	}
}