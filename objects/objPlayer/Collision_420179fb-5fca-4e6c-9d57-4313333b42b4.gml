/// @description Insert description here
// You can write your code in this editor

if (room == rmCatchFood){

}else if (room == rmFWD){
	if (!hasFood){	
		hasFood = true;
		with(other){
			instance_destroy();
		}
	}
}else if (room == rmSpace){
	
}