# 執行者 : tnt

# fix animation
data modify entity @s Air set value 100

execute if score @s duration matches 20 run function monsters:stormpromax/2/2
execute if score @s duration matches 40 run function monsters:stormpromax/2/2b
execute if score @s duration matches 60 run function monsters:stormpromax/2/2c
execute if score @s duration matches 80 run function monsters:stormpromax/2/2d

# break it
execute if score @s duration matches 20.. on passengers if entity @s[nbt={HurtTime:9s}] on vehicle run function monsters:stormpromax/2/break_tnt

# particle
particle minecraft:dust_pillar{block_state:"light_blue_concrete_powder"} ~ ~ ~ 0 0 0 0 3 force
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 0.06 2
execute if score @s duration matches 20.. positioned ~ ~0.3 ~ run function monsters:stormpromax/2/3