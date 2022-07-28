/// @description Drag Slider
val = clamp(round((mouse_x - bbox_left) * range / sprite_width) + valMin, valMin, valMax)

with(obj_controller)
	event_user(0)