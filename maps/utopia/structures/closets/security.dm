/obj/structure/closet/secure_closet/warden/utopia
	name = "warden's locker"
	req_access = list(access_warden)
	closet_appearance = /decl/closet_appearance/secure_closet/utopia/security/warden

/decl/closet_appearance/secure_closet/utopia/security
	color = COLOR_GUNMETAL
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

/decl/closet_appearance/secure_closet/utopia/security/warden
	color = COLOR_WALL_GUNMETAL
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_NT_RED,
		"stripe_vertical_right_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

//obj/effect/floor_decal/utopialogo
	//icon_state = "utopialogo"


/obj/structure/closet/secure_closet/warden/utopia/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/nt,
		/obj/item/clothing/head/helmet/nt,
		/obj/item/clothing/head/beret/sec/corporate/warden,
		/obj/item/clothing/head/beret/sec/navy/warden,
		/obj/item/clothing/under/rank/warden/corp/alt,
		/obj/item/clothing/under/rank/warden/navyblue,
		/obj/item/clothing/under/rank/warden/navyblue/alt,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/storage/belt/holster/security,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/melee/baton/loaded,
		/obj/item/gun/energy/gun/secure,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gun/energy/taser,
		/obj/item/handcuffs,
		/obj/item/device/hailer,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/hand_labeler,
		/obj/item/device/holowarrant,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight/maglight,
		/obj/item/crowbar/prybar,
		/obj/item/device/radio/off,
		/obj/item/device/serial,
		/obj/item/device/eftpos,
		/obj/item/clothing/accessory/cloak/security,
		/obj/item/clothing/mask/gas/half,
		/obj/item/storage/firstaid/individual/military
	)

/obj/structure/closet/secure_closet/security/utopia
	name = "peacekeeper's locker"
	req_access = list(access_guard)
	closet_appearance = /decl/closet_appearance/secure_closet/utopia/security

/obj/structure/closet/secure_closet/security/utopia/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/nt,
		/obj/item/clothing/head/helmet/nt,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/storage/belt/holster/security,
		/obj/item/device/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/melee/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gun/energy/gun/secure,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/crowbar/prybar,
		/obj/item/device/radio/off,
		/obj/item/clothing/mask/gas/half,
		/obj/item/storage/firstaid/individual/military
	)

/obj/structure/closet/secure_closet/security/utopia/cadet
	name = "peacekeeper cadet's locker"
	req_access = list(access_security)

/obj/structure/closet/secure_closet/security/utopia/cadet/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/device/radio/off,
		/obj/item/device/flashlight/maglight,
		/obj/item/device/holowarrant,
		/obj/item/device/hailer,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/taperoll/police,
		/obj/item/storage/belt/holster/security,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/crowbar/prybar,
		/obj/item/gun/energy/confuseray/secure,
		/obj/item/clothing/glasses/hud/security,
		/obj/item/storage/firstaid/individual/military
	)
