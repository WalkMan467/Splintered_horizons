## Guide [ function monsters:chapter_2/abyss_soulcutter/main.boss ]

# 用途: 設定怪物狀態機邏輯 (Monsters State Machine)

scoreboard players remove @s[scores={monster.abyss_soulcutter.state_machine.action=1..}] monster.abyss_soulcutter.state_machine.action 1
scoreboard players remove @s[scores={monster.abyss_soulcutter.state_machine.back=1..}] monster.abyss_soulcutter.state_machine.back 1
execute if score @s monster.abyss_soulcutter.state_machine.back matches 1.. anchored feet rotated ~ 0 if block ^ ^1 ^-1 #air run tp @s ^ ^0.1 ^-1

execute if score @s monster.abyss_soulcutter.state_machine.action matches 1.. run return 0

# State -10 = spawn

    execute if score @s monster.abyss_soulcutter.state_machine.state matches -10 if entity @a[distance=..8,gamemode=!creative,gamemode=!spectator] run function monsters:chapter_2/abyss_soulcutter/state_machine/state/spawn
    execute if score @s monster.abyss_soulcutter.state_machine.state matches -11..-10 run return 0

# State 0 = idle

    execute if score @s monster.abyss_soulcutter.state_machine.state matches 1 unless entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function monsters:chapter_2/abyss_soulcutter/state_machine/state/idle

# State 1 = walk

    execute if score @s monster.abyss_soulcutter.state_machine.state matches 0 if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function monsters:chapter_2/abyss_soulcutter/state_machine/state/walk

# State 2 = attack

    execute unless score @s monster.abyss_soulcutter.state_machine.state matches 2 if entity @a[distance=..4,gamemode=!creative,gamemode=!spectator] run function monsters:chapter_2/abyss_soulcutter/state_machine/state/rdm_attack
    execute if score @s monster.abyss_soulcutter.state_machine.state matches 2 unless entity @a[distance=..4,gamemode=!creative,gamemode=!spectator] run function monsters:chapter_2/abyss_soulcutter/state_machine/state/walk