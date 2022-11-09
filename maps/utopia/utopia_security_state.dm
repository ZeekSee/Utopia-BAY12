#ifndef PSI_IMPLANT_AUTOMATIC
#define PSI_IMPLANT_AUTOMATIC "Security Level Derived"
#endif
#ifndef PSI_IMPLANT_SHOCK
#define PSI_IMPLANT_SHOCK     "Issue Neural Shock"
#endif
#ifndef PSI_IMPLANT_WARN
#define PSI_IMPLANT_WARN      "Issue Reprimand"
#endif
#ifndef PSI_IMPLANT_LOG
#define PSI_IMPLANT_LOG       "Log Incident"
#endif
#ifndef PSI_IMPLANT_DISABLED
#define PSI_IMPLANT_DISABLED  "Disabled"
#endif

/datum/map/utopia // setting the map to use this list
	security_state = /decl/security_state/default/sierradept

//Sierra map alert levels. Refer to security_state.dm.
/decl/security_state/default/sierradept
	all_security_levels = list(/decl/security_level/default/sierradept/code_green, /decl/security_level/default/sierradept/code_violet, /decl/security_level/default/sierradept/code_orange, /decl/security_level/default/sierradept/code_blue, /decl/security_level/default/sierradept/code_red, /decl/security_level/default/sierradept/code_delta)

/decl/security_level/default/sierradept
	icon = 'infinity/icons/misc/security_state.dmi'

/decl/security_level/default/sierradept/code_green
	name = "код зелёный"

	light_max_bright = 0.25
	light_inner_range = 0.1
	light_outer_range = 1
	light_color_alarm = COLOR_GREEN
	light_color_status_display = COLOR_GREEN

	overlay_alarm = "alarm_green"
	overlay_status_display = "status_display_green"
	alert_border = "alert_border_green"

	var/static/datum/announcement/priority/security/security_announcement_green = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/notice2.ogg'))

/decl/security_level/default/sierradept/code_green/switching_down_to()
	security_announcement_green.Announce("Все угрозы для судна и его экипажа были устранены. \
	Персоналу следует вернуться к выполнению рабочих обязанностей в штатном режиме.", \
	"Внимание! Код угрозы понижен до Зелёного")
	notify_station()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.unlock_high_secure_areas()

/decl/security_level/default/sierradept/code_violet
	name = "код фиолетовый"

	light_max_bright = 0.25
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_VIOLET
	light_color_status_display = COLOR_VIOLET

	psionic_control_level = PSI_IMPLANT_LOG

	overlay_alarm = "alarm_violet"
	overlay_status_display = "status_display_violet"
	alert_border = "alert_border_violet"

/decl/security_level/default/sierradept/code_violet/switching_up_to()
	security_announcement_up.Announce("На судне обнаружена серьёзная медицинская угроза. \
	Всему медицинскому персоналу требуется обратиться к вышестоящим сотрудникам для получения инструкций. \
	Не-медицинскому персоналу следует выполнять инструкции от медицинского персонала.", "Внимание! Код угрозы повышен до Фиолетового")
	notify_station()
	GLOB.using_map.toggle_crew_sensors(2)

/decl/security_level/default/sierradept/code_violet/switching_down_to()
	security_announcement_down.Announce("На судне обнаружена серьёзная медицинская угроза. \
	Всему медицинскому персоналу требуется обратиться к вышестоящим сотрудникам для получения инструкций. \
	Не-медицинскому персоналу следует выполнять инструкции от медицинского персонала.", "Внимание! Код угрозы понижен до Фиолетового")
	notify_station()
	GLOB.using_map.unlock_high_secure_areas()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.toggle_crew_sensors(2)

/decl/security_level/default/sierradept/code_orange
	name = "код оранжевый"

	light_max_bright = 0.25
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_ORANGE
	light_color_status_display = COLOR_ORANGE
	overlay_alarm = "alarm_orange"
	overlay_status_display = "status_display_orange"
	alert_border = "alert_border_orange"
	airlock_override = 1
	psionic_control_level = PSI_IMPLANT_LOG

/decl/security_level/default/sierradept/code_orange/switching_up_to()
	security_announcement_up.Announce("Судно имеет серьёзные структурные повреждения, а также испытывает отказы множества систем. \
	Всему инженерному персоналу требуется обратиться к вышестоящим сотрудникам для получения инструкций. \
	Весь не-инженерный персонал должен покинуть затронутые повреждениями отсеки. Рекомендуется ношение скафандров и \
	следование указаниям инженерного персонала.", "Внимание! Код угрозы повышен до Оранжевого")
	notify_station()
	GLOB.using_map.lock_high_secure_areas()
	GLOB.using_map.toggle_crew_sensors(1)

