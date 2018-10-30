/// @description Draw_self

if(current_ingredients!=[]){
	var size = array_length_1d(current_ingredients)
	var spacing = 5
	for(var i = 0;i<size;i++){
		var ingr = current_ingredients[i]
		draw_sprite_ext(ingr[0],ingr[1],x,y-i*spacing,1,1,0,c_white,image_alpha)
	}

	
}


//Drop

if(is_thrown_out){
	if(image_alpha>0){
		image_alpha-=0.1
		draw_drop_text(x,y,fail_reason,penalty);
	}else{
		score -= penalty;
		instance_destroy(self);
	}
}