attribute @s minecraft:follow_range modifier add monsters.abyssal_soulreaper.skill -1 add_multiplied_base
attribute @s minecraft:attack_damage modifier add monsters.abyssal_soulreaper.skill -1 add_multiplied_base
attribute @s minecraft:movement_speed modifier add monsters.abyssal_soulreaper.skill -1 add_multiplied_base
attribute @s minecraft:jump_strength modifier add monsters.abyssal_soulreaper.skill -1 add_multiplied_base
attribute @s minecraft:gravity modifier add monsters.abyssal_soulreaper.skill 1024 add_value
attribute @s minecraft:safe_fall_distance modifier add monsters.abyssal_soulreaper.skill 1024 add_value

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~1 ~ 1 0.5

scoreboard players reset #monster.abyssal_soulreaper.fx.range particle
function monsters:chapter_1/abyssal_soulreaper/2/range