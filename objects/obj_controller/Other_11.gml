/// @description Start Puzzle Phase
instance_destroy(slide_hor)
instance_destroy(slide_ver)
instance_destroy(obj_button)

sliceW = origW / xSlices
sliceH = origH / ySlices

var index = 0

for(var sx = 0; sx < xSlices; sx++)
	for(var sy = 0; sy < ySlices; sy++)
		imgSlices[sx][sy] = {ix : sliceW * sx, iy : sliceH * sy, ind : index++}

imgSlices[0][0] = pointer_null
holeX = 0
holeY = 0

randomize();
for(var i = 0; i < 5000; i++)
	switch(irandom(3)){
		case 0:
		event_perform(ev_keypress, vk_left)
		break
		
		case 1:
		event_perform(ev_keypress, vk_right)
		break
		
		case 2:
		event_perform(ev_keypress, vk_up)
		break
		
		case 3:
		event_perform(ev_keypress, vk_down)
	}

draw_set_halign(fa_left)
draw_set_valign(fa_top)
setup = false