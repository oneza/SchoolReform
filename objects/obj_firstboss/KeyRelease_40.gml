if (instance_exists(obj_player)) 
{ 
	var nearest_player = instance_nearest(x, y, obj_player)
	if nearest_player.is_challenging
	{
		nearest_player.image_index= 0
	}
}