/area/utopia/maintenance/exterior
	name = "Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	sound_env = SPACE

/area/utopia/maintenance/firstdeck
	name = "First Deck - Maintenance"
	icon_state = "maintcentral"

/area/utopia/maintenance/firstdeck/central
	name = "First Deck - Maintenance - Central"
	icon_state = "asmaint"

/area/utopia/maintenance/firstdeck/central_left
	name = "First Deck - Maintenance - Central-Left"
	icon_state = "asmaint"

/area/utopia/maintenance/firstdeck/security
	icon_state = "apmaint"
	req_access = list(access_security)

/area/utopia/maintenance/firstdeck/security/top_right
	name = "First Deck - Maintenance - Security - Top-Right"
	icon_state = "apmaint"

/area/utopia/maintenance/firstdeck/security/top_left
	name = "First Deck - Maintenance - Security - Top-Left"
	icon_state = "apmaint"

/area/utopia/maintenance/firstdeck/security/bot_right
	name = "First Deck - Maintenance - Security - Bot-Right"
	icon_state = "apmaint"

/area/utopia/maintenance/firstdeck/security/bot_left
	name = "First Deck - Maintenance - Security - Bot-Left"
	icon_state = "apmaint"

/area/utopia/maintenance/firstdeck/bridge
	name = "First Deck - Maintenance - Bridge"
	icon_state = "fsmaint"
	req_access = list(access_bridge)

/area/utopia/maintenance/firstdeck/bridge/top
	name = "First Deck - Maintenance - Bridge - Top"
	icon_state = "fsmaint"

/area/utopia/maintenance/firstdeck/bridge/bot
	name = "First Deck - Maintenance - Bridge - Bot"
	icon_state = "fsmaint"
/*
/area/utopia/maintenance/firstdeck/fore
	name = "First Deck - Maintenance - Fore"
	icon_state = "fmaint"
*/
/area/utopia/maintenance/firstdeck/foreport
	name = "First Deck - Maintenance - Fore-Port"
	icon_state = "fpmaint"

/area/utopia/maintenance/firstdeck/centralstarboard
	name = "First Deck - Maintenance - Starboard"
	icon_state = "smaint"

/area/utopia/maintenance/firstdeck/centralport
	name = "First Deck - Maintenance - Port"
	icon_state = "pmaint"

/area/utopia/hallway/primary/firstdeck/center_left
	name = "First Deck - Hallway - Central-Left"
	icon_state = "hallF"

/area/utopia/hallway/primary/firstdeck/center
	name = "First Deck - Hallway - Central"
	icon_state = "hallC1"

/area/utopia/hallway/primary/firstdeck/top_right
	name = "First Deck - Hallway - Top-Right"
	icon_state = "hallA"

/area/utopia/hallway/primary/firstdeck/top_left
	name = "First Deck - Hallway - Top-Left"
	icon_state = "hallC2"

/area/utopia/hallway/primary/firstdeck/bot_right
	name = "First Deck - Hallway - Bot-Right"
	icon_state = "hallC2"

/area/utopia/hallway/primary/firstdeck/bot_left
	name = "First Deck - Hallway - Bot-Left"
	icon_state = "hallC2"
/*
/area/utopia/crew_quarters/safe_room/firstdeck
	name = "First Deck - Safe Room"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
*/
/area/utopia/maintenance/substation/firstdeck
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/a
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/b
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/c
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/d
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/e
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/f
	name = "First Deck - Substation"

/area/utopia/maintenance/substation/firstdeck/g
	name = "First Deck - Substation"

/* COMMAND AREAS
 * =============
 */

/area/utopia/crew_quarters/heads/cobed
	name = "Second Deck - Command - Captain's Quarters"
	sound_env = MEDIUM_SOFTFLOOR
	icon_state = "captain"
	req_access = list(access_captain)

