
# entity
execute as @e[type=!#minecraft:dummy_mob,distance=..4.5] unless entity @s[distance=..2] run tag @s add dmger
scoreboard players set @s atk 150
function dmg_formula:weapons/type/sword/nightfall/passive/calculate

# particle
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.5
particle flash ~ ~ ~ 0 0 0 0 0 force

# reset
scoreboard players reset @s weapon.nightfall.charge