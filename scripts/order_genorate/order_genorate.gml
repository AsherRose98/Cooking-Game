var order_list = argument0;

var number_of_items = random(3);

var list_of_orders = []

for(var i=0;i<number_of_items;i++){
	list_of_orders[i] = order_get_random(order_list,false,false,false);
}

return list_of_orders