/area/utopia/crew_quarters/heads/office/captain
	name = "Second Deck - Command - Captain's Office"
	icon_state = "heads_cap"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/utopia/crew_quarters/heads/captain
	req_access = list(access_captain)
	icon_state = "heads_cap"

/area/utopia/crew_quarters/heads/captain/office_anteroom
	name = "Second Deck - Command - Captain's Office Anteroom"
	sound_env = MEDIUM_SOFTFLOOR

/area/utopia/crew_quarters/heads/captain/beach
	name = "Second Deck - Command - Captain's Recreation Facility"
	icon_state = "heads_cap"
	sound_env = PLAIN
	req_access = list()

/area/utopia/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "Second Deck - Command - CE's Office"
	req_access = list(access_ce)

/area/utopia/bridge
	name = "Second Deck - Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)
	ambience = list('infinity/sound/SS2/ambience/ambbridge.wav')

/area/utopia/bridge/nano
	icon = 'infinity/icons/turf/areas.dmi'
	icon_state = "bridge_room"

/area/utopia/bridge/meeting_room
	name = "Second Deck - Command - Meeting Room"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/utopia/bridge/lobby
	name = "Bridge - Lobby"

/area/utopia/teleporter
	name = "Second Deck - Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/utopia/crew_quarters/heads/office/hop
	name = "First Deck - Command - HoP's Office"
	icon_state = "heads_hop"
	req_access = list(access_hop)

/area/utopia/crew_quarters/heads/office/hop/cobed
	name = "First Deck - Command - HoP's Quarters"

/area/utopia/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "First Deck - Command - CMO's Office"
	req_access = list(access_cmo)

/area/utopia/crew_quarters/heads/office/hos
	icon_state = "heads_hos"
	name = "First Deck - Command - HoS' Office"
	req_access = list(access_hos)

/area/utopia/crew_quarters/heads/office/iaa
	icon_state = "heads_cl"
	name = "First Deck - Command - IAA's Office"
	req_access = list(access_iaa)

/area/utopia/bridge/gun/energy
	name = "First Deck - Abandoned Weapon Slot"
	icon = 'infinity/icons/turf/areas.dmi'
	icon_state = "bridge_gun"
	req_access = list(access_brig)

/* ENGINEERING AREAS
 * =================
 */

/area/utopia/engineering/hallway
	name = "Second Deck - Engineering - Hallway"
	icon_state = "engineering_workshop"

/area/utopia/engineering/hardstorage
	name = "Second Deck - Engineering - Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/utopia/engineering/engine_room
	name = "Second Deck - Engine - Supermatter"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_engine_equip)

/area/utopia/engineering/engine_eva
	name = "Second Deck - Engineering - EVA"
	icon_state = "engine_eva"
	req_access = list(list(access_eva, access_external_airlocks), access_engine)

/area/utopia/engineering/engine_monitoring
	name = "Second Deck - Engine - Monitoring"
	icon_state = "engine_monitoring"

/area/utopia/engineering/engine_smes
	name = "Second Deck - Engine - SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/utopia/engineering/engineering_monitoring
	name = "Second Deck - Engineering - Monitoring"
	icon_state = "engine_monitoring"

/area/utopia/engineering/locker_room
	name = "Second Deck - Engineering - Locker Room"
	icon_state = "engineering_locker"

/area/utopia/engineering/materials_storage
	name = "Second Deck - Engineering - Materials Storage"
	icon_state = "engineering_storage"

/area/utopia/engineering/atmos
 	name = "Second Deck - Engineering - Atmospherics"
 	icon_state = "atmos"
 	sound_env = LARGE_ENCLOSED
 	req_access = list(access_atmospherics)

/area/utopia/engineering/gravitaional_generator
	name = "Second Deck - Gravitational Generator"
	icon_state = "engine_monitoring"
	req_access = list(list(access_engine_equip, access_heads), list(access_seneng, access_engine_equip))
	sound_env = SMALL_ENCLOSED

