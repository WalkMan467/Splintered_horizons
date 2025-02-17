function animated_java:abyssal_dragon/remove/this

execute if score #aj.performance_limit global.main matches 1.. run scoreboard players remove #aj.performance_limit global.main 1

playsound minecraft:entity.ender_dragon.growl voice @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 3 0.5
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 3 0.5

particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 normal @a