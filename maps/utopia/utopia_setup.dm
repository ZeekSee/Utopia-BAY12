/datum/map/utopia/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/utopia/map_info(victim)
	to_chat(victim, "<h2>Информация</h2>")
	to_chat(victim, "Вы находитесь на борту <b>[station_name]</b>, космического убежища под руководством Галактического Cовета. Основной задачей вашего объекта является защита граждан и беженцев Центрального Правительства Солнечной Системы (ЦПСС). В прошлом станция носила название Сьерра и считалась безопасной в связи с её инновационными технологиями блю-спейс прыжков и в случае непредвиденной галактической опасности Утопия могла перескочить на удалённую от угрозы безопасную систему. ")
	to_chat(victim, "В один день жизнь персонала на станции изменилась с приходом \"Сьеррской Бойни\" официально считаясь \"Войной за освобождение Сьерры\". В связи с неожиданным ростом революционных настроений среди персонала, связанной с некомпетентностью управляющей компании, НаноТрейзен пришлось прибегнуть к зачистке станции. Корпорация НаноТрейзен вторглась на Сьерру, уничтожая на пути любых посредников революции.")
	to_chat(victim, "После зачистки Сьерра была на грани вымирания. Система жизнеобеспечения была повреждена, отчего жизнь на корабле могла подойти к концу спустя короткое время. Выжившие жители стали объединяться в коллективы и бандитские группировки, включая в себя различные радикализированные элементы, дабы сохранить своё существование. Одна из таковых являлась общество \"Утопия\". Поклонники радикального \"утопического\" строя стали объединяться и восстанавливать станцию, однако \"объединение\" было отнюдь не мирным.")
	to_chat(victim, "После обретения власти, \"Утопийцы\" оборвали сотрудничество с НаноТрейзен. Широко известно, что НТ когда-то поставляла львиную часть снабжения на Сьерру, включая поставки оружия и еды, будучи отрезанными от поставок \"Утопийцами\" было принято решение подписать контракт с другой организацией - Галактическим Советом. Станция возымела для себя новое название - \"Утопия\". Однако после восстановительных процессов, жизнь на \"Утопии\" оставляла желать лучшего, ведь существование на новой станции перевернулось с ног на голову... ")
	to_chat(victim, "")
	to_chat(victim, "Все вопросы задавать сюда - <a href=\"https://discord.gg/zdaXjN4GCN\">Дискорд сервер</a> <a href=\"https://vk.com/utopiastation\">Паблик Вконтакте</a>")
	to_chat(victim, "<br><span class='danger'>Внимание!</span> На данный момент существует баг, из-за которого слоты с персонажами могут не загрузиться. Если он произошел - зайдите во вкладку OOC и нажмите 'Fix characters load'.")

/datum/map/utopia/send_welcome()
	var/welcome_text = "<center><img src = sierralogo.png /><br /><font size = 3><b>SSS Utopia</b> Показания Сенсоров:</font><hr />"
	welcome_text += "Отчет сгенерирован [stationdate2text()] в [stationtime2text()]</center><br /><br />"
	welcome_text += "Текущая система: <b>[system_name]</b><br />"
	welcome_text += "Следующая система для прыжка: <b>[generate_system_name()]</b><br />"
	welcome_text += "Дней до Солнечной Системы: <b>[rand(15,45)]</b><br />"
	welcome_text += "Дней с последнего визита в порт: <b>[rand(60,180)]</b><br />"
	welcome_text += "Результаты сканирования показали следующие потенциальные объекты для исследования:<br />"

	var/list/space_things = list()
	var/obj/effect/overmap/sierra = map_sectors["1"]
	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
		if(O.name == sierra.name)
			continue
		if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
			continue
		if(O.hide_from_reports)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/visitable/O in space_things)
		var/location_desc = " на текущем квадрате."
		if(O.loc != sierra.loc)
			var/bearing = round(90 - Atan2(O.x - sierra.x, O.y - sierra.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", по азимуту [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Обнаружены сигналы бедствия:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>Сигналов бедствия не обнаружено.<br />"
	welcome_text += "<hr>"

	post_comm_message("SSS Utopia Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "Сканирование сектора завершено. Информация передана в базу данных консолей связи.")