/decl/security_level/default/sierradept/code_orange/switching_down_to()
	security_announcement_down.Announce("Судно имеет серьёзные структурные повреждения, а также испытывает отказы множества систем. \
	Всему инженерному персоналу требуется обратиться к вышестоящим сотрудникам для получения инструкций. \
	Весь не-инженерный персонал должен покинуть затронутые повреждениями отсеки. Рекомендуется ношение скафандров и \
	следование указаниям инженерного персонала.", "Внимание! Код угрозы понижен до Оражевого")
	notify_station()
	GLOB.using_map.lock_high_secure_areas()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.toggle_crew_sensors(1)

/decl/security_level/default/sierradept/code_blue
	name = "код синий"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_BLUE
	light_color_status_display = COLOR_BLUE
	overlay_alarm = "alarm_blue"
	overlay_status_display = "status_display_blue"
	alert_border = "alert_border_blue"
	psionic_control_level = PSI_IMPLANT_LOG

/decl/security_level/default/sierradept/code_blue/switching_up_to()
	security_announcement_up.Announce("На борту судна предположительно присутствует угроза безопасности для экипажа и самого судна. \
	Всем миротворцам требуется обратиться к вышестоящим сотрудникам для получения указаний; \
	разрешено обыскивать сотрудников и отсеки, а так же держать оружие на виду.", "Внимание! Код угрозы повышен до Синего")
	notify_station()
	GLOB.using_map.lock_high_secure_areas()

/decl/security_level/default/sierradept/code_blue/switching_down_to()
	security_announcement_down.Announce("Прямая угроза экипажу и судну отстуствует. На судне всё ещё может оставаться угроза безопасности для экипажа и самого судна. \
	Всем миротворцам требуется обратиться к вышестоящим сотрудникам для получения указаний; \
	разрешено обыскивать сотрудников и отсеки, а так же держать оружие на виду.", "Внимание! Код угрозы понижен до Синего")
	notify_station()
	GLOB.using_map.unlock_secure_areas()

/decl/security_level/default/sierradept/code_red
	name = "код красный"

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_RED
	overlay_alarm = "alarm_red"
	overlay_status_display = "status_display_red"
	alert_border = "alert_border_red"

	airlock_override = 1
	psionic_control_level = PSI_IMPLANT_DISABLED
	var/static/datum/announcement/priority/security/security_announcement_red = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/redalert1.ogg'))

/decl/security_level/default/sierradept/code_red/switching_up_to()
	security_announcement_red.Announce("Присутствует прямая угроза безопасности для экипажа и самого судна. \
	Весь экипаж должен обратиться к главам для получения инструкций. \
	Миротворцам разрешено обыскивать сотрудников и отсеки, а так же держать оружие на виду.", \
	"Внимание! Код угрозы повышен до Красного")
	notify_station()
	GLOB.using_map.unbolt_saferooms()
	GLOB.using_map.lock_secure_areas()
	GLOB.using_map.lock_high_secure_areas()
	GLOB.using_map.toggle_crew_sensors(3)

/decl/security_level/default/sierradept/code_red/switching_down_to()
	security_announcement_red.Announce("Взрывное устройство было обезврежено. \
	Весь экипаж должен обратиться к главам для получения инструкций. \
	Миротворцам разрешено обыскивать сотрудников и отсеки, а так же держать оружие на виду.", \
	"Внимание! Код угрозы понижен до Красного")
	notify_station()
	GLOB.using_map.lock_secure_areas()
	GLOB.using_map.lock_high_secure_areas()

/decl/security_level/default/sierradept/code_delta
	name = "код дельта"

	light_max_bright = 0.7
	light_inner_range = 1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_NAVY_BLUE

	overlay_alarm = "alarm_delta"
	overlay_status_display = "status_display_delta"
	alert_border = "alert_border_delta"

	psionic_control_level = PSI_IMPLANT_DISABLED
	var/static/datum/announcement/priority/security/security_announcement_delta = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/effects/siren.ogg'))

/decl/security_level/default/sierradept/code_delta/switching_up_to()
	security_announcement_delta.Announce("Внимание всему экипажу! На судне обнаружено взрывное устройство \
	большой мощности с активированным обратным отсчетом. Весь экипаж должен следовать инструкциям глав и охраны. \
	Это не учебная тревога.", "Внимание! Код Дельта")
	notify_station()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.unlock_high_secure_areas()
	GLOB.using_map.toggle_crew_sensors(3)

#undef PSI_IMPLANT_AUTOMATIC
#undef PSI_IMPLANT_SHOCK
#undef PSI_IMPLANT_WARN
#undef PSI_IMPLANT_LOG
#undef PSI_IMPLANT_DISABLED
