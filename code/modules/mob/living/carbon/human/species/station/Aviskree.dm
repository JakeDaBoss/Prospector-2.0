/datum/species/aviskree
	name = "Aviskree"
	name_plural = "Aviskree"
	blurb = "A tall avian species, Aviskree originally hail from Avis, of the Aindege system, \
 	a heavily forested planet of avian species, <br/> <br/> The Aviskree live in a tradition \
 	heavy society with a tech level resembling that of early 2000s earth with advances in electricity. \
 	They are still acclimating to human society. Their native language is Aviachirp, a language made mostly of high pitched chirps."

	num_alternate_languages = 1
	language = LANGUAGE_AVISKREE
	secondary_langs = list("Aviachirp")
	name_language = "Aviachirp"

	blood_color = "#328332"
	flesh_color = "#8C4600"
	base_color = "#001144"
	tail = "aviskreetail"
	tail_hair = "feathers"

	icobase = 'icons/mob/human_races/r_Aviskree.dmi'
	deform = 'icons/mob/human_races/r_def_Aviskree.dmi'
//	damage_overlays = ''
//	damage_mask = ''
//	blood_mask = ''
//	eyes = ""

	total_health = 90
	oxy_mod = 1.1
	toxins_mod = 0.9
	flash_mod = 1.2
	brute_mod = 1.3
	burn_mod = 1.0

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	cold_level_1 = 180
	cold_level_2 = 130
	cold_level_3 = 70
	heat_level_1 = 320
	heat_level_2 = 370
	heat_level_3 = 600
	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Your feathers prickle in the heat.",
		"You feel uncomfortably warm.",
		)

	cold_discomfort_level = 180

	has_organ = list(
		"heart" =    /obj/item/organ/heart,
		"lungs" =    /obj/item/organ/lungs,
		"liver" =    /obj/item/organ/liver,
		"kidneys" =  /obj/item/organ/kidneys,
		"brain" =    /obj/item/organ/brain,
		"eyes" =     /obj/item/organ/eyes
		)

	unarmed_types = list(
		/datum/unarmed_attack/bite/sharp,
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/stomp
		)


// /datum/species/aviskree/handle_environment() // Going to leave this here incase we need a process proc.
