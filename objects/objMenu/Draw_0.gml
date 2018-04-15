/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontMenu);
draw_set_color(c_black);

var m;
for (m=0;m<array_length_1d(menu);m+=1)
{
	draw_text(room_width/2,room_height/2+(m*48),string(menu[m]))
}

draw_sprite(sprite_index,0,room_width/2-128,room_height/2+((mpos+1)*space)-48);


