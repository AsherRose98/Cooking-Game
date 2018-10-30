/// @description Draw Menu
draw_set_font(font_money);
draw_text(x+20,y+10,"Goal: $"+string(LV1_GOAL/100));
draw_text(x+20,y+30,"Moneys: $"+string(score/100));