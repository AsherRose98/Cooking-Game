/// @description set vars
event_inherited();
current_ingredients =[] 
correct_surface = obj_window
list_order_top = [spr_bun_top,spr_lid_small,spr_fries]
list_order_bottom = [spr_bun_bottom,
					spr_cup_small_blue,spr_cup_small_cyan,spr_cup_small_red,spr_cup_small_yellow,
					spr_fries_tray,spr_fries]
order_is_complete = false;

is_being_dragged = false;
is_thrown_out = false;
cannot_be_moved = false;
penalty = 0;
fail_reason = -1;