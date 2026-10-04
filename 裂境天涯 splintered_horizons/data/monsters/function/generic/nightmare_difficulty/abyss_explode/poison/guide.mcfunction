# ===================================================
# 夢魘 深淵爆炸 毒液 飛行中 / abyss explode poison in flight

    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/guide ] >>> 夢魘 深淵爆炸 毒液 飛行中 / abyss explode poison in flight
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/main ] >>> 夢魘 深淵爆炸 排程 / nightmare abyss explode scheduler
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/end ] >>> 夢魘 深淵爆炸 毒液 落地 / abyss explode poison landed

# ===================================================

particle dust_color_transition{from_color:[0.000,0.020,0.012],to_color:[0.000,0.459,0.275],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a
particle block{block_state:"minecraft:sculk"} ~ ~ ~ 0 0 0 0 1 force @a

execute \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run \
function monsters:generic/nightmare_difficulty/abyss_explode/poison/end

execute \
    unless entity @p[distance=..1.25,gamemode=!spectator] run \
return 0

tag @a[distance=..1.25,gamemode=!spectator] add monster.nightmare_difficulty.abyss_explode.poison.target

effect give @a[distance=..1.25,tag=monster.nightmare_difficulty.abyss_explode.poison.target] poison 5 1 false

execute \
    as @a[distance=..1.25,tag=monster.nightmare_difficulty.abyss_explode.poison.target] run \
damage @s 5 magic

tag @a[distance=..1.25,tag=monster.nightmare_difficulty.abyss_explode.poison.target] remove monster.nightmare_difficulty.abyss_explode.poison.target

kill @s