/spell/targeted/swap
	name = "swap"
	desc = "This spell swaps the positions of the wizard and a target. Causes brain damage."
	feedback = "SW"
	school = "conjuration"

	charge_type = Sp_HOLDVAR
	holder_var_type = "brainloss"
	holder_var_amount = 10

	invocation = "Joyo!"
	invocation_type = SpI_WHISPER

	level_max = list(Sp_TOTAL = 2, Sp_SPEED = 0, Sp_POWER = 2)

	spell_flags = Z2NOCAST
	range = 6
	max_targets = 1
	compatible_mobs = list(/mob/living)

	hud_state = "wiz_swap"

	cast_sound = 'sound/magic/mandswap.ogg'

/spell/targeted/swap/cast(list/targets, mob/user)
	for(var/mob/T in targets)
		var/turf/aT = get_turf(T)
		var/turf/bT = get_turf(user)

		T.forceMove(bT)
		user.forceMove(aT)

		apply_spell_damage(T)

/spell/targeted/swap/empower_spell()
	if(!..())
		return 0

	amt_eye_blind += 2

	return "This spell will now blind the target."
