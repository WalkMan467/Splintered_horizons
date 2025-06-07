scoreboard players remove @a[scores={armor.black_hole.boots.cd=1..}] armor.black_hole.boots.cd 1

tellraw @a[scores={armor.black_hole.boots.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"armor.black_hole_boots","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
execute as @a[scores={armor.black_hole.boots.cd=1}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1.5


schedule function armors:timer_s 1s