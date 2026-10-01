# 執行者 : slime上的marker

# particle
scoreboard players operation #stormpm.temp global.main = @s unstable_rift.stormpromax.duration
# #20 是取餘數用的常數，這包自己的風格是用之前就地設好
scoreboard players set #20 global.main 20
scoreboard players operation #stormpm.temp global.main %= #20 global.main
execute if score #stormpm.temp global.main matches 0 positioned ~ ~-2.5 ~ rotated ~ 0 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.5 2
execute if score #stormpm.temp global.main matches 0 positioned ~ ~-2.5 ~ rotated ~ 0 run function unstable_rift:chapter_1/1/stormpromax/3/2c

particle minecraft:glow_squid_ink ~ ~-2.5 ~ 2 2 2 0 2 force

# dead
tag @s add temp
execute on vehicle run tag @n[tag=temp] remove temp
execute if entity @s[tag=temp] run function unstable_rift:chapter_1/1/stormpromax/3/5
