/// @description check item on stove

var food = instance_nearest(x,y,par_food)
var order = instance_nearest(x,y,obj_order)
if((place_meeting(x,y,par_food)&&!food.is_being_dragged&&!food.is_in_menu)||
	(place_meeting(x,y,obj_order)&&!order.is_being_dragged)){
	is_full = true;
}else{
	is_full = false;
}