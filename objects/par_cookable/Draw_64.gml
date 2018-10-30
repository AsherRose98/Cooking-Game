/// @description Cook item DEBUG
if(!game_over){
	event_inherited()

	var if_drink_being_filled = true;
	if(object_get_parent(object_index)==par_drink){
		if_drink_being_filled=obj_drinks_station.is_filling_cup 
	}

	if(is_on_surface&&(place_meeting(x,y,par_cookers)&&if_drink_being_filled)){
		is_cooking = true;
	}else{
		is_cooking = false;
	}

	if(if_drink_being_filled&&!play_sound&&is_on_surface&&(place_meeting(x,y,par_cookers))){
		if(object_get_parent(object_index)!=par_drink){
			audio_play_sound(sfx_on_grill,8,0)
		}else{
			audio_play_sound(sfx_drink_fill,8,0)
		}
		play_sound = true;
	}

	if(is_cooking){
		if(cooking_timer<0){
			if(cooking_stage<array_length_1d(cooking_time_array)-1){
				cooking_stage++;
				cooking_timer = cooking_time_array[cooking_stage]*room_speed
				image_index = cooking_stage;
			}
		}else{
			if(correct_surface!=noone)
				cooking_timer--;
		}
	}

	if(cooking_stage== image_number-2){
		correct_surface = obj_countertop;
	}else if(cooking_stage== image_number-3){
			if(object_get_parent(object_index)==par_drink){
			fail_reason = PENALTY_UNDERFILLED
		}else{
			fail_reason = PENALTY_UNDERCOOKED
		}
	}else if(cooking_stage== image_number-1){
		if(object_get_parent(object_index)==par_drink){
			fail_reason = PENALTY_OVERFILLED
		}else{
			fail_reason = PENALTY_BURT_FOOD
			effect_create_above(ef_smokeup,x+sprite_width/2,y+sprite_height/2,0.33,c_gray)
		}
		correct_surface = noone;
	}
}