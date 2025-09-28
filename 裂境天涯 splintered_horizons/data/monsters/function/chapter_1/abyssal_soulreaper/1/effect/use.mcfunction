execute if entity @s[gamemode=!survival,gamemode=!adventure] run return 0
execute store result score @s player.max_health run attribute @s max_health get
scoreboard players operation @s monster.abyss_soulcutter.damage.health.detect = @s player.max_health
scoreboard players set #math global.main 2
scoreboard players operation @s monster.abyss_soulcutter.damage.health.detect /= #math global.main

execute if score @s player.health <= @s monster.abyss_soulcutter.damage.health.detect run damage @s 9999 monsters:chapter_1/abyssal_soulreaper/effect/dot by @n[type=zombie,tag=monsters.abyssal_soulreaper]
execute if score @s player.health <= @s monster.abyss_soulcutter.damage.health.detect run return 0

damage @s 6 mob_attack by @n[type=zombie,tag=monsters.abyssal_soulreaper]

execute unless predicate monsters:chapter_1/abyssal_soulreaper/50 run return 0

function monsters:chapter_1/abyssal_soulreaper/effect/bleeding/use