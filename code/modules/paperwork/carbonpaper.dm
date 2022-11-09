/obj/item/paper/carbon
	name = "sheet of paper"
	icon_state = "paper_stack"
	item_state = "paper"
	var/copied = 0
	var/iscopy = 0


/obj/item/paper/carbon/on_update_icon()
	if(iscopy)
		if(info)
			icon_state = "cpaper_words"
			return
		icon_state = "cpaper"
	else if (copied)
		if(info)
			icon_state = "paper_words"
			return
		icon_state = "paper"
	else
		if(info)
			icon_state = "paper_stack_words"
			return
		icon_state = "paper_stack"



/obj/item/paper/carbon/verb/removecopy()
	set name = "Remove carbon-copy"
	set category = "Object"
	set src in usr

	if (copied == 0)
		var/obj/item/paper/carbon/c = src
		var/copycontents = c.info
		var/obj/item/paper/carbon/copy = new /obj/item/paper/carbon (usr.loc)
		copy.language = language
		if(info)
			copycontents = replacetext(copycontents, "<span style='font-family: [c.deffont]; color:", "<span style='font-family: [c.deffont]; nocolor:")	//state of the art techniques in action
			copycontents = replacetext(copycontents, "<span style='font-family: [c.crayonfont]; color:", "<span style='font-family: [c.crayonfont]; nocolor:")	//This basically just breaks the existing color tag, which we need to do because the innermost tag takes priority.
			copy.info += copycontents
			copy.SetName("Copy - " + c.name)
			copy.fields = c.fields
			copy.updateinfolinks()
		to_chat(usr, SPAN_NOTICE("You tear off the carbon-copy!"))
		c.copied = 1
		copy.iscopy = 1
		copy.update_icon()
		c.update_icon()
	else
		to_chat(usr, "There are no more carbon copies attached to this paper!")