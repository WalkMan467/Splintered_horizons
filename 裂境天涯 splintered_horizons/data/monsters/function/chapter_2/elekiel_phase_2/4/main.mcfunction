scoreboard players add @s monster.elekiel_phase_2.skill.4.casting 1

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 1 run function monsters:chapter_2/elekiel_phase_2/4/0

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 100 as @p[tag=monster.elekiel_phase_2.4.effect.target] at @s run function monsters:chapter_2/elekiel_phase_2/4/2

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 120 as @a at @s run playsound minecraft:entity.warden.sonic_charge voice @s ~ ~1 ~ 1 0.5

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 220 as @a at @s run playsound minecraft:entity.warden.sonic_boom voice @s ~ ~1 ~ 1 1
execute if score @s monster.elekiel_phase_2.skill.4.casting matches 220 as @a at @s run playsound minecraft:voice.attack_sound voice @s ~ ~1 ~ 1 1

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 260.. run function monsters:chapter_2/elekiel_phase_2/4/end