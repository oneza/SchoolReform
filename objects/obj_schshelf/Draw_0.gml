draw_self()

if instance_exists(obj_player) 
{
	var nearest_enemy =  collision_rectangle(x - 150, y - 50, x + 150, y + 50, obj_enemy_weak, false, true)
	if abs(obj_player.x - x) < 12 && abs(obj_player.y - y) < 40 && !obj_player.in_combat && nearest_enemy == noone && !opened
	{
		draw_sprite_ext(spr_qte_e, 0, x - 10, y - 70, 0.4, 0.4, 0, c_white, 1)
		player_can_open = true
	}
	else
	{
		player_can_open = false	
	}
	
}
//draw_text(x, y - 60, abs(nearest_enemy.y - y))