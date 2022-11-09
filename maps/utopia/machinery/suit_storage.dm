/obj/machinery/suit_storage_unit/utopia
	name = "Sierra's Storage Unit"
	var/isStripped = FALSE
	var/stripes_color

/obj/machinery/suit_storage_unit/utopia/on_update_icon()
	. = ..()
	if (isStripped)
		var/image/stripes_overlay = image(icon, "color_overlay_stripes")
		stripes_overlay.color = stripes_color
		overlays += stripes_overlay


/obj/machinery/suit_storage_unit/utopia/explorer
	name = "GI-EXPL Voidsuit Storage Unit"

	helmet = /obj/item/clothing/head/helmet/space/void/exploration/utopia
	suit = /obj/item/clothing/suit/space/void/exploration/utopia
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/gas/half

	req_access = list(access_explorer)
	islocked = TRUE
	isStripped = TRUE
	mycolour = COLOR_DARK_GRAY
	stripes_color = COLOR_VIOLET


/obj/machinery/suit_storage_unit/utopia/explorer/pilot
	name = "GI-EXPL-P Voidsuit Storage Unit"
	helmet = /obj/item/clothing/head/helmet/space/void/exploration/utopia/pilot
	suit = /obj/item/clothing/suit/space/void/exploration/utopia/pilot
	req_access = list(access_explorer, access_expedition_shuttle_helm)


/obj/machinery/suit_storage_unit/utopia/explorer/med
	name = "GI-EXPL-M Voidsuit Storage Unit"
	helmet = /obj/item/clothing/head/helmet/space/void/exploration/utopia/med
	suit = /obj/item/clothing/suit/space/void/exploration/utopia/med
	req_access = list(access_field_med)
	stripes_color = COLOR_LIGHT_CYAN


/obj/machinery/suit_storage_unit/utopia/explorer/eng
	name = "GI-EXPL-E Voidsuit Storage Unit"
	helmet = /obj/item/clothing/head/helmet/space/void/exploration/utopia/eng
	suit = /obj/item/clothing/suit/space/void/exploration/utopia/eng
	req_access = list(access_field_eng)
	stripes_color = COLOR_SUN
