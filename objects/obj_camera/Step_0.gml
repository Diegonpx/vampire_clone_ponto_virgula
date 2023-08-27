//X da camera
global.cmx = lerp(global.cmx, obj_player.x - global.cmw/2, .2);
//Y da camera
global.cmy = lerp(global.cmy, obj_player.y - global.cmh/2, .2);

//Movendo a camera
camera_set_view_pos(view_camera[0], global.cmx, global.cmy);





