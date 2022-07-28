/// @description Draw
if(setup){
	draw_self()
	draw_set_color(c_dkgray)

	var slices = width / xSlices

	for(var sliceX = slices; sliceX < width; sliceX += slices)
		draw_line(bbox_left + sliceX, bbox_top, bbox_left + sliceX, bbox_bottom)

	slices = height / ySlices

	for(var sliceX = slices; sliceX < height; sliceX += slices)
		draw_line(bbox_left, bbox_top + sliceX, bbox_right, bbox_top + sliceX)
}else{
	for(var sx = 0; sx < xSlices; sx++)
		for(var sy = 0; sy < ySlices; sy++)
			if(imgSlices[sx][sy] != pointer_null)
				draw_sprite_part_ext(sprite_index, 0, imgSlices[sx][sy].ix, imgSlices[sx][sy].iy, sliceW, sliceH,  x + sliceW * image_xscale * sx, y + sliceH * image_yscale * sy, image_xscale, image_yscale, c_white, 1)
}