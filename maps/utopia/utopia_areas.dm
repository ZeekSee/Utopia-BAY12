/datum/map/utopia

	base_floor_type = /turf/simulated/floor/reinforced/airless
//	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/utopia/shuttle/escape_pod/escape_pod1/station,
		/area/utopia/shuttle/escape_pod/escape_pod2/station,
		/area/utopia/shuttle/escape_pod/escape_pod3/station,
		/area/utopia/shuttle/escape_pod/escape_pod4/station,
		/area/utopia/shuttle/escape_pod/escape_pod5/station,
		/area/utopia/shuttle/escape_pod/escape_pod6/station,
	)

/area/utopia
	icon_state = "utopia"
/area/utopia/medical
	icon_state = "medbay"

/area/utopia/medical/medical_ward
	name = "Medical Ward"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/utopia/medical/medical_ward/first
	name = "First Medical Ward"

/area/utopia/medical/medical_ward/second
	name = "Second Medical Ward"

/area/utopia/maintenance/substation
	name = "Substation"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/utopia/crew_quarters
	icon_state = "crew_quarters"

/area/utopia/crew_quarters/heads
	icon_state = "heads"

/area/utopia/engineering
	req_access = list(access_engine)
	icon_state = "engineering"

/area/utopia/shield
	name = "Engineering - Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_atmospherics)

/area/utopia/security
	icon_state = "security"

/area/utopia/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

/area/utopia/maintenance
	req_access = list()

#include "areas/multideck.dm"
#include "areas/shuttles.dm"
#include "areas/utopia1.dm"
#include "areas/utopia2.dm"
#include "areas/utopia3.dm"
