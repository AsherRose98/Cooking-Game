/// @description Close menu when object is selected

if(!game_over){
	var destroy = false;
	with(par_draggable){
		if(is_in_menu&&is_being_dragged){
			destroy = true;
		}
	}

	if(destroy&&menu_is_showing){
		menu_is_showing = false;
		menu_destroy(obj_menu_boxes,container_array)
	}
}else{
	if(object_exists(obj_menu_boxes)){
		menu_destroy(obj_menu_boxes,container_array)
	}
}