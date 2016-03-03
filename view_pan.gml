/// view_pan(x,y,lerp_amount);
view_xview = lerp(view_xview, (argument0 - view_wview / 2), argument2);
view_yview = lerp(view_yview, (argument1 - view_hview / 2), argument2);

//view_xview = round(view_xview);
//view_yview = round(view_yview);
