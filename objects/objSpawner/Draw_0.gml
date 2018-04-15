/// @description Insert description here
// You can write your code in this editor
//draw_text(10, 10, score);


draw_set_font(fontMenu);
draw_set_color(c_green);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.7);
draw_text(10,10,"Pontos: "+ string(score));

if(room == rmSpace)
{
//Health Bar
var pc;
if(instance_exists(objShip))
{
pc = (objShip.Hp / objShip.MaxHP) * 100;
draw_healthbar(room_width-80, room_height-50, room_width-94, 200, pc, c_red, c_lime, c_lime, 2, false, false)
}
else 
{
draw_healthbar(room_width-80, room_height-50, room_width-94, 200, 0, c_red, c_lime, c_lime, 2, false, false)
}
if(!instance_exists(objShip))
{	
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width/2,(room_height/2) -35, "Game Over!")
	draw_set_color(c_green);
	draw_text(room_width/2,room_height/2, "Pressione R para recomeçar.")
}	

draw_set_font(fontUI);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(1);
draw_text(room_width-85, room_height-20,"HP");
}