scoreboard players set @s weapon.effect.shadow 100

playsound minecraft:entity.wither.shoot voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75

particle dust_color_transition{from_color:[0.239,0.000,0.420],scale:1.5,to_color:[0.012,0.000,0.098]} ~ ~1 ~ 0.5 0.5 0.5 1 40 normal @a
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a