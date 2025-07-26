execute unless entity @s[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:1b,duration:-1}]}}] run return 0

particle dust_color_transition{from_color:[0.000,0.000,0.000],scale:2,to_color:[1.000,0.000,0.000]} ~ ~1 ~ 2 2 2 1 300 force @a
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.25 200 normal
particle minecraft:lava ~ ~1 ~ 0 0 0 1 50 force @a
particle dust_pillar{block_state:"minecraft:redstone_block"} ~ ~1 ~ 1 0 1 1 400 normal @a

execute positioned ~ ~1 ~ run function particle:tunder_red/use {duration:10,spread:3}

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.nearby_closest voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.enderman.scream voice @a ~ ~1 ~ 1 0.89
playsound minecraft:entity.wither.spawn voice @a ~ ~1 ~ 1 1.25
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.5

execute as @e[tag=freeze,distance=..5,type=!player,type=!#minecraft:dummy_mob] run effect give @s resistance 1 255 true
execute as @e[tag=freeze,distance=..5,type=!player,type=!#minecraft:dummy_mob] run effect give @s regeneration 2 255 true
tag @e[distance=..5,type=!player,type=!#minecraft:dummy_mob] remove freeze

kill @s[type=area_effect_cloud]