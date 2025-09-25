execute unless items entity @s armor.legs *[minecraft:custom_data~{windriders:1b} | custom_data~{windriders:1}] run return 0
execute if score @s armor.windriders_legplates.cd matches 1.. run return 0
execute if score @s armor.leggings.effect.actived matches 1.. run return 0

scoreboard players set @s armor.windriders_legplates.cd 1

effect give @s speed 5 0 true

tag @s add armors.windriders_legplates.effect
advancement grant @s only armors:type/windriders_legplates/effect/charge

function armors:type/windriders_legplates/fx

scoreboard players reset #armor.windriders_legplates.fx particle
execute rotated ~ 0 run function armors:type/windriders_legplates/fx

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1.25
playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.breeze.idle_ground voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 0.5 0.5

scoreboard players set @s armor.windriders_legplates.leggings.effect_delay 1

particle minecraft:gust_emitter_small ~ ~1 ~ 0 0 0 0 1 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 20 normal @a
particle falling_dust{block_state:"minecraft:white_wool"} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal

scoreboard players set @s armor.leggings.effect.actived 10