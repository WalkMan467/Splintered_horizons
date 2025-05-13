execute if score @s monster.abyss_soulcutter.state_machine.state matches 0 run return 0

execute on passengers run function animated_java:boss_1/animations/idle/tween {to_frame:10, duration:10}
scoreboard players set @s monster.abyss_soulcutter.state_machine.state 0

data modify entity @s NoAI set value 0b

scoreboard players display numberformat 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state fixed {"translate":"state_machine.idle","fallback": "[靜止]","color":"gold"}