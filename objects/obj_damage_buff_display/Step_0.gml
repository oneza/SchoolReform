current_buff_duration -= 100/(obj_player.damage_buff_duration * room_speed)
if (current_buff_duration < 0) {
    instance_destroy(self)
}
