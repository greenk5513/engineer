#define gl_view_virtual
/// gl_view_virtual();


#define gl_view_create
// gl_view_create(view_wview,view_hview,scale,full);
globalvar view_is_dragging, view_xdrag, view_ydrag, view_scale, font_default;
view_enabled = 1;
view_visible = 1;
view_is_dragging = 0;
view_xdrag = 0;
view_ydrag = 0;
view_scale = 1;
font_default = font_add(working_directory+'fonts/shrp.ttf',16,0,0,32,128);

oc_processor = 1; // occlusion culling

gl_view_set_size(480,320,2,0);

draw_set_font(font_default);
draw_set_circle_precision(16);
draw_reset();




#define gl_view_step
/// gl_view_step();
//gl_view_drag(mb_left);
//gl_view_scroll(4);
