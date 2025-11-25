advancement revoke @s only monsters:chapter_2/elekiel_phase_2/4/effect/false

function monsters:chapter_2/elekiel_phase_2/4/effect/disable_inventory/true

scoreboard players set @s monster.elekiel_phase_2.skill.4.effect.void 100

effect give @s invisibility 5 255 true
effect give @s glowing 5 255 true
effect give @s fire_resistance 5 255 true
effect give @s resistance 5 255 true
effect give @s darkness 5 255 true

give @s disc_fragment_5[item_model="air",tooltip_display={hide_tooltip:true},custom_data={disable_drop:1b}]

item replace entity @s armor.chest with poisonous_potato[equippable={slot:"chest",asset_id:"air"},item_model="air",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,enchantments={"binding_curse":1,"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1}] 1

attribute @s attack_damage modifier add monster.elekiel_phase_2.skill.4.effect.void -1 add_multiplied_base
attribute @s attack_knockback modifier add monster.elekiel_phase_2.skill.4.effect.void -1 add_multiplied_base
attribute @s knockback_resistance modifier add monster.elekiel_phase_2.skill.4.effect.void 1 add_multiplied_base
attribute @s safe_fall_distance modifier add monster.elekiel_phase_2.skill.4.effect.void 1024 add_value
attribute @s movement_speed modifier add monster.elekiel_phase_2.skill.4.effect.void -0.15 add_multiplied_base
attribute @s jump_strength modifier add monster.elekiel_phase_2.skill.4.effect.void -0.25 add_multiplied_base
attribute @s block_interaction_range modifier add monster.elekiel_phase_2.skill.4.effect.void -1024 add_value
attribute @s entity_interaction_range modifier add monster.elekiel_phase_2.skill.4.effect.void -1024 add_value

scoreboard players set @s entity.dummy_mob 1