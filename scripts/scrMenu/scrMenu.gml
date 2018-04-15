switch (mpos)
{
case 0:
{
room_goto(rmCatchFood);
break;
}
case 1:
{
room_goto(rmFWD);
break;
}
case 2:
{
room_goto(rmSpace);
break;
}
case 3:
{
game_end();
break;
}
default:break;
}
