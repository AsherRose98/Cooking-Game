
for(i=0;i<argument_count;i++){
	draw_text_color(0,i*15,argument[i],c_white,c_white,c_white,c_white,1)
}

/*
//Create Global list of Comments if not already created
if(!variable_global_exists("_DebugList")){
	globalvar _DebugList;
	_DebugList = [];
}

//Get the new arguments to be added to the list 
//If fuction is called for the first time
for(var i=0;i<argument_count;i++){
	_DebugList[i+array_length_1d(_DebugList)] = string(instance_id)+": "+argument[i];
}


//Draw text
for(var i=0;i<array_length_1d(_DebugList);i++){
	draw_text_color(0,i*15,_DebugList[i],c_white,c_white,c_white,c_white,1)
}
