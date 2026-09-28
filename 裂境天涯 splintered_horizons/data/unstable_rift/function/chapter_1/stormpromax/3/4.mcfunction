# 執行者 : boss

# self
tag @s remove stormpm.3
tag @s remove stormpm.3.flytosky
attribute @s generic.gravity base set 0.04
effect give @s slow_falling 5 0 true
scoreboard players set @s disable.airborne 0

# player
execute as @a[tag=stormpm.3.2] at @s run function monsters:stormpromax/3/4b

# slimes
execute as @e[type=slime,tag=stormpm.3.4] at @s run function weapons:void