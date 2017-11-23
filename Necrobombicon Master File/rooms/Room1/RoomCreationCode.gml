// cameras and views
view_enabled = true;
view_set_visible(0, true);
view_set_wport(0, 1300);
view_set_hport(0, 700);
global.camera = camera_create_view(0,0,1300,700,0,Player_obj,-1,-1,200,200);
view_set_camera(0,global.camera);
