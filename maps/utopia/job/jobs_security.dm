/datum/job/warden
	title = "Warden"
	department = "Охранный"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "Главе Миротворцев"
	economic_power = 8
	minimal_player_age = 8
	alt_titles = list(
		"Security Sergeant",
		)
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/security/warden
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/nt)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_HAULING	  = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 25

	access = list(access_seceva, access_guard, access_security, access_brig, access_armory, access_forensics_lockers,
			            access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_gun, access_hangar, access_warden
			            )

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	good_genome_prob = 40

	roundstart_insight = TRUE

/datum/job/warden/get_description_blurb()
	return "Надзиратель отвечает за наблюдение, допрос, уход и безопасность заключенных, арестованных миротворцами.\
	Как следует из названия, он несет ответственность за наблюдение за различными камерами и шкафами со снаряжением, доступным персоналу безопасности,\
	а также за надлежащую организацию проведения допросов подозреваемых и наказаний виновных.\
	Это включает в себя обновление их записей в базах данных, а также исполнение наказаний, в виде помещения в камеру или процедуре озарения."

/datum/job/detective
	title = "Criminal Investigator"
	department = "Охранный"
	department_flag = SEC
	hud_icon = "huddetective"
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 6
	supervisors = "Главе Миротворцев"
	economic_power = 5
	skill_points = 14
	alt_titles = list(
		"Forensic Technician"
		)
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/security/detective
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/civilian, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 22

	access = list(access_seceva, access_security, access_brig, access_forensics_lockers,
			            access_maint_tunnels, access_emergency_storage, access_eva,
			            access_sec_doors, access_morgue, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	good_genome_prob = 25

	roundstart_insight = TRUE

/datum/job/detective/get_description_blurb()
	return "Детектив занимается расследованием преступлений, взятием отпечатков пальцев, поиском потенциальных преступников и разрешением самых запутанных дел.\
	Его основная миссия - выяснить, кто совершил преступление и собрать все имеющиеся доказательства."

/datum/job/officer
	title = "Peacemaker"
	department = "Охранный"
	department_flag = SEC
	total_positions = 4
	spawn_positions = 4
	minimal_player_age = 5
	supervisors = "Главе Миротворцев и Смотрителю (сержанту)"
	economic_power = 6
	alt_titles = list("Junior Guard")

	skill_points = 20

	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/security/officer
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)

	access = list(access_seceva, access_guard, access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	good_genome_prob = 15

	roundstart_insight = TRUE

/datum/job/officer/get_description_blurb()
	return "Миротворец - это основная должность отдела безопасности. Миротворцы представляют собой первую линию защиты корабля от криминальных элементов и враждебных форм жизни. \
	 Обязанностью миротворцев является наблюдение за кораблём и охрана утопийцев от подозрительных или потенциально опасных лиц, намеревающих нарушить закон Утопии. \
	 Главной задачей миротворцев является предотвращение допуска потенциально опасных лиц и форм жизни на Утопии, путём наказания методом кнута и пряника. \
	 У вас не смолкает чувство гордости за место где вы находитесь, от чего хочется везде и всюду славить Утопию. Слава Утопии!"

/datum/job/security_assistant
	title = "Peacemaker Cadet"
	department = "Охранный"
	department_flag = SEC

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 5
	supervisors = "Главе Миротворцев и остальному охранному персоналу"
	economic_power = 3
	selection_color = "#601c1c"
	alt_titles = list("Security Recruit")

	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC)
	skill_points = 18

	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/security/assist
	allowed_branches = list(
			/datum/mil_branch/employee
		)
	allowed_ranks = list(
			/datum/mil_rank/civ/nt
		)

	access = list(access_seceva, access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_hangar)

	minimal_access = list()

	roundstart_insight = TRUE

/datum/job/security_assistant/get_description_blurb()
	return "Кадетом может быть как молодой специалист, заканчивающий или уже кончивший свое обучение по специальности, так и более опытный человек, \
	например бывший военный, только стажирующийся, находящийся на испытательном сроке. Основное занятие кадета - патрулирование вместе с Офицером, либо же просмотр камер при нахождении в бриге."

/datum/job/hos/equip(var/mob/living/carbon/human/H)
	. = ..()
	//if(.)
	//	H.implant_insight(H)

/datum/job/warden/equip(var/mob/living/carbon/human/H)
	. = ..()
	//if(.)
	//	H.implant_insight(H)

/datum/job/detective/equip(var/mob/living/carbon/human/H)
	. = ..()
	//if(.)
	//	H.implant_insight(H)

/datum/job/officer/equip(var/mob/living/carbon/human/H)
	. = ..()
	//if(.)
	//	H.implant_insight(H)
