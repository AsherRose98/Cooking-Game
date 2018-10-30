/// @param array
/// @param value

var array = argument0
var check = argument1

for(var i=0;i<array_length_1d(array);i++){
	if(array[i]==check){
		return true;
	}
}
return false;