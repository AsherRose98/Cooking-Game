var box = argument0;
var array = argument1;

instance_destroy(box)
for(var i=0;i<array_length_1d(array);i++){
	with(array[i]){
		if(!is_being_dragged&&is_in_menu){
			instance_destroy(self);
		}
	}
}