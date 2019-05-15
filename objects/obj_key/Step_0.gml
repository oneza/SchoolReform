if !place_meeting (x, y + 1, obj_floor)
{
	speed_v = speed_v + gravity_value ;
}
if place_meeting(x, y+speed_v, obj_floor) 
{
	speed_v = 0;
}
y += speed_v;