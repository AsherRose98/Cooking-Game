var array_of_array = argument0
var check_array = argument1

for(var i=0;i<array_length_1d(array_of_array);i++){
	if(array_check_against_array(array_of_array[i],check_array)){
		//draw_debug_messages(string(array_of_array[i]),string(check_array));
		return true;
	}
}
return false;