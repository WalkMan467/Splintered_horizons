

# particle
scoreboard players set #temp global.main 0
execute positioned ~ ~0.1 ~ rotated ~ 0 run function monsters:stormpromax/2/2.par

playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 3 0
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.2 2
particle minecraft:explosion_emitter

# hitbox
execute as @a[distance=..4] run damage @s 12 magic by @n[tag=stormpromax]
execute positioned ~ ~0.3 ~ run function monsters:stormpromax/2/3b

# end
function monsters:stormpromax/2/break_tnt