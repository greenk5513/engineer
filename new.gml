/// new(gl_static);
if (!object_is_ancestor(argument0,gl_static)) {
    show_error(string(object_get_name(argument0))+' is not gl_static parent!',1);
}

if (instance_number(argument0) > 0) {
    return instance_find(argument0,0);
}else return instance_create(0,0,argument0);
