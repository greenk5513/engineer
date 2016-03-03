#define gl_main_virtual
/// gl_main_virtual();


#define gl_main_create
/// gl_main_create();

// public properties
cursor_target = -4;

// global controllers create
view_controller = new(gl_view);
room_controller = new(gl_room);

// config
gl_view_set_size(480,320,2,0);
window_set_cursor(cr_none);
show_debug_overlay(1);


#define gl_main_end_step
/// gl_main_end_step();
gl_main_input();

cursor_target = collision_point(mouse_x,mouse_y,gl_solid,0,1);

// global controllers step
with (view_controller) gl_view_step();
with (room_controller) gl_room_step();


#define gl_main_draw
/// gl_main_draw();
// debug text
draw_set(c_white,1);
d3d_transform_set_translation(view_xview,view_yview,0);
var s = '
debug
fps            : '+string(fps)+'/'+string(room_speed)+'|'+string(fps_real)+'
instance_count : '+string(instance_count)+'
mouse_position : '+string(mouse_x)+'|'+string(mouse_y)+'

cursor_target  : '+string(cursor_target)+'
';
draw_text_shadow(4,4,s,c_black,c_white);

// ...
d3d_transform_set_identity();


// debug hightlight
if (cursor_target and !view_is_dragging) {
    draw_set(c_aqua,1);
    draw_rectangle(cursor_target.bbox_left,cursor_target.bbox_top,
                   cursor_target.bbox_right,cursor_target.bbox_bottom,1);
}

// cursor
draw_set(c_white,1);
draw_sprite(spr_cursor,0,mouse_x,mouse_y);
//draw_line(0,0,mouse_x,mouse_y);

// ...

draw_reset();
    

#define gl_main_post_draw
/// gl_main_post_draw();
draw_surface_ext(application_surface,0,0,view_scale,view_scale,0,-1,1);