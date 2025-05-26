execute if score @s monster.abyss_soulcutter.state_machine.state matches 3 run return 0

scoreboard players set @s monster.abyss_soulcutter.state_machine.action 20

effect give @s slowness 6 1 true
execute on passengers run function animated_java:boss_1/animations/back/tween {to_frame:10, duration:10}
scoreboard players set @s monster.abyss_soulcutter.state_machine.state 3

scoreboard players display numberformat 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state fixed {"translate":"state_machine.attack","fallback": "[翻滾]","color":"gold"}