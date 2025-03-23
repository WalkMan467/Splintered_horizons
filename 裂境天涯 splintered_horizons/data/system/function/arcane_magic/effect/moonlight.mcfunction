# 輝光

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force @a
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.15 20 normal @a
particle dust_color_transition{from_color:[0.000,0.592,0.659],scale:0.8,to_color:[0.000,0.200,1.000]} ~ ~1 ~ 0.5 0.5 0.5 1 80 normal @a
particle minecraft:sweep_attack ~ ~1 ~ 1 0.5 1 1 5 force @a
playsound minecraft:entity.warden.attack_impact voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.warden.tendril_clicks voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5

data modify entity @s Motion[1] set value 0.75

function system:arcane_magic/effect/remove_tag

scoreboard players set @s system.arcane_magic.cd 5