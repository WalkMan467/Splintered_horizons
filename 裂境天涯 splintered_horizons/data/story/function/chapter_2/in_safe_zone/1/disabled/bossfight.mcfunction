# ===================================================
# Detecting BOSS fight activation, blocking player entry

    ## Guide [ function story:chapter_2/in_safe_zone/1/disabled/bossfight ] >>> Detecting BOSS fight activation, blocking player entry
# ===================================================

scoreboard players set @s sys.fall_immunity 20

function players:stop_animation
function music:stop
advancement grant @s only players:elytra_switch/false
scoreboard players set @s player.disable.elytra_switch 40

tag @s remove player.death
gamemode survival @s
tp @s 759 139 902 8 -20

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

tellraw @s [{"translate": "bossfight.failure.2","color": "red","bold": true}]