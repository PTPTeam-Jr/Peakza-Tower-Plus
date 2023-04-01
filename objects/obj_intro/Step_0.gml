if keyboard_check_pressed(vk_down) && skip == 0 skip = 1;
if keyboard_check_pressed(vk_down) && skip == 1 skip = 2;
if keyboard_check_pressed(vk_up) && skip == 2 skip = 3;
if keyboard_check_pressed(vk_up) && skip == 3 skip = 4;
if keyboard_check_pressed(vk_right) && skip == 4 skip = 5;
if keyboard_check_pressed(vk_left) && skip == 5 skip = 6;
if keyboard_check_pressed(vk_right) && skip == 6 skip = 7;
if keyboard_check_pressed(vk_left) && skip == 7 skip = 8;
if keyboard_check_pressed(ord("A")) && skip == 8 skip = 9;

if keyboard_check_pressed(ord("B")) && skip == 9 skip = 10;



if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_down) && skip == 0 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_down) && skip == 1 skip = 69;

if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_up) && skip == 2 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_up) && skip == 3 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_right) && skip == 4 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_left) && skip == 5 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_right) && skip == 6 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_left) && skip == 7 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(ord("A")) && skip == 8 skip = 69;
if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(ord("B")) && skip == 9 skip = 69;

if skip == 10
{
    video_close();
    room = Room1;
}