# 輝光

particle minecraft:wax_on ~ ~1 ~ 0 0 0 10 80 force @a
particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 normal @a
particle minecraft:flame ~ ~1 ~ 0 0 0 0.15 20 normal @a
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:0.8,to_color:[1.000,0.400,0.000]} ~ ~1 ~ 0.5 0.5 0.5 1 80 normal @a
particle minecraft:sweep_attack ~ ~1 ~ 1 0.5 1 1 5 force @a

playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 2
playsound minecraft:entity.iron_golem.death voice @a ~ ~1 ~ 1 1.25
playsound minecraft:entity.illusioner.prepare_mirror voice @a ~ ~1 ~ 1 1.25

data modify entity @s Motion[1] set value 0.75

function system:arcane_magic/effect/remove_tag

scoreboard players set @s system.arcane_magic.cd 5