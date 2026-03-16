
# take all on passenger / vehicle


scoreboard players display name @s sys.zipline_platform.id {"translate":"sys.zipline_platform","fallback":"滑索台"}
scoreboard players operation @s sys.zipline_platform.id = #index sys.zipline_platform.id

execute \
    on passengers \
    if entity @s[tag=sys.zipline_platform.as] run \
scoreboard players operation @s sys.zipline_platform.id = #index sys.zipline_platform.id

execute \
    on passengers \
    if entity @s[tag=sys.zipline_platform.as] run \
scoreboard players display name @s sys.zipline_platform.id {"translate":"sys.zipline_platform.as","fallback":"滑索台盔甲座"}

tag @s remove summon

particle flash{color:[0.600,0.239,0.000,0.50]} ~ ~ ~ 0 0 0 0 1 normal
particle block{block_state:"minecraft:cut_copper"} ~ ~2 ~ 0.75 2 0.75 0 100 force @a
playsound minecraft:entity.copper_golem.spawn voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.copper_golem.step voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.copper_golem.step voice @a ~ ~1 ~ 1 1
playsound minecraft:block.copper.place voice @a ~ ~1 ~ 1 1