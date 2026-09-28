# 執行者 : boss
scoreboard players add #stormpm.3.duration global.main 1

# self
execute facing entity @p feet run tp @s ^ ^ ^0.15 ~ 0

# particle
particle cloud 137 284 128 20 0 20 0.05 100 force

# players
execute positioned 137 284 128 as @a[distance=..55,tag=!stormpm.3.2] at @s run function monsters:stormpromax/3/1
execute positioned 137 284 128 as @a[distance=56.1..,tag=stormpm.3.2] at @s facing 137 284 128 rotated ~ 0 run tp @s ^ ^ ^1

# Move 3
execute if score #stormpm.3.duration global.main matches 120 run function monsters:stormpromax/3/2
execute if score #stormpm.3.duration global.main matches 1120 as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/3b
execute if score #stormpm.3.duration global.main matches 1220 as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/3c
execute if score #stormpm.3.duration global.main matches 1260 as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/3d
execute if score #stormpm.3.duration global.main matches 1280 as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/3e
execute if score #stormpm.3.duration global.main matches 1300 as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/3f
execute if score #stormpm.3.duration global.main matches 1320 as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/3
execute if score #stormpm.3.duration global.main matches 121.. unless entity @n[tag=stormpm.3.4,type=slime] run function monsters:stormpromax/3/4

# Move 1
execute as @e[type=marker,tag=stormpm.1.2] at @s run function monsters:stormpromax/1/main.2

# Move 2
execute as @e[type=item,tag=stormpm.2] at @s run data modify entity @s NoGravity set value 1b
execute as @e[type=item,tag=stormpm.2] at @s run tp @s ~ 303 ~