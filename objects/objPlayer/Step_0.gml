/// @description Insert description here
// You can write your code in this editor
MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);
FIRE = keyboard_check(vk_space);
 image_speed=0;
//Move Player
if (MOVELEFT && x > sprite_width/2) 
{ 
	if !place_meeting(x - 0, y, objBAlimentar) x -=playerSpeed;
	//x -=playerSpeed;
	image_xscale = -0.35;
	image_speed = 3;
}
 
if (MOVERIGHT && x < room_width - sprite_width/2) 
{ 
	x +=playerSpeed;
	image_xscale = +0.35;
	image_speed = 3;

}
