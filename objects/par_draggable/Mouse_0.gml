/// @description Drag item
if(!game_over){
	if(!is_being_dragged){
		if(is_in_menu){
			is_being_dragged = true;
			is_on_surface = false;
			audio_play_sound(sfx_item_drag,64,0)
		}else if(!obj_fridge.menu_is_showing){
			var dont_drag_me = false;
			with(par_draggable){
				if(is_being_dragged)
					dont_drag_me = true;
			}
			with(obj_order){
				if(is_being_dragged)
					dont_drag_me = true
			}

			if(!dont_drag_me){
				is_being_dragged = true
				is_on_surface = false
				audio_play_sound(sfx_item_drag,64,0)
			}
		}
	}
}