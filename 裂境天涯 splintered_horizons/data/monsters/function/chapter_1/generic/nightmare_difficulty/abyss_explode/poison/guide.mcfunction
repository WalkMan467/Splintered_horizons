particle dust_color_transition{from_color:[0.000,0.020,0.012],to_color:[0.000,0.459,0.275],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a
particle block{block_state:"minecraft:sculk"} ~ ~ ~ 0 0 0 0 1 force @a

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run \
function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/poison/end

execute \
    unless entity @p[distance=..1.05,gamemode=!spectator] run \
return 0

tag @p[distance=..1.05,gamemode=!spectator] add monster.nightmare_difficulty.abyss_explode.poison.target

effect give @p[sort=arbitrary,distance=..1.05,tag=monster.nightmare_difficulty.abyss_explode.poison.target] poison 5 1 false
damage @p[sort=arbitrary,distance=..1.05,tag=monster.nightmare_difficulty.abyss_explode.poison.target] 5 magic

tag @p[sort=arbitrary,distance=..1.05,tag=monster.nightmare_difficulty.abyss_explode.poison.target] remove monster.nightmare_difficulty.abyss_explode.poison.target

kill @s