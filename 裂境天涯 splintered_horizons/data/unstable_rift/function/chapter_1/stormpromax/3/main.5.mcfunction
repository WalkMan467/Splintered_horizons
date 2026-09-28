# 執行者 : slime上的marker

# particle
scoreboard players operation #temp math = @s duration
scoreboard players operation #temp math %= #20 global.main
execute if score #temp math matches 0 positioned ~ ~-2.5 ~ rotated ~ 0 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.5 2
execute if score #temp math matches 0 positioned ~ ~-2.5 ~ rotated ~ 0 run function monsters:stormpromax/3/2c

particle minecraft:glow_squid_ink ~ ~-2.5 ~ 2 2 2 0 2 force

# dead
tag @s add temp
execute on vehicle run tag @n[tag=temp] remove temp
execute if entity @s[tag=temp] run function monsters:stormpromax/3/5