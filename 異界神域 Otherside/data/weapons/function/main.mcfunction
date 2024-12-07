# Guide / 導向

    execute as @s[scores={drop=1..}] at @s run function weapons:type with entity @n[type=item,limit=1] Item.components."minecraft:custom_data"
    scoreboard players reset @s[scores={drop=1..}] drop

# Defens / 防禦

    execute if score @s player.defense matches 1..5 run function weapons:perfect_defens

    execute if score @s player.defense matches 0 run function weapons:perfect_defens_cancel

    execute if score @s player.defense matches 5.. run function weapons:perfect_defens_cancel
    execute if score @s player.defense matches 5..11 run function weapons:defense

    execute if score @s player.defense matches 11.. run function weapons:defense_cancel

# Timer / 計時器

    execute if score @s player.defense.timer matches 0 if score @s player.defense matches 1.. run function weapons:defense_cancel
    
    advancement revoke @s[scores={player.defense.timer=0,player.defense=1..}] only weapons:defense
    scoreboard players set @s[scores={player.defense.timer=0,player.defense=1..}] player.defense.cd 3
    execute as @s[scores={player.defense.timer=0,player.defense=1..}] run advancement grant @s only players:state/idle
    scoreboard players set @s[scores={player.defense.timer=0,player.defense=1..}] player.defense 0

    scoreboard players remove @s[scores={player.defense.cd=1..}] player.defense.cd 1