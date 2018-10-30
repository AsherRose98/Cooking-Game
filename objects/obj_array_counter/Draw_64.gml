/// @description DEBUG

/// @description add item to burger
event_inherited();
var item = instance_nearest(x,y,par_food);
var failure = false;

if(place_meeting(x,y,par_food)&&item.correct_surface==obj_countertop){
	var order;
	if(!item.is_being_dragged){
		//If Order doesn't exist
		if(!place_meeting(x,y,obj_order)){
			order = instance_create_depth(x,y,-10,obj_order);
			if(!array_contains_item(order.list_order_bottom,item.sprite_index)){
				item.is_thrown_out = true;
				failure = true;
				instance_destroy(order);
			}
		}else{
		//If order has already been created
			order = instance_nearest(x,y,obj_order);
			for(var i = 0;i<array_length_1d(order.list_order_bottom);i++){
				if(	array_contains_item(order.current_ingredients, order.list_order_bottom[i])&&
					!is_full){
						failure = true;
						var new_spot = instance_nearest(x+255,y,obj_array_counter)
						item.x = new_spot.x
						item.y = new_spot.y;
						
				}
			}
		}
		if(instance_exists(order)){
			order.penalty+=item.penalty;
		}

		if(!failure){
			var add_sprite = item.sprite_index;
			var index = item.image_index;
		
			var current_order_length = array_length_1d(order.current_ingredients)
			order.current_ingredients[current_order_length] = [add_sprite,floor(index)];
		
			instance_destroy(item);
			is_full = true;
		}
	}
}

if(place_meeting(x,y,obj_order)){
	is_full = true;
}