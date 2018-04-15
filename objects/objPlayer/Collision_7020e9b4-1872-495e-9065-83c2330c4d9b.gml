/// @description Insert description here
// You can write your code in this editor

if (room == rmCatchFood){
score += 10 * global.comidaApanhada;
}else if (room == rmFWD){
	if (hasFood){
		other.ocupiedVolunteers--;
		instance_destroy();
	}
}else if (room == rmSpace){
	
}