execute if score @s monster.abyss_soulcutter.state_machine.state matches 2 run return 0

scoreboard players set @s monster.abyss_soulcutter.state_machine.action 107

effect give @s slowness 6 1 true
execute on passengers run function animated_java:boss_1/animations/heavy_attack_1/tween {to_frame:10, duration:10}
scoreboard players set @s monster.abyss_soulcutter.state_machine.state 2

scoreboard players display numberformat 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state fixed {"translate":"state_machine.attack","fallback": "[攻擊]","color":"gold"}