y -= 1
if alarm[0] == -1
{
	alarm[0] = random_range(0.1, 0.3) * room_speed
	hsp = random_range(-0.5, 0.5)
}
x += hsp

//if scaleX > 0.7
//{
//	scaleX -= 0.1	
//	scaleY -= 0.1
//}

alpha -= 0.02
if alpha <= 0
{
	instance_destroy()	
}