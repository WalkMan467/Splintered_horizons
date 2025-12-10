advancement grant @s only monsters:chapter_2/elekiel_phase_2/4/effect/false

scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 1

tag @s remove monster.elekiel_phase_2.4.effect.target

execute if entity @n[tag=mob.elekiel.2.crack,type=minecraft:item_display,distance=..8] rotated as 00000100-0000-0080-0000-008000000005 rotated ~ 0 positioned ^ ^ ^8 run function particle:portal/crack/use
execute if entity @n[tag=mob.elekiel.2.crack,type=minecraft:item_display,distance=..8] run return 0

function monsters:chapter_2/elekiel_phase_2/4/portal/use