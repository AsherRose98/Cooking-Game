/// @description Close Menu on click outside
if(!game_over){
	if(menu_is_showing){
		if(variable_instance_exists(self,"menu_points_array")){
			var x1 = menu_points_array[0]
			var y1 = menu_points_array[1]
			var x2 = menu_points_array[2]
			var y2 = menu_points_array[3]

			var is_on_menu =mouse_x>x1&&
							mouse_x<x2&&
							mouse_y>y1&&
							mouse_y<y2
			if(!is_on_menu){				
				menu_is_showing = false;
				audio_play_sound(sfx_door_close,64,0)
				menu_destroy(obj_menu_boxes,container_array)
			}
		}
	}else{
		if(position_meeting(mouse_x,mouse_y, object_index)){
			menu_is_showing = true
			audio_play_sound(sfx_door_open,64,0)
		}
	}
}