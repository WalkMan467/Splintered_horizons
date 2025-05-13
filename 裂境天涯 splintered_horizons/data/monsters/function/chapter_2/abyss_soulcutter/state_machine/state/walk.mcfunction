execute if score @s monster.abyss_soulcutter.state_machine.state matches 1 run return 0

scoreboard players set @s monster.abyss_soulcutter.state_machine.state 1

scoreboard players display numberformat 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state fixed {"translate":"state_machine.walk","fallback": "[移動]","color":"gold"}