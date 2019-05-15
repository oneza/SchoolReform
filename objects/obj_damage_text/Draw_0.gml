draw_set_font(font_damage_value);

switch (damage_dealer) {
    case 0:
        if crit
		{
			draw_color = c_yellow
			scaleX = 1.2
			scaleY = 1.2
		}
		else
		{
			draw_color = c_white
			scaleX = 0.7
			scaleY = 0.7
		}
        break;
    case 1:
        if crit
		{
			draw_color = c_red
			scaleX = 1.2
			scaleY = 1.2
		}
		else
		{
			draw_color = c_red
			scaleX = 0.7
			scaleY = 0.7
		}
        break;		
}


draw_text_transformed_colour(x, y, damage_value, scaleX, scaleY, 0, draw_color, draw_color, draw_color, draw_color, alpha)
