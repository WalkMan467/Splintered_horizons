scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 0

tag @a remove monster.elekiel_phase_2.4.effect.target

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp
execute as @a if score @s entity.dummy_mob matches 1.. run tag @s remove temp

execute as @r[tag=temp] at @s run function monsters:chapter_2/elekiel_phase_2/4/1

tag @a remove temp