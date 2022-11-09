/obj/structure/closet/secure_closet/guncabinet/utopia_armory
	name = "armory guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/smg
	name = "submachine gun guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/smg/WillContain()
	return list(/obj/item/gun/projectile/automatic/sec_smg = 4)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/shotgun
	name = "shotgun guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/shotgun/WillContain()
	return list(/obj/item/gun/projectile/shotgun/pump/combat/armory = 2,
				/obj/item/clothing/accessory/storage/bandolier/armory = 2)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/laser
	name = "laser guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/laser/WillContain()
	return list(/obj/item/gun/energy/laser/secure = 4)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/stun
	name = "stun guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/stun/WillContain()
	return list(/obj/item/gun/energy/stunrevolver/rifle = 2,
				/obj/item/gun/energy/taser/carbine = 2)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/ion
	name = "ion guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/ion/WillContain()
	return list(/obj/item/gun/energy/ionrifle = 4,
	/obj/item/gun/energy/ionrifle/small = 2)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/egun
	name = "energy guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/egun/WillContain()
	return list(/obj/item/gun/energy/gun/secure = 4)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/launcher
	name = "grenade launcher guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/launcher/WillContain()
	return list(/obj/item/gun/launcher/grenade = 1,
				/obj/item/storage/box/smokeshells = 1,
				/obj/item/storage/box/flashshells = 2,
				/obj/item/storage/box/empshells = 1,
				/obj/item/storage/box/teargas = 1)

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/militia
	name = "militia guncabinet"

/obj/structure/closet/secure_closet/guncabinet/utopia_armory/militia/WillContain()
	return list(/obj/item/gun/energy/gun/small/secure = 4,
				/obj/item/clothing/accessory/armband = 4)

/obj/structure/closet/secure_closet/guncabinet/utopia_emergency
	name = "emergency smartgun guncabinet"
	req_access = list(access_security)

/obj/structure/closet/secure_closet/guncabinet/utopia_emergency/WillContain()
	return list(/obj/item/gun/energy/gun/small/secure = 3)
//obj/structure/closet/secure_closet/warden/utopia
	//name = "warden locker"
//obj/structure/closet/secure_closet/security/utopia
	//name = "security locker"
