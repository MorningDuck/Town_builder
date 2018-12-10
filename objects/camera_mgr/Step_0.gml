if ((keyboard_check(vk_left)) || (keyboard_check(ord("A"))))
{
	camera_set_view_pos(cam, camera_get_view_x(cam)-local_speed, camera_get_view_y(cam));
}

if ((keyboard_check(vk_right)) || (keyboard_check(ord("D"))))
{
	camera_set_view_pos(cam, camera_get_view_x(cam)+local_speed, camera_get_view_y(cam));
} 

if ((keyboard_check(vk_up)) || (keyboard_check(ord("W"))))
{
	camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam)-local_speed);
}

if ((keyboard_check(vk_down)) || (keyboard_check(ord("S"))))
{
	camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam)+local_speed);
} 

global.camx = camera_get_view_x(cam);
global.camy = camera_get_view_y(cam);