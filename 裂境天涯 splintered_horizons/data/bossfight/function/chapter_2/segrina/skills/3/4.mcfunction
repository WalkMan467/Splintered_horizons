particle minecraft:heart ~ ~1 ~ 1 0.5 1 1 5 normal @a
playsound minecraft:entity.breeze.idle_ground voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.breeze.jump voice @a ~ ~1 ~ 1 0.5
particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force @a

effect give @s instant_health 1 0 true
effect give @s speed 3 0 true

kill @n[sort=arbitrary,distance=..2,tag=bossfight.segrina.skills.3.range,type=minecraft:area_effect_cloud]