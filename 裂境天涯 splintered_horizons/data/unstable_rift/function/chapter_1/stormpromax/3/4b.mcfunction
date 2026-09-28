# 執行者 : player


attribute @s generic.gravity base set 0.08
effect give @s slow_falling 5 0 true
effect give @s instant_health 1 1 true

# particle
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 1
particle minecraft:firework ~ ~0.5 ~ 1 0.8 1 0 20 force

tag @s remove stormpm.3.2
tag @s remove stormpm.3.flytosky