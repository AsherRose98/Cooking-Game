/// @description Dragging
if(!is_being_dragged){
	var only_one_being_draged = true;
	with(obj_order){
		if(is_being_dragged)
		only_one_being_draged = false
	}
	if(!obj_fridge.menu_is_showing&&order_is_complete&&only_one_being_draged&&!cannot_be_moved){
		var drag = true;

		with(par_draggable){
			drag=(is_being_dragged)?false: true;
		}

		if(drag){
			is_being_dragged = true;
			audio_play_sound(sfx_item_drag,64,0)
		}
	}
}