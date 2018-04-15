/// @description destroy both/ damage ship

if(Hp > 0)
{
	Result = Hp - Damage;
	if(Result > 0)
	{
		objShip.Hp = Result;
		instance_destroy(instance_nearest(x,y,objTrash),ev_destroy);
	}
	else if(Result <= 0)
	{
		objShip.Hp = 0;
		instance_destroy(instance_nearest(x,y,objTrash),ev_destroy);
		instance_destroy();
	}
}