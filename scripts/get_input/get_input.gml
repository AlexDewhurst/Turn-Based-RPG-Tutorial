/// @desc get_input()
rKey = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
lKey = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
dKey = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
uKey = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);

xaxis = (rKey - lkey);
yaxis = (dKey - uKey);

// Gamepad Input
if (gamepad_isconnected(0)) {
	rKey = gamepad_button_check(0, gp_padr);
	lKey = gamepad_button_check(0, gp_padl);
	dKey = gamepad_button_check(0, gp_padd);
	uKey = gamepad_button_check(0, gp_padu);
	
	xaxis = max(gamepad_axis_value(0, gp_axislh),
	gamepad_axis_value(0, gpaxisrh), rKey - lKey, 0);
	yaxis = max(gamepad_axis_value(0, gp_axislh),
	gamepad_axis_value(0, gp_axisrh), dKey - uKey, 0);
}