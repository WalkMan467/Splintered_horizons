execute on passengers run function animated_java:boss_1/animations/spawn/play

stopsound @a record minecraft:bgm.scott_buckley_terminus
execute positioned 1721 100 882 as @a[distance=..60] at @s run playsound minecraft:bgm.scott_buckley_terminus record @s ~ ~ ~ 1 1

scoreboard players set @s monster.abyss_soulcutter.state_machine.action 108
scoreboard players set @s monster.abyss_soulcutter.state_machine.state -1
scoreboard players display numberformat 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state fixed {"translate":"state_machine.walk","fallback": "[生成動畫]","color":"gold"}