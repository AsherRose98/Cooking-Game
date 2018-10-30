/// @description Set Order Arrays
randomize();

var bottom_bun = [spr_bun_bottom,0]
var patty = [spr_patty,2]
var top_bun = [spr_bun_top,0]
var lettus = [spr_letchus,0]
var tomato = [spr_tomato,0]
var cheese = [spr_cheese,0]
var bacon = [spr_bacon,2]
var pickel = [spr_pickles,0]
var onions = [spr_onions,0]
var s_c_cup = [spr_cup_small_cyan,3]
var s_r_cup = [spr_cup_small_red,3]
var s_b_cup = [spr_cup_small_blue,3]
var s_y_cup = [spr_cup_small_yellow,3]
var s_lid = [spr_lid_small,0]

var fry_tray = [spr_fries_tray,0]
var fries = [spr_fries,2]



list_of_orders = [
					[ [ bottom_bun, patty, top_bun ],	350 ],
					[ [ bottom_bun,patty,lettus,top_bun ],	375 ],
					[ [ bottom_bun,patty,tomato,lettus,top_bun],400],
					[ [ bottom_bun,patty,onions,lettus,top_bun],380],
					[ [ bottom_bun,patty,pickel,tomato,top_bun],450],
					[ [ bottom_bun,patty,cheese,top_bun],250],
					[ [ bottom_bun,bacon,cheese,patty,top_bun],250],
					[ [ bottom_bun,bacon,lettus,tomato,top_bun],250],
					[ [ s_c_cup,s_lid],150],
					[ [ s_r_cup,s_lid],150],
					[ [ s_b_cup,s_lid],150],
					[ [ s_y_cup,s_lid],150],
					[ [ fry_tray,fries],150],
					
				 ]

current_orders = order_genorate(list_of_orders);
				 
order_is_complete = false;