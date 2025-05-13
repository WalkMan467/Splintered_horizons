function monsters:chapter_2/abyss_soulcutter/state_machine/main

ride @n[type=item_display,tag=aj.boss_1.root,distance=..10] mount @s

execute on passengers at @s if entity @s[type=item_display,tag=aj.boss_1.root] rotated as 00000014-0000-0014-0000-000100000019 run rotate @s ~ 0

execute store result score @s monster.abyss_soulcutter run data get entity @s Health
execute store result bossbar minecraft:monster.boss.abyss_soulcutter value run scoreboard players get @s monster.abyss_soulcutter
bossbar set minecraft:monster.boss.abyss_soulcutter players @a[distance=..60]
execute unless entity @p[distance=..60,gamemode=!spectator] run function monsters:chapter_2/abyss_soulcutter/void