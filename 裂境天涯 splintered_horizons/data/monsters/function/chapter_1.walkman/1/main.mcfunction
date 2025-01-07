spreadplayers ~ ~ 7 8 under -55 false @s
playsound minecraft:entity.enderman.teleport voice @a ~ ~1 ~ 3 1.25
particle flash ~ ~1 ~ 0 0 0 0 1 force @a

tag @s remove chapter_1.walkman.1

scoreboard players remove @s[scores={chapter_1.walkman.1_count=1..}] chapter_1.walkman.1_count 1

scoreboard players set @s[scores={chapter_1.walkman.1_count=1..,chapter_1.walkman.1=..0}] chapter_1.walkman.1 10

execute if score @s chapter_1.walkman.1_count matches ..0 if score @s chapter_1.walkman.1 matches ..0 run function monsters:chapter_1.walkman/1/reset