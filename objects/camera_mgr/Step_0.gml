if ((keyboard_check(vk_left)) || (keyboard_check(ord("A"))))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0])-local_speed, camera_get_view_y(view_camera[0]));
}

if ((keyboard_check(vk_right)) || (keyboard_check(ord("D"))))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0])+local_speed, camera_get_view_y(view_camera[0]));
} 

if ((keyboard_check(vk_up)) || (keyboard_check(ord("W"))))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])-local_speed);
}

if ((keyboard_check(vk_down)) || (keyboard_check(ord("S"))))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+local_speed);
} 