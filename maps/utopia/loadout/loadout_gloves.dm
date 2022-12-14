/datum/gear/gloves/latex
	allowed_roles = STERILE_ROLES

/datum/gear/gloves/nitrile
	allowed_roles = STERILE_ROLES

/datum/gear/gloves/botany
	allowed_roles = list(\
		/datum/job/chef, /datum/job/bartender,\
		/datum/job/assistant, /datum/job/submap/merchant,\
		/datum/job/submap/merchant_trainee)

/datum/gear/gloves/dress
	display_name = "gloves, dress"
	path = /obj/item/clothing/gloves/color/white

/datum/gear/gloves/insulated
	allowed_roles = ENGINEERING_ROLES

/datum/gear/gloves/duty
	display_name = "gloves, duty"
	path = /obj/item/clothing/gloves/thick/duty
	cost = 3
