/// @description Setup
var spr = get_open_filename("image|*.jpg;*.png", "")
if(spr == "")
	game_end()

sprite_index = sprite_add(spr, 1, false, true, 0, 0)
origW = sprite_width
origH = sprite_height
image_yscale = 640 / sprite_height
image_xscale = image_yscale
width = bbox_right - bbox_left
height = bbox_bottom - bbox_top

xSlices = 5;
ySlices = 5;

setup = true
text = "Use arrow keys."