/area/utopia/engineering/bluespace
	name = "Second Deck - Engineering - BlueSpace Drive"
	icon_state = "engine_monitoring"
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)
	sound_env = SMALL_ENCLOSED

/area/utopia/engineering/bluespace/chamber
	name = "Second Deck - Engineering - BlueSpace Drive - Chamber"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/utopia/shield/seconddeck
	name = "Second Deck - Shield Generator"

/area/utopia/storage/tech
	name = "Second Deck - Engineering - Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/utopia/engineering/auxpower
	name = "First Deck - Engineering - Auxiliary Power Storage"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/utopia/engineering/drone_fabrication
	name = "First Deck - Engineering - Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/utopia/shield/firstdeck
	name = "First Deck - Shield Generator"
	// Solars
/area/utopia/maintenance/solar
	name = "First Deck - Solar - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/utopia/maintenance/solar/starboard
	name = "First Deck - Solar - Starboard"
	icon_state = "SolarcontrolS"

/area/utopia/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	sound_env = SPACE

/area/utopia/solar/starboard
	name = "First Deck - Solar - Starboard Array"
	icon_state = "panelsS"

/area/utopia/solar/port
	name = "First Deck - Solar - Port Array"
	icon_state = "panelsP"

	// Storage
/area/utopia/bridge/storage
	name = "First Deck - Bridge - Storage"
	icon_state = "bridge"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_bridge)

	// Tcomm
/area/utopia/tcommsat/
	ambience = list(
			'sound/ambience/ambisin2.ogg',
			'sound/ambience/signal.ogg',
			'sound/ambience/ambigen10.ogg',
			'infinity/sound/SS2/ambience/ambservers.wav'
		)
	req_access = list(access_tcomsat)

/area/utopia/tcommsat/chamber
	name = "First Deck - Telecoms"
	icon_state = "tcomsatcham"

/area/utopia/tcommsat/computer
	name = "First Deck - Telecoms - Monitoring"
	icon_state = "tcomsatcomp"

/area/utopia/tcommsat/storage
	name = "First Deck - Telecoms - Storage"
	icon_state = "tcomsatstore"

	//thusters

/area/utopia/thruster/d1port
	name = "First Deck - Nacelle - Port "

/area/utopia/thruster/d1starboard
	name = "First Deck - Nacelle - Starboard"

// AI
/*
/area/utopia/maintenance/battle_data_servers
	name = "First Deck - Battle Data Servers"
	req_access = list(access_maint_tunnels)

/area/utopia/ai_monitored
	name = "AI Monitored Area"
*/
/area/utopia/storage/eva
	name = "First Deck - EVA"
	icon_state = "eva"
	req_access = list(access_eva)

/area/utopia/turret_protected
	req_access = list(access_ai_upload)
	ambience = list(
		'sound/ambience/ambimalf.ogg',
		'infinity/sound/SS2/ambience/ambservers.wav'
		)
	forced_ambience = list('infinity/sound/SS2/ambience/ambxerxes_looped.wav', 'infinity/sound/ambience/ai_port_hum.ogg')

/area/utopia/turret_protected/ai
	name = "AI Chamber"
	icon_state = "ai_chamber"

/area/utopia/turret_protected/ai_upload
	name = "First Deck - AI Upload"
	icon_state = "ai_upload"

/* CREW AREAS
 * ==========
 */
/area/utopia/hydroponics
	name = "Second Deck - Service - Hydroponics"
	icon_state = "hydro"

/area/utopia/hydroponics/storage
	name = "Second Deck - Service - Hydroponics Storage"

/area/utopia/crew_quarters/bar
	name = "Second Deck - Service - Bar"
	icon_state = "bar"
	sound_env = SMALL_ENCLOSED
	req_access = list(list(access_bar, access_kitchen))

/area/utopia/crew_quarters/galley
	name = "Second Deck - Service - Galley"
	icon_state = "kitchen"
	req_access = list(list(access_kitchen, access_bar))

