/// @description Insert description here
// You can write your code in this editor

active = false

enum cardinal {
   NORD,
   EST,
   SUD,
   OUEST,
   NONE
}

//direction_1 = irandom_range(0,2)

//direction_2 = irandom_range(direction_1+1,3)

pindex = irandom_range(0,5)

direction_1 = cardinal.NORD;
switch pindex
{
	case 0:
		direction_2 = cardinal.EST;
		break;
	case 1:
		direction_2 = cardinal.SUD;
		break;
	case 2:
		direction_2 = cardinal.OUEST;
		break;
	case 3:
		direction_1 = cardinal.EST;
		direction_2 = cardinal.SUD;
		break;
	case 4:
		direction_1 = cardinal.EST;
		direction_2 = cardinal.OUEST;
		break;
	case 5:
		direction_1 = cardinal.SUD;
		direction_2 = cardinal.OUEST;
		break;
	
	
	
}


image_speed = 0;

direction_in = cardinal.NONE; 
direction_out = cardinal.NONE;


switch direction_1
{
	case cardinal.NORD :
		switch(direction_2)
		{
			case cardinal.EST:
				sprite_index = spr_curved
				image_xscale = -1
				break;
			case cardinal.SUD:
				sprite_index = spr_straight
				break;
			case cardinal.OUEST:
				sprite_index = spr_curved
				break;
		}
		break;
	case cardinal.EST :
		switch(direction_2)
		{
			case cardinal.SUD:
				sprite_index = spr_curved
				image_xscale = -1
				image_yscale = 1
				image_angle = 270
				break;
			case cardinal.OUEST:
				sprite_index = spr_straight
				image_angle = 270
				break;
		}
		break;
	case cardinal.SUD : // direction_2 = OUEST
	    sprite_index = spr_curved
		image_yscale = -1
		break;
	
}