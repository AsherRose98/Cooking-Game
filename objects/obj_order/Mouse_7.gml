/// @description Let go of order

if(is_being_dragged){
	is_being_dragged = false;
	if(place_meeting(x,y,correct_surface)){
				//Get the surface that the object can be placed on
				var surface = instance_place(x,y,correct_surface)
				//The new location that the object will be placed on
				var new_x = -1; 
				var new_y = -1;
				//Check for a surface array that is empty
				with(surface.array){
					if(!is_full){
						new_x = x;
						new_y = y;
						break;
					}
				}
				//If there is no room for another item
				if(new_x ==-1){
					if(fail_reason<0)
						fail_reason = PENALTY_WAS_DROPPED
					is_thrown_out = true;
				//Set the x and y to new location
				}else{
					x = new_x
					y = new_y
				}
	}else{
		is_thrown_out = true;
	}
}