var drop_loot = 0
switch (global.inventory[argument0]) {
    case 3:
        drop_loot = obj_dildo
        break;
    case 4:
        drop_loot = obj_baseballbat
        break;
    case 5:
        drop_loot = obj_key
        break;
}
var inst = instance_create_layer(x - 8, y + 32, "Instances_active", drop_loot)
inst.lootable = false
inst.alarm[0] = room_speed