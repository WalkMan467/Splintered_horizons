advancement revoke @s only monsters:chapter_2/elekiel_phase_2/4/effect/true

function monsters:chapter_2/elekiel_phase_2/4/effect/disable_inventory/false

effect clear @s invisibility
effect clear @s glowing
effect clear @s fire_resistance
effect clear @s resistance
effect clear @s darkness

scoreboard players reset @s monster.elekiel_phase_2.skill.4.effect.void


attribute @s attack_damage modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s attack_knockback modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s knockback_resistance modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s safe_fall_distance modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s movement_speed modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s jump_strength modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s block_interaction_range modifier remove monster.elekiel_phase_2.skill.4.effect.void
attribute @s entity_interaction_range modifier remove monster.elekiel_phase_2.skill.4.effect.void

scoreboard players reset @s entity.dummy_mob