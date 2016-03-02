//Define code and anything for custom items here.

/obj/item/clothing/suit/storage/toggle/labcoat/mit
	name = "MiT Labcoat"
	desc = "A lab coat from the Martian Institute of Technology."
	icon = 'icons/obj/custom_items_obj.dmi'
	icon_state = "mitlabcoat"
	item_state = "mitlabcoat"
	icon_open = "mitlabcoat_open"
	icon_closed = "mitlabcoat"

/obj/item/watch/twostate
	icon = 'icons/obj/custom_items_obj.dmi'
	var/icon_open = ""
	var/icon_closed = ""

/obj/item/watch/twostate/kolo
	name = "Hummingbird Pocket-Watch"
	desc = "It is a gold-plated pocket watch with an engraving of a hummingbird on its cover."
	icon_state = "KoloWatch"
	item_state = "KoloWatch"
	icon_open = "KoloWatch_open"
	icon_closed = "KoloWatch"

/obj/item/watch/twostate/examine(mob/user)
	if(..(user, 1))
		if(icon_state == icon_open) // Checks that the watch is open, and tells the time when examined if it is.
			user << "The time on the watch reads [worldtime2text()]."

/obj/item/watch/twostate/attack_self()
	if(icon_state == icon_open) //Checks what the icon state is, swaps it, and plays a message.
		icon_state = icon_closed
		usr << "You close the cover on the watch."
	else if(icon_state == icon_closed) // Same as above.
		icon_state = icon_open
		usr << "With the flick of a thumb, you open the lid revealing the watch's face."
	else //If icon_open or icon_closed is missing.
		usr << "You attempt to close the watch, before realizing the hinge is stuck."
		return
