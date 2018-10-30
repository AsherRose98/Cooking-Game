/// @description Drag Item Code

if(!game_over){

	//Drag Item
	if(is_being_dragged){
		x = mouse_x-sprite_width/2
		y = mouse_y-sprite_height/2
		depth = -255
	}

	//Take out of Menu
	if(!place_meeting(x,y,obj_menu_boxes)){
		is_in_menu = false;
		depth = -10;
	}
}