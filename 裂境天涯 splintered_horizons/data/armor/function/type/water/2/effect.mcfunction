effect give @e[distance=..8,type=!player,type=!#dummy_mob] slowness 5 0 false

playsound minecraft:entity.zombie.converted_to_drowned voice @a ~ ~ ~ 1 0.75
playsound minecraft:entity.player.splash voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1

scoreboard players reset #armor.water.2.range particle
function armor:type/water/2/range