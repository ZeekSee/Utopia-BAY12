#if !defined(using_map_DATUM)

	#include "utopia_areas.dm"
//	#include "utopia_announcements.dm"
	#include "utopia_lobby.dm"
	#include "utopia_setup.dm"
//	#include "utopia_npcs.dm"
	#include "utopia_overmap.dm"
	#include "utopia_presets.dm"
	#include "utopia_procs.dm"
	#include "utopia_ranks.dm"
	#include "utopia_submaps.dm"
	#include "utopia_security_state.dm"

	#include "datums/uniforms.dm"
	#include "datums/uniforms_civilian.dm"
	#include "datums/uniforms_contractor.dm"
	#include "datums/uniforms_employee.dm"

	#include "datums/reports/command.dm"
	#include "datums/reports/deck.dm"
	#include "datums/reports/engineering.dm"
	#include "datums/reports/exploration.dm"
	#include "datums/reports/general.dm"
	#include "datums/reports/iaa.dm"
	#include "datums/reports/medical.dm"
	#include "datums/reports/security.dm"
	#include "datums/reports/science.dm"

	#include "datums/shackle_law_sets.dm"
	#include "datums/supplypacks/engineering.dm"
	#include "datums/supplypacks/security.dm"
	#include "datums/supplypacks/science.dm"

	#include "game/antagonist/languages.dm"
	#include "game/antagonist/objective.dm"

	#include "items/cards_ids.dm"
	#include "items/documents.dm"
	#include "items/encryption_keys.dm"
	#include "items/explo_shotgun.dm"
	#include "items/guns.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/manuals.dm"
	#include "items/mech.dm"
	#include "items/papers.dm"
	#include "items/rigs.dm"
	#include "items/stamps.dm"

	#include "items/clothing/clothing.dm"
	#include "items/clothing/exploration.dm"
	#include "items/clothing/override.dm"
	#include "items/clothing/storages.dm"
	#include "items/clothing/ec_skillbadges.dm"

	#include "items/clothing/torched/solgov-accessory.dm"
	#include "items/clothing/torched/solgov-armor.dm"
	#include "items/clothing/torched/solgov-suit.dm"
	#include "items/clothing/torched/solgov-under.dm"

	#include "job/access.dm"
	#include "job/jobs.dm"
	#include "job/outfits.dm"
	#include "job/infinity.dm"

	#include "job/jobs_cargo.dm"
	#include "job/jobs_command.dm"
	#include "job/jobs_engineering.dm"
	#include "job/jobs_medical.dm"
	#include "job/jobs_misc.dm"
	#include "job/jobs_security.dm"
	#include "job/jobs_service.dm"

	#include "machinery/alarm.dm"
	#include "machinery/doors.dm"
	#include "machinery/keycard authentication.dm"
	#include "machinery/machinery.dm"
	#include "machinery/navbeacons.dm"
	#include "machinery/power.dm"
	#include "machinery/random.dm"
	#include "machinery/suit_cycler.dm"
	#include "machinery/suit_storage.dm"
	#include "machinery/tcomms.dm"
	#include "machinery/thrusters.dm"
	#include "machinery/uniform_vendor.dm"
	#include "machinery/vendors.dm"

	#include "structures/closets/security.dm"
	#include "structures/closets/armory.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_ec_skillbages.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_pda.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_tactical.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_xeno.dm"
	#include "loadout/~defines.dm"

	#include "utopia-1.dmm"
	#include "utopia-2.dmm"
	#include "utopia-3.dmm"
	#include "utopia-4.dmm"
	#include "../away/empty.dmm"

//	#include "../away_inf/ascent/ascent.dm"
	#include "../away_inf/bearcat/bearcat.dm"
	#include "../away_inf/blueriver/blueriver.dm"
	#include "../away_inf/liberia/liberia.dm"
	#include "../away_inf/mining/mining.dm"
// НЕ ПРОШЕЛ ЮНИТ ТЕСТЫ!!!	#include "../away_inf/sentinel/sentinel.dm"
//	#include "../away_inf/skrellscoutship/skrellscoutship.dm"
	#include "../away_inf/smugglers/smugglers.dm"
	#include "../away_inf/yacht/yacht.dm"
	#include "../away_inf/temple/temple.dm"

	// #include "../away/ascent_caulship/_ascent_caulship.dm"
	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/mininghome/mininghome.dm"
	#include "../away/miningstation/miningstation.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/verne/verne.dm"
	#include "../away/voxship/voxship.dm"

	#include "../random_ruins/exoplanet_ruins/playablecolony_inf/playablecolony.dm"


	#define using_map_DATUM /datum/map/utopia

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Utopia

#endif