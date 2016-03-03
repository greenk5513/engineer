/// gl_view_drag(button);
if (mouse_check_button_pressed(argument0)) {
    view_is_dragging = 1;
    view_xdrag = mouse_x;
    view_ydrag = mouse_y;
}

if (view_is_dragging) {
    var vx,vy;
    vx = view_xdrag - (mouse_x - view_xview - view_wview/2);
    vy = view_ydrag - (mouse_y - view_yview - view_hview/2);
    view_pan(vx,vy,1);
}

if (mouse_check_button_released(argument0)) {
    view_is_dragging = 0;
}

