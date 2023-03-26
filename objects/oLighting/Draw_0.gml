

if !surface_exists(surf)
    {
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    surf = surface_create(_cw, _ch);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw, _cw, false);
    surface_reset_target();
    }
else
{
	if (surface_exists(surf)) {
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf);
		draw_set_color(c_black);
		draw_set_alpha(global.lightNight);
		draw_rectangle(0, 0, _cw, _ch, 0);
		gpu_set_blendmode(bm_subtract);
	}
	with (oLightParent)
	
		{
			var _sw = sprite_width / 2; // для других обьектов помимо плеера
			var _sh = sprite_height / 2;
			switch(object_index)
			{
				// другие обьекты дети святильника oLightParent неподвижные
			case oSweet:
			   if global.lightNight >0.6 draw_sprite_ext(sLight, 0, x - _cx, y - _cy -10, (0.5 + random(0.05))*lightScale, (0.5 + random(0.05))*lightScale, 0, c_white, lightPowerfull);
			    break;
				// другие обьекты дети святильника oLightParent подвижные
			//case oRockStrongDamage:
			//    draw_sprite_ext(sLight, 0, x + _sw - _cx, y + _sh - _cy - 10, 0.75, 0.75, 0, c_white, other.lightPowerfull);
			//    break;
			
			case oPlayer:
			    if global.lightNight >0.7 draw_sprite_ext(sLight, 0, x - _cx, y - _sh - _cy, (0.5 + random(0.01))*lightScale, (0.5 + random(0.01))*lightScale, 0, c_white, lightPowerfull);            
			    break;
}
	    }
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
}
