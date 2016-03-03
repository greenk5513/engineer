/// gl_main_input();
if (keyboard_check_pressed(vk_escape)) game_end();
if (keyboard_check_pressed(vk_f1)) gl_view_set_size(480,320,2,0);
if (keyboard_check_pressed(vk_f2)) gl_view_set_size(display_get_width()/2,display_get_height()/2,2,0);

gl_view_drag(mb_left);
gl_view_scroll(4);