/area/utopia/crew_quarters/galley/backroom
	name = "Second Deck - Service - Galley Cold Storage"
	icon_state = "kitchen"
	req_access = list(list(access_kitchen, access_bar))

/area/utopia/crew_quarters/cafe
	name = "Second Deck - Living - Cafe"
	icon_state = "cafeteria"

/area/utopia/crew_quarters/sauna
	name = "Second Deck - Living - Sauna"
	icon_state = "sauna"
	sound_env = SMALL_ENCLOSED

/area/utopia/grove/theta // /area/ai_abadoned
	name = "Second Deck - Grove - Theta"
	icon_state = "garden"
	sound_env = LARGE_SOFTFLOOR

/area/utopia/crew_quarters/head
	name = "Second Deck - Living - Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/utopia/crew_quarters/head_big
	name = "Second Deck - Living - Lounge - Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/utopia/crew_quarters/game_room
	name = "Second deck - living - Lounge - Game room"
	icon_state = "game_room_inf"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
/*
/area/utopia/crew_quarters/showers
	name = "Second Deck - Living - Private Showers"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
*/
/area/utopia/crew_quarters/gym
	name = "Second Deck - Living - Gym"
	icon_state = "fitness"



/area/utopia/crew_quarters/actor
	name = "Second Deck - Service - Actor"
	icon_state = "Theatre"
	sound_env = SMALL_SOFTFLOOR
	req_access = list(access_actor)

/area/utopia/crew_quarters/lounge
	name = "Second Deck - Living - Lounge"
	sound_env = MEDIUM_SOFTFLOOR

/area/utopia/crew_quarters/lounge_big
	name = "Second Deck - Living - Lounge - North"
	icon_state = "Sleep"
	sound_env = MEDIUM_SOFTFLOOR

/area/utopia/crew_quarters/sleep/bunk
	name = "Second Deck - Living - Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/utopia/crew_quarters/sleep/bunk_big
	name = "Second Deck - Living - Dormitory - Big One"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/utopia/crew_quarters/sleep/bunk_big/room_two
	name = "Second Deck - Living - Dormitory - Big Two"
	icon_state = "Sleep"

/area/utopia/crew_quarters/sleep/cryo
	name = "Second Deck - Living - Cryogenic Storage"
	icon = 'infinity/icons/turf/areas.dmi'
	icon_state = "cryo"

/area/utopia/crew_quarters/sleep/cryo/south
	name = "Second Deck - Living - Cryogenic Storage - South"
	icon_state = "cryo_south"

/area/utopia/crew_quarters/adherent
	name = "Second Deck - Living - Adherent Maintenence"
	icon_state = "robotics"

/area/utopia/crew_quarters/sleep/cryo/upper
	name = "First Deck - Living - Cryogenic Storage - Upper"
	icon_state = "cryo_up"

/area/utopia/crew_quarters/unused_office
	name = "First Deck - Living - Unused Office"
	icon_state = "Sleep"

/area/utopia/crew_quarters/dungeon_master_lounge
	name = "First Deck - Living Room"
	sound_env = MEDIUM_SOFTFLOOR

/area/utopia/crew_quarters/lounge/upper
	name = "First Deck - Living - Library"
/*
/area/utopia/crew_quarters/sleep/cryo/first_deck
	name = "First Deck - Cryogenic Storage"
*/
/* SECURITY AREAS
 *
 */

/area/utopia/security/hallway
	name = "First Deck - Security - Hallway - Fore"
	sound_env = LARGE_ENCLOSED

/area/utopia/security/hallway/left
	name = "First Deck - Security - Hallway - Aft"

/area/utopia/security/hallway/right
	name = "First Deck - Security - Hallway - Port"

/area/utopia/security/sergeant
	name = "First Deck - Security - Warden"
	icon_state = "Warden"
	req_access = list(access_warden)

/area/utopia/security/armory
	name = "First Deck - Security - Armory"
	icon_state = "armory"
	req_access = list(access_armory)

