// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -12415139; // GAME
global.__objectDepths[1] = 0; // DISPLAY
global.__objectDepths[2] = 100000; // BACKGROUND
global.__objectDepths[3] = 0; // FLAG
global.__objectDepths[4] = 0; // UNIT
global.__objectDepths[5] = 0; // BUILDING
global.__objectDepths[6] = 0; // PROP
global.__objectDepths[7] = 0; // SOLID
global.__objectDepths[8] = 0; // SELECTABLE
global.__objectDepths[9] = 0; // AIRSHIP
global.__objectDepths[10] = 100000; // FLOOR
global.__objectDepths[11] = 0; // AIR
global.__objectDepths[12] = 0; // AIRSHIPWALL
global.__objectDepths[13] = 0; // BUFF
global.__objectDepths[14] = 0; // CORPSE
global.__objectDepths[15] = 0; // RUIN
global.__objectDepths[16] = 0; // unit_dummy
global.__objectDepths[17] = 0; // unit_angel_1
global.__objectDepths[18] = 0; // unit_angel_3
global.__objectDepths[19] = 0; // unit_demon_1
global.__objectDepths[20] = 0; // unit_demon_2
global.__objectDepths[21] = 0; // unit_demon_3
global.__objectDepths[22] = 0; // unit_demon_4
global.__objectDepths[23] = 0; // unit_angel_3_projectile
global.__objectDepths[24] = 0; // unit_demon_1_projectile
global.__objectDepths[25] = 0; // unit_demon_3_corpse_explosion
global.__objectDepths[26] = 0; // unit_demon_4_skill_a_projectile
global.__objectDepths[27] = 0; // building_angel_1
global.__objectDepths[28] = 0; // obj_wall
global.__objectDepths[29] = 0; // MOUSE_HITBOX
global.__objectDepths[30] = 1000; // obj_cam
global.__objectDepths[31] = 0; // obj_cam_other
global.__objectDepths[32] = 0; // obj_cam_mover
global.__objectDepths[33] = -10000000; // LIGHTNING
global.__objectDepths[34] = 1000000; // SHADOW


global.__objectNames[0] = "GAME";
global.__objectNames[1] = "DISPLAY";
global.__objectNames[2] = "BACKGROUND";
global.__objectNames[3] = "FLAG";
global.__objectNames[4] = "UNIT";
global.__objectNames[5] = "BUILDING";
global.__objectNames[6] = "PROP";
global.__objectNames[7] = "SOLID";
global.__objectNames[8] = "SELECTABLE";
global.__objectNames[9] = "AIRSHIP";
global.__objectNames[10] = "FLOOR";
global.__objectNames[11] = "AIR";
global.__objectNames[12] = "AIRSHIPWALL";
global.__objectNames[13] = "BUFF";
global.__objectNames[14] = "CORPSE";
global.__objectNames[15] = "RUIN";
global.__objectNames[16] = "unit_dummy";
global.__objectNames[17] = "unit_angel_1";
global.__objectNames[18] = "unit_angel_3";
global.__objectNames[19] = "unit_demon_1";
global.__objectNames[20] = "unit_demon_2";
global.__objectNames[21] = "unit_demon_3";
global.__objectNames[22] = "unit_demon_4";
global.__objectNames[23] = "unit_angel_3_projectile";
global.__objectNames[24] = "unit_demon_1_projectile";
global.__objectNames[25] = "unit_demon_3_corpse_explosion";
global.__objectNames[26] = "unit_demon_4_skill_a_projectile";
global.__objectNames[27] = "building_angel_1";
global.__objectNames[28] = "obj_wall";
global.__objectNames[29] = "MOUSE_HITBOX";
global.__objectNames[30] = "obj_cam";
global.__objectNames[31] = "obj_cam_other";
global.__objectNames[32] = "obj_cam_mover";
global.__objectNames[33] = "LIGHTNING";
global.__objectNames[34] = "SHADOW";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for