randomize();
if(!audio_is_playing(background_music))
	audio_play_sound(background_music,1,1)

#macro COOKING_RAW 0
#macro COOKING_MED 1
#macro COOKING_DONE 2
#macro COOKING_BURNT 3

#macro BURG_BUN_BOTTOM 0
#macro BURG_PATTY 1
#macro BURG_LETTCUS 2
#macro BURG_TOMATOS 3
#macro BURG_KETCHUP 4
#macro BURG_MUSTARD 5
#macro BURG_BUN_TOP 6

#macro PENALTY_WRONG_ORDER 0
#macro PENALTY_WAS_DROPPED 1
#macro PENALTY_BURT_FOOD 2
#macro PENALTY_OVERFILLED 3
#macro PENALTY_UNDERCOOKED 4
#macro PENALTY_UNDERFILLED 5
#macro PENALTY_DELETED 6

#macro LV1_GOAL 20*100

globalvar game_over;
game_over = false;