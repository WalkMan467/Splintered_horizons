# ===================================================
# 鐮 終焉之墟 效果 explosion / scythe ruins of the finality effect explosion

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/explosion ] >>> 鐮 終焉之墟 效果 explosion / scythe ruins of the finality effect explosion
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/damage ] >>> 鐮 終焉之墟 效果 傷害 / scythe ruins of the finality effect damage
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/run ] >>> 鐮 終焉之墟 效果 執行 / scythe ruins of the finality effect run

# ===================================================

playsound minecraft:voice.ruins_of_the_end_hurt voice @a ~ ~1 ~ 2 1

title @s subtitle [{"translate":"weapon.ruins_of_the_finality.tips.1","color":"gray","with": [{"keybind":"key.jump","underlined":true,"color":"dark_green"}]}]

particle minecraft:flame ~ ~1 ~ 0 0 0 1 80 normal @a

function aj:ruins_of_the_finality_skill/summon {args: {animation: 'skills_2', start_animation: true}}


execute \
    as @e[distance=..10,type=!player,type=!#dummy_mob] at @s run \
function weapons:type/scythe/ruins_of_the_finality/effect/damage

execute at @e[distance=..10,type=!player,type=!#dummy_mob] run \
particle block{block_state:"minecraft:red_wool"} ~ ~1 ~ 1 1 1 0 80 force @a