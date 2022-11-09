/datum/map/utopia/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/utopia/map_info(victim)
	to_chat(victim, "<h2>����������</h2>")
	to_chat(victim, "�� ���������� �� ����� <b>[station_name]</b>, ������������ ������� ��� ������������ �������������� C�����. �������� ������� ������ ������� �������� ������ ������� � �������� ������������ ������������� ��������� ������� (����). � ������� ������� ������ �������� ������ � ��������� ���������� � ����� � � �������������� ������������ ���-����� ������� � � ������ �������������� ������������� ��������� ������ ����� ����������� �� �������� �� ������ ���������� �������. ")
	to_chat(victim, "� ���� ���� ����� ��������� �� ������� ���������� � �������� \"��������� �����\" ���������� �������� \"������ �� ������������ ������\". � ����� � ����������� ������ ������������� ���������� ����� ���������, ��������� � ����������������� ����������� ��������, ����������� �������� ���������� � �������� �������. ���������� ����������� ��������� �� ������, ��������� �� ���� ����� ����������� ���������.")
	to_chat(victim, "����� �������� ������ ���� �� ����� ���������. ������� ���������������� ���� ����������, ������ ����� �� ������� ����� ������� � ����� ������ �������� �����. �������� ������ ����� ������������ � ���������� � ���������� �����������, ������� � ���� ��������� ������������������ ��������, ���� ��������� ��� �������������. ���� �� ������� �������� �������� \"������\". ���������� ������������ \"������������\" ����� ����� ������������ � ��������������� �������, ������ \"�����������\" ���� ������ �� ������.")
	to_chat(victim, "����� ��������� ������, \"��������\" �������� �������������� � �����������. ������ ��������, ��� �� �����-�� ���������� ������� ����� ��������� �� ������, ������� �������� ������ � ���, ������ ����������� �� �������� \"����������\" ���� ������� ������� ��������� �������� � ������ ������������ - ������������� �������. ������� �������� ��� ���� ����� �������� - \"������\". ������ ����� ����������������� ���������, ����� �� \"������\" ��������� ������ �������, ���� ������������� �� ����� ������� ������������� � ��� �� ������... ")
	to_chat(victim, "")
	to_chat(victim, "��� ������� �������� ���� - <a href=\"https://discord.gg/zdaXjN4GCN\">������� ������</a> <a href=\"https://vk.com/utopiastation\">������ ���������</a>")
	to_chat(victim, "<br><span class='danger'>��������!</span> �� ������ ������ ���������� ���, ��-�� �������� ����� � ����������� ����� �� �����������. ���� �� ��������� - ������� �� ������� OOC � ������� 'Fix characters load'.")

/datum/map/utopia/send_welcome()
	var/welcome_text = "<center><img src = sierralogo.png /><br /><font size = 3><b>SSS Utopia</b> ��������� ��������:</font><hr />"
	welcome_text += "����� ������������ [stationdate2text()] � [stationtime2text()]</center><br /><br />"
	welcome_text += "������� �������: <b>[system_name]</b><br />"
	welcome_text += "��������� ������� ��� ������: <b>[generate_system_name()]</b><br />"
	welcome_text += "���� �� ��������� �������: <b>[rand(15,45)]</b><br />"
	welcome_text += "���� � ���������� ������ � ����: <b>[rand(60,180)]</b><br />"
	welcome_text += "���������� ������������ �������� ��������� ������������� ������� ��� ������������:<br />"

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
		var/location_desc = " �� ������� ��������."
		if(O.loc != sierra.loc)
			var/bearing = round(90 - Atan2(O.x - sierra.x, O.y - sierra.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", �� ������� [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>���������� ������� ��������:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>�������� �������� �� ����������.<br />"
	welcome_text += "<hr>"

	post_comm_message("SSS Utopia Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "������������ ������� ���������. ���������� �������� � ���� ������ �������� �����.")
