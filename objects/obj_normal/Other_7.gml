/// @description Insert description here
// You can write your code in this editor


image_speed = 0;
image_index = -1 
dx = 0;
dy = 0;
switch direction_out
{
	case cardinal.NORD:
		dy = -64;
		break;
	case cardinal.EST:
		dx = 64;
		break;
	case cardinal.SUD:
		dy = 64;
		break;
	case cardinal.OUEST:
		dx = -64;
		break;
}

suivant = instance_place(x+dx,y+dy,obj_normal)

if suivant != noone
{
	with suivant
	{
		if active
		{
			
			show_debug_message("direction_out "+string(other.direction_out));
			d_in = (other.direction_out+2) mod 4;
			show_debug_message("d_in "+string(d_in));
			if direction_1 == d_in or (direction_2 == d_in)
			{
				
				image_speed = 1;
				direction_in = d_in
				if direction_in == direction_1
				{
					direction_out = direction_2;	
				} else
				{
					direction_out = direction_1;	
				}
				

				switch direction_in
				{
					case cardinal.NORD :
						switch(direction_out)
						{
							case cardinal.EST:
								break;
							case cardinal.SUD:
								break;
							case cardinal.OUEST:
								break;
						}
						break;
					case cardinal.EST :
						switch(direction_out)
						{
							case cardinal.NORD:
								image_xscale = 1;
								image_angle = 270;
								break;
							case cardinal.SUD:
								break;
							case cardinal.OUEST:
								break;
						}
						break;
					case cardinal.SUD : 
						switch(direction_out)
						{
								case cardinal.OUEST:
									break;
								case cardinal.NORD:
									image_yscale = -1;
									break;
								case cardinal.EST:
									image_xscale = 1;
									image_yscale = 1;
									image_angle = 180;
									break;
						}
						break;
		
					case cardinal.OUEST : // direction_2 = OUEST
						switch(direction_out)
						{
								case cardinal.NORD:
									image_xscale = -1;
									image_angle = 90;
									break;
								case cardinal.EST:
									image_angle = 90;
									break;
								case cardinal.SUD:
									image_yscale = 1
									image_angle = 90;
									break;
						}
						break;
	
				}
			} else {
				// game over	
			}
		}	else {
			//game_over	
		}
	}
} else
{
 //Game_over	
}