/area/utopia/security/armory/lobby
	name = "First Deck - Security - Armory Lobby"

/area/utopia/security/suits
	name = "First Deck - Security - Suits Storage"
	req_access = list(access_seceva)

/area/utopia/security/breakroom
	name = "First Deck - Security - Break Room"

/area/utopia/security/hosbed
	name = "First Deck - Security - HOS Bedroom"
	icon_state = "sec_hos"
	req_access = list(access_hos)

/area/utopia/security/forensic
	name = "First Deck - Security - Forensic"
	icon_state = "detective"
	req_access = list(access_forensics_lockers)

/area/utopia/security/forensic/lab
	name = "First Deck - Security - Forensic Laboratory"

/area/utopia/security/equipment
	name = "First Deck - Security - Equipment"
	req_access = list(access_security)

/area/utopia/security/interrogation
	name = "First Deck - Security - Interrogation"
	icon_state = "detective"
	req_access = list(list(access_forensics_lockers, access_security))

/area/utopia/security/evidence
	name = "First Deck - Security - Evidence Storage"
	icon_state = "detective"
	req_access = list(list(access_forensics_lockers, access_security))

/area/utopia/security/range
	name = "First Deck - Security - Cadets"
	icon_state = "security"

/area/utopia/security/nuke_storage
	name = "First Deck - Vault"
	icon_state = "nuke_storage"
	req_access = list(access_heads_vault)

/area/utopia/security/brig
	name = "Security - Brig"
	icon_state = "brig"
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_brig)

/area/utopia/security/prison
	name = "Security - Prison Wing"
	icon_state = "sec_prison"
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_brig)

/* MEDBAY AREAS
 * ============
 */

/area/utopia/medical/equipstorage
	name = "First Deck - Infirmary - Storage"
	icon_state = "medbay4"

/area/utopia/hallway/infirmary
	name = "First Deck - Infirmary - Hallway"
	icon_state = "medbay"
/*
/area/utopia/medical/starboard_hallway
	name = "First Deck - Infirmary - Hallway - Starboard"
	icon_state = "medbay2"
*/
/area/utopia/medical/infirmreception
	name = "First Deck - Infirmary - Reception"
	icon_state = "medbay2"

/area/utopia/medical/locker
	name = "First Deck - Infirmary - Locker Room"
	icon_state = "locker"
	req_access = list(access_medical_equip)
/*
/area/utopia/medical/subacute
	name = "First Deck - Infirmary - Sub-Acute Ward"
	icon_state = "patients"
*/
/area/utopia/medical/mentalhealth
	name = "First Deck - Infirmary - Mental Health"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)

/area/utopia/medical/chemistry
	name = "First Deck - Infirmary - Chemistry"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/utopia/medical/morgue
	name = "First Deck - Infirmary - Morgue"
	icon_state = "morgue"
	ambience = list(
		'sound/ambience/ambimo1.ogg',
		'sound/ambience/ambimo2.ogg',
		'sound/music/main.ogg'
	)
	req_access = list(access_morgue)

/area/utopia/medical/sleeper
	name = "First Deck - Infirmary - Emergency Treatment Center"
	icon_state = "exam_room"
	req_access = list(list(access_medical_equip, access_field_med))

/area/utopia/medical/surgery
	name = "First Deck - Infirmary - Operating Theatre"
	icon_state = "surgery"
	req_access = list(access_surgery)
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/utopia/medical/surgery/second
	name = "First Deck - Infirmary - Operating Theatre 2"

/area/utopia/medical/staging
	name = "First Deck - Infirmary Staging"
	icon_state = "patients"
	req_access = list(list(access_medical, access_research))

/area/utopia/medical/office
	name = "First Deck - Infirmary - Office"
	icon_state = "medbay4"

/area/utopia/medical/backstorage
	name = "First Deck - Infirmary - Auxiliary Storage"
	icon_state = "auxstorage"
