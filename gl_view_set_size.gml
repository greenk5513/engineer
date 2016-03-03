/// gl_view_set_size(view_wview,view_hview,scale,full);
view_scale = argument2;
view_wview = argument0;
view_hview = argument1;
view_wport = argument0*view_scale;
view_hport = argument1*view_scale;

window_set_size(view_wport,view_hport);
window_set_fullscreen(argument3);
window_center();

surface_resize(application_surface, view_wview, view_hview);
display_set_gui_size(view_wview, view_hview);
display_reset(0, 0);

