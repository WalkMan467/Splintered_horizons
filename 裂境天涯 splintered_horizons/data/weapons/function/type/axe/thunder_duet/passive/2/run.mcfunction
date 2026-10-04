# ===================================================
# 斧 雷霆二重奏 被動 階段 2 執行 / axe thunder duet passive step 2 run

    ## Guide [ function weapons:type/axe/thunder_duet/passive/2/run ] >>> 斧 雷霆二重奏 被動 階段 2 執行 / axe thunder duet passive step 2 run
    ## Guide [ function weapons:type/axe/thunder_duet/passive/2/dmg ] >>> 斧 雷霆二重奏 被動 階段 2 傷害 / axe thunder duet passive step 2 damage
    ## Guide [ function weapons:type/axe/thunder_duet/passive/use ] >>> 斧 雷霆二重奏 被動 觸發 / axe thunder duet passive activate

# ===================================================

execute \
    if score @s weapon.thunder_duet.passive.timer matches 1.. run \
return 0

scoreboard players reset @s weapon.thunder_duet.passive.state
scoreboard players set @s weapon.thunder_duet.passive.timer 5
scoreboard players reset @s weapon.thunder_duet.target.marker
tag @s add atker

execute \
    as @n[scores={weapon.thunder_duet.target.marker=0..},distance=..8,type=!#minecraft:dummy_mob,type=!player] at @s run \
function weapons:type/axe/thunder_duet/passive/2/dmg

scoreboard players set @s weapon.thunder_duet.cd 100

execute \
    if score @s weapon.effect.chaotic_thunder matches 1.. run \
scoreboard players set @s weapon.thunder_duet.cd 0
