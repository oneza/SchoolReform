if(showInv == true){
	for(i = 0; i < maxItems; i++){
		if(global.inventory[i] == 5)
		{
			if locked
			{
				locked = false
				scr_itemdrop(5)
			}

		}
	}

}

if keyboard_check(ord("E")) && !locked
{
	room_goto(destination);
}