#define __lfps_start
/// @description Init
global.__lfps_frameskip_ceil = 3
global.__lfps_actual_useconds = 0	// Default init, not correct in any way
global.__lfps_tolerance = 0.025
global.__lfps_target_useconds = game_get_speed(gamespeed_microseconds) * (1 + global.__lfps_tolerance)
global.__lfps_can_skip = true

// Alarms
global.__lfps_alarm0 = -1
global.__lfps_alarm1 = -1

////////////////////////////////////////////////////////////////////////////////
#define lfps_step
/// @description Execute the frame skip algorithm for one step
global.__lfps_target_useconds = game_get_speed(gamespeed_microseconds) * (1 + global.__lfps_tolerance)
global.__lfps_actual_useconds = delta_time

if global.__lfps_can_skip {
	if global.__lfps_actual_useconds > global.__lfps_target_useconds {
		global.__lfps_can_skip = false
		
		var fs = min(sqr(floor(global.__lfps_actual_useconds / global.__lfps_target_useconds)), global.__lfps_frameskip_ceil - 1) + 1
		draw_enable_drawevent(false)
		global.__lfps_alarm0 = fs
	} else {
		draw_enable_drawevent(true)
	}
}

// Alarm count
global.__lfps_alarm0 = max(global.__lfps_alarm0 - 1, -1)
global.__lfps_alarm1 = max(global.__lfps_alarm1 - 1, -1)

// Draw again
if global.__lfps_alarm0 == 0 {
	draw_enable_drawevent(true)
	global.__lfps_alarm1 = 1
}

// Skip again
if global.__lfps_alarm1 == 0 {
	global.__lfps_can_skip = true
}

////////////////////////////////////////////////////////////////////////////////
#define lfps_is_drawn
/// @description Return true if the screen is currently drawn
return global.__lfps_alarm0 <= 0