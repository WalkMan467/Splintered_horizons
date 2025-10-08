tag @s remove monster.forest_messenger.1.actived

effect give @s[type=#minecraft:undead] instant_damage 1 3 true
effect give @s[type=!#minecraft:undead] instant_health 1 3 true

effect give @s absorption 10 1 true

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 0.5
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 normal @a