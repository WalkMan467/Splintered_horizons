execute on target at @s run function system:campfire/interaction/store_pos

execute on target at @s run tellraw @s {"translate":"system.campfire.spawnpoint","color":"dark_green"}

playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1

particle minecraft:wax_on ~ ~0.5 ~ 0.5 0.5 0.5 0 80 normal @a

execute if score #difficulty global.main matches 0..1 on target run function players:reset_state

data remove entity @s interaction