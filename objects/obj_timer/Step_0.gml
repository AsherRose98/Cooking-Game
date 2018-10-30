/// @description Insert description here
// You can write your code in this editor
//Timer

if(!game_over){
	if(time>0){
		time -= 1;
		divisor += 1;
		true_time = time/30;
	}else{
		game_over = true;
	}
}