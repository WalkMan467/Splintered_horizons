# ===================================================
# 斧 雷霆二重奏 右鍵 selected / axe thunder duet right click selected

    ## Guide [ function weapons:type/axe/thunder_duet/rc/selected ] >>> 斧 雷霆二重奏 右鍵 selected / axe thunder duet right click selected
    ## Guide [ function weapons:type/axe/thunder_duet/rc/damage ] >>> 斧 雷霆二重奏 右鍵 傷害 / axe thunder duet right click damage
    ## Guide [ function weapons:type/axe/thunder_duet/rc/target ] >>> 斧 雷霆二重奏 右鍵 target / axe thunder duet right click target
    ## Guide [ function weapons:type/axe/thunder_duet/player_main ] >>> 斧 雷霆二重奏 player main / axe thunder duet player main

# ===================================================

scoreboard players reset @s weapon.thunder_duet.target.delay

tag @s add temp

execute \
    as @e[sort=arbitrary,distance=..8,tag=!temp.2,type=!player,type=!#minecraft:dummy_mob] at @s \
    if score @s weapon.thunder_duet.id = @p[sort=arbitrary,distance=..8,tag=temp] weapon.thunder_duet.id run \
function weapons:type/axe/thunder_duet/rc/damage


scoreboard players set @n[distance=..8,tag=temp.2,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.target.marker 40

execute \
    as @n[sort=arbitrary,distance=..8,tag=temp.2,scores={weapon.thunder_duet.target.marker=0..},type=!player,type=!#minecraft:dummy_mob] at @s run \
function weapons:type/axe/thunder_duet/rc/target

scoreboard players reset @e[sort=arbitrary,distance=..8,tag=temp.2,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.id

tag @e[sort=arbitrary,distance=..8,tag=temp.2,type=!#minecraft:dummy_mob,type=!player] remove temp.2
scoreboard players reset @s weapon.thunder_duet.id

tag @s remove temp