
/* LARGE PODS
 * ==========
 */
/area/utopia/shuttle/transport1/centcom
	name = "Shuttle - Cargo"
	icon_state = "shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/utopia/shuttle/escape_pod
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
	icon_state = "exit"

/area/utopia/shuttle/escape_pod/escape_pod1/station
	name = "Shuttle - Escape - Pod One"

/area/utopia/shuttle/escape_pod/escape_pod2/station
	name = "Shuttle - Escape - Pod Two"

/area/utopia/shuttle/escape_pod/escape_pod3/station
	name = "Shuttle - Escape - Pod Three"

/area/utopia/shuttle/escape_pod/escape_pod4/station
	name = "Shuttle - Escape - Pod Four"

/area/utopia/shuttle/escape_pod/escape_pod5/station
	name = "Shuttle - Escape - Pod Five"

/area/utopia/shuttle/escape_pod/escape_pod6/station
	name = "Shuttle - Escape - Small Pod Six"

/* VESSEL'S SHUTTLES
 * =================
 */


/area/utopia/guppy_hangar/start
	name = "Shuttle - Guppy"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_guppy)

/* ESCAPE SHUTTLES
 * =================
 */
/area/utopia/shuttle/escape/elite
	name = "Shuttle - Command"

/area/utopia/shuttle/escape/bomzhi
	name = "Shuttle - Crew"

