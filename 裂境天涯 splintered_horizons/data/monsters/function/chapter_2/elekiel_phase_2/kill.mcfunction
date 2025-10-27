stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.1 monster.elekiel_phase_2.cd
scoreboard players reset skill.2 monster.elekiel_phase_2.cd
scoreboard players reset skill.3 monster.elekiel_phase_2.cd
scoreboard players reset skill.4 monster.elekiel_phase_2.cd

schedule clear monsters:chapter_2/elekiel_phase_2/main

execute as @a run attribute @s attack_damage modifier remove monster.elekiel_phase_2.effect

execute as @e[tag=monster.elekiel_phase_2.3,tag=monster.forest_messenger,type=skeleton] at @s run function monsters:chapter_2/forest_messenger/cocoon/remove

execute as @a at @s run function particle:portal/crack/tp/remove

execute as @e[tag=mob.elekiel.display,type=!player] on passengers run kill @s
execute as @e[tag=mob.elekiel.display,type=!player] on passengers on passengers run kill @s

kill @e[tag=mob.elekiel.display,type=!player]
execute as @e[type=!#minecraft:dummy_mob,tag=monster.elekiel_phase_2.3,type=!player] on passengers run kill @s
kill @e[tag=monster.elekiel_phase_2.3,type=!#minecraft:dummy_mob,type=!player]

effect clear @a[scores={monster.elekiel_phase_2.skill.4.effect.void=0..}] glowing

tag @a remove monster.elekiel_phase_2.effect
tag @a remove monster.elekiel_phase_2.4.effect.target
tag @a remove monster.elekiel_phase_2.skill.2.target

scoreboard players reset @a entity.dummy_mob
scoreboard players reset @a monster.elekiel_phase_2.skill.4.effect.void
scoreboard players reset #monster.elekiel_phase_2.skill.4.portal.actived global.main
scoreboard players set @s player.detect.is_bossfight 0

advancement revoke @a only mob:elekiel/2/in
advancement revoke @a only mob:elekiel/2/out