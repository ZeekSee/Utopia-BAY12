/datum/objective/nuclear/kidnap
	roles = list(/datum/job/captain, /datum/job/iaa, /datum/job/chief_engineer)

/datum/objective/hijack
	explanation_text = "Провести эвакуацию, предварительно саботировав эвакуационные капсулы."

/datum/objective/escape
	explanation_text = "Покинуть корабль на спасательной капсуле не будучи задержанным."

/datum/objective/steal/New()
	possible_items |= list(
		"личный револьвер капитана"				= /obj/item/gun/projectile/revolver/medium/captain,
		"интеллекарту - желательно, с ИИ"		= /obj/item/aicard,
		"мачете Лидера Экспедиции"				= /obj/item/material/hatchet/machete/deluxe,
		"секретные документы АВД"				= /obj/item/documents,
		"РИГ Директора Исследований"			= /obj/item/rig/hazmat/equipped
	)
	. = ..()
