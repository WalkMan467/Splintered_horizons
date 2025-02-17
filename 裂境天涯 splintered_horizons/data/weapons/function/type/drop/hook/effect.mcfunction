scoreboard players add #weapons.hook.effect.point.id weapon.hook.effect.id 1

summon area_effect_cloud ~ ~ ~ {Tags:["hook.effect.point","hook.effect.point.spawn"],Duration:100}

tag @n[tag=hook.effect.point.spawn,limit=1] remove hook.effect.point.spawn

particle totem_of_undying ~ ~ ~ 0 0 0 0.5 80 force @a

kill @n[tag=hook.effect,limit=1]