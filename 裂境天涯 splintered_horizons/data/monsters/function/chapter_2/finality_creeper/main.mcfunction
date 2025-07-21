execute unless entity @s[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:1b,duration:-1}]}}] run return 0

particle dust_color_transition{from_color:[0.000,0.000,0.000],scale:2,to_color:[1.000,0.000,0.000]} ~ ~1 ~ 1 1 1 1 300 force @a
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.25 200 normal
particle minecraft:lava ~ ~1 ~ 0 0 0 1 50 force @a

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.nearby_closest voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.enderman.scream voice @a ~ ~1 ~ 1 0.89
playsound minecraft:entity.wither.spawn voice @a ~ ~1 ~ 1 1.25
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.5

scoreboard players set @e[distance=..4,type=!player,type=!#minecraft:dummy_mob] monster.effect.finality 600

kill @s[type=area_effect_cloud]