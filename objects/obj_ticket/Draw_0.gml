/// @description Draw Order

var spacing_ratio = 3.5
var size_ratio = 0.8

draw_self();

//Detect Order Completion
var my_current_orders = current_orders
var number_of_correct_orders = 0;

with(obj_array_winodw){
	if(is_full){
		var order_being_checked = instance_place(x,y,obj_order)
		if(order_being_checked!=noone){
			if(array_check_contains_array(my_current_orders,order_being_checked.current_ingredients))
			{
			//If the item matches one in the array
				number_of_correct_orders++;
			}else{
			//If the item does NOT match one in the array
				order_being_checked.is_thrown_out = true;
				order_being_checked.fail_reason = PENALTY_WRONG_ORDER;
			}
		}
	}
}
//Check that the number of correct orders is the same 
//as the number of items in the order
	if(number_of_correct_orders==array_length_1d(current_orders)){
		order_is_complete = true;
	}else{
		order_is_complete = false;
	}

if(order_is_complete){
	//Go through each order to get it's price
	for(var i = 0;i<array_length_1d(current_orders);i++){
		var order_being_checked = current_orders[i];
		//Cycle through list to get price
		for(var j =0;j<array_length_1d(list_of_orders);j++){
			var order_in_list = list_of_orders[j]
			if(string(order_being_checked)==string(order_in_list[0])){
				var price = order_in_list[1]
				score+=price;
			}
		}
	}
	//Destroy the order
	with(obj_array_winodw){
		if(is_full){
			instance_destroy(instance_nearest(x,y,obj_order));
		}
	}
	
	order_is_complete = false;
	current_orders = order_genorate(list_of_orders);
	audio_play_sound(sfx_ding,64,0)
}










//Draw Orders

for(var j=0;j<array_length_1d(current_orders);j++){
	
	var order = current_orders[j]
	var sprite_size = 30
	if(array_length_1d(current_orders)%2==0){
		var offset = (array_length_1d(current_orders))/2*(sprite_size/2)+array_length_1d(current_orders)*2
					-j*sprite_size
					//+sprite_size*size_ratio/2;
	}else{
		var offset = (array_length_1d(current_orders)-1)/2*sprite_size
					-j*sprite_size;
	}
	for(var i = 0;i<array_length_1d(order);i++){
		var spacing = i*spacing_ratio
		var current_sprite = order[i]
		
		var draw_x = x-sprite_get_width(current_sprite[0])*size_ratio/2+
					sprite_width/2-
					offset;
				
		var draw_y =y-sprite_get_height(current_sprite[0])*size_ratio/2+
					array_length_1d(order)*spacing_ratio/2+
					sprite_height/2
				
		draw_sprite_ext(current_sprite[0],current_sprite[1],draw_x,draw_y-spacing,size_ratio,size_ratio,0,c_white,1)
	}
}