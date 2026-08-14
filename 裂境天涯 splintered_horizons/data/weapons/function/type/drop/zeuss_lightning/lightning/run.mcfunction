# ===================================================
# 投擲 宙斯閃電 lightning 執行 / thrown zeuss lightning lightning run

    ## Guide [ function weapons:type/drop/zeuss_lightning/lightning/run ] >>> 投擲 宙斯閃電 lightning 執行 / thrown zeuss lightning lightning run
    ## Guide [ function weapons:type/drop/zeuss_lightning/lightning/guide ] >>> 投擲 宙斯閃電 lightning 分派 / thrown zeuss lightning lightning dispatch

# ===================================================


execute \
    positioned ~ ~ ~ run \
function particle:zeuss_lightning_wave/use

particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0 0 0 0 2 normal @a
particle dust{color:[1.000,0.000,0.000],scale:1.5} ~ ~1 ~ 2 2 2 0 20 normal @a
particle dust{color:[1.000,0.000,0.000],scale:2.0} ~ ~0.5 ~ 1 0 1 0 40 normal @a


execute \
    as @e[type=!#minecraft:dummy_mob,type=!player,distance=..8] run \
damage @s 5 player_attack by @p

execute \
    as @e[type=!#minecraft:dummy_mob,type=!player,distance=..8] at @s run \
function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"armor",duration:160,base:-0.15,value:-0.15,max:1.0, id:"zeuss_lightning"}

kill @s