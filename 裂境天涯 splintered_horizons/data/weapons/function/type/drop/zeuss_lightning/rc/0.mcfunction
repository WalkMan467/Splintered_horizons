
execute \
    if predicate players:detect/air run \
attribute @s gravity modifier add weapon.zeuss_lightning.effect -0.2 add_value

execute \
    unless predicate players:detect/air run \
attribute @s gravity modifier add weapon.zeuss_lightning.effect -0.125 add_value

playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.75
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 1 0.5 0 60