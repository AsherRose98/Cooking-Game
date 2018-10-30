//Params
var number_of_boxes = argument0
var box = argument1
var array = argument2
var color = argument3
	
//Self values
var box_lenght = sprite_get_width(object_get_sprite(box));
var padding = box_lenght/2
var length =number_of_boxes*box_lenght+
			(number_of_boxes+1)*(padding);
var rect_x1 = (room_width-length)/2;
var rect_x2 = rect_x1+length;
var rect_y1 = (room_height-length)/2;
var rect_y2 = rect_y1+length;

draw_rectangle_color(rect_x1,rect_y1,rect_x2,rect_y2,
					 color,color,color,color,
					false);
						
var instance_row = -1;

if(!instance_exists(box)){
	for(var i=0;i<number_of_boxes*number_of_boxes;i++){	
		//Set the curent column
			var instance_column = i%number_of_boxes
		//Set the current row
			if(instance_column==0) instance_row++
		//Set x and y value
			var box_x = (box_lenght+padding)*instance_column+padding+rect_x1;
			var box_y = (rect_y1+padding)+(box_lenght+padding)*instance_row;
		//Create a Box
			instance_create_depth(box_x,box_y,-255,box)
		//Create item in Box 
			if(i<array_length_1d(array)){
				var item = array[i]
				var item_length = sprite_get_width(object_get_sprite(item));
				instance_create_depth(
										box_x+(box_lenght-item_length)/2,
									  box_y+(box_lenght-item_length)/2,
									  -256,
									  array[i])
			}
		}
}

return [rect_x1,rect_y1,rect_x2,rect_y2]