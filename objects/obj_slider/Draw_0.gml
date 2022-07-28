/// @description Draw
draw_self()

draw_set_color(c_gray)
draw_rectangle(x, bbox_top, sprite_width * ((val - valMin) / range) + x, bbox_bottom, false)

draw_set_color(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_left)
draw_text(x + 2, y, text + ":" + string(val))

with(obj_controller)
	event_user(0)