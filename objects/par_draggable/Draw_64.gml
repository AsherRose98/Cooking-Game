//throw out item
if(is_thrown_out){
	if(image_alpha>0){
		if(image_alpha!=1){
			draw_drop_text(x,y,fail_reason,penalty);
		}
		image_alpha-=0.1
	}else{
		score -= penalty;
		instance_destroy(self);
	}
}