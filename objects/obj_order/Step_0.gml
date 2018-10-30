/// @description Detect Complete Burg

if(!order_is_complete){
	var top = current_ingredients[array_length_1d(current_ingredients)-1];
	if(array_contains_item(list_order_top,top[0])){
		order_is_complete = true
	}
}else{
	if(is_being_dragged){
		x = mouse_x-15
		y = mouse_y-15
	}
}
