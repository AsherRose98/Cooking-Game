var text_x = argument0
var text_y = argument1
var fail_reason = argument2
var pen = argument3

var text = ""

switch(fail_reason){
	case(PENALTY_WRONG_ORDER):
		text="Wrong Order!"
	break;
	case(PENALTY_WAS_DROPPED):
		text="Slippery Hands!"
	break;
	case(PENALTY_OVERFILLED):
		text="That's too much..."
	break;
	case(PENALTY_UNDERFILLED):
		text="That's not nearly enough..."
	break;
	case(PENALTY_BURT_FOOD):
		text="Crispy... too crispy..."
	break;
	case(PENALTY_UNDERCOOKED):
		text="Still too raw..."
	break;
	case(PENALTY_DELETED):
		text="Didn't feel right..."
	break;
	default:
		text="Oh noes..."
	break;
}

draw_set_font(font_penalty);
draw_text(text_x, text_y+image_alpha*20, text)
draw_text(text_x, text_y+20+image_alpha*20, "-"+string(pen/100))
