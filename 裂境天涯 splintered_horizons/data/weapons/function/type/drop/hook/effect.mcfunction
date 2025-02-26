# 執行者 hook.effect

summon marker ~ ~ ~ {Tags:["hook.effect.point","hook.effect.point.spawn"]}
scoreboard players operation @n[type=marker,tag=hook.effect.point.spawn] weapon.hook.user.id = @s weapon.hook.user.id

tag @n[type=marker,tag=hook.effect.point.spawn,limit=1] remove hook.effect.point.spawn

particle totem_of_undying ~ ~ ~ 0 0 0 0.5 80 force @a
playsound item.crossbow.loading_middle master @a ~ ~ ~ 10 2

kill @s

function weapons:type/drop/hook/point/loop