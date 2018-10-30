/// @description Release Item
if(!game_over){
	if(is_being_dragged){

		is_on_surface = true;
	
		if(place_meeting(x,y,correct_surface)){
			//Get the surface that the object can be placed on
			var surface = instance_place(x,y,correct_surface)
			//The new location that the object will be placed on
			var new_x = -1; 
			var new_y = -1;
			//Check for a surface array that is empty
			if(correct_surface != obj_countertop){
				with(surface.array){
					if(!is_full){
						new_x = x;
						new_y = y;
						break;
					}
				}
			}
			//If there is no room for another item
			if(new_x ==-1){
				is_thrown_out = true;
			//Set the x and y to new location
			}else{
				x = new_x
				y = new_y
			}
		//If the item is let go outside of the correct surface
		}else if(!is_in_menu){
			is_thrown_out = true;
			fail_reason = PENALTY_WAS_DROPPED
		}
		is_being_dragged = false;
	}
}