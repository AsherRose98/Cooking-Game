/// @description Move Item to slot on table

if(mouse_check_button_released(mb_left)){
	if(place_meeting(x,y,par_food)){
		draw_debug_messages("true");
		var food = instance_nearest(mouse_x,mouse_y,par_food);
		var slot = instance_nearest(food.x,food.y,array);
		
		food.x = slot.x
		food.y = slot.y
	}
}