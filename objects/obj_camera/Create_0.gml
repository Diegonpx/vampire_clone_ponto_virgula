//Pega a largura da camera
global.cmw = camera_get_view_width(view_camera[0]);
//Pega a altura da camera
global.cmh = camera_get_view_height(view_camera[0]);

//X da camera
global.cmx = obj_player.x - global.cmw/2;
//Y da camera
global.cmy = obj_player.y - global.cmh/2;

