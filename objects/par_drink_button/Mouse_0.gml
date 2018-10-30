/// @description Turn on drink machine

if(!game_over){
	var click_me = true
	with(par_draggable){
		if(is_being_dragged)
			click_me = false;
	}
	with(obj_order){
		if(is_being_dragged)
			click_me = false;
	}


	if(click_me){
		obj_drinks_station.is_filling_cup = true;
		var drink = instance_nearest(x,y,par_drink)
		if(instance_exists(drink)){
			drink.sprite_index = drink_color;
		}
	}
}