/// @description Insert description here
// You can write your code in this editor

var background = draw_sprite(spr_timerbackground,0,20,0);
var foreground = draw_sprite_ext(spr_timerforeground,0,20,0,time/divisor,1,0,c_blue,1);
var outline = draw_sprite(spr_timeroutline,0,0,0);
var sprite

if(game_over){
	if(score >= LV1_GOAL){
		sprite = spr_you_win
	}else{
		sprite = spr_game_over
	}
	draw_sprite_ext(sprite,0,room_width/2,room_height/2,5,5,0,c_white,1)
}