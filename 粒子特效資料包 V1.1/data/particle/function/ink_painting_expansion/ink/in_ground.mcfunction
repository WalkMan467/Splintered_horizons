scoreboard players reset #particle.ink_painting_expansion.range.fx particle
execute rotated ~ 0 run function particle:ink_painting_expansion/ink/fx

# particle minecraft:flash{color:[0.000,0.000,0.000,1.00]} ~ ~ ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]
particle minecraft:dust_pillar{block_state:black_wool} ~ ~ ~ 0.25 0 0.25 0.1 100 normal
particle minecraft:item{item:"black_wool"} ~ ~1 ~ 0.25 0.25 0.25 0.1 100 normal

tag @s add ground


execute store result score #rdm global.main run random value 1..3

execute if score #rdm global.main matches 1 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
execute if score #rdm global.main matches 1 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
execute if score #rdm global.main matches 1 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
execute if score #rdm global.main matches 1 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
execute if score #rdm global.main matches 1 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5
execute if score #rdm global.main matches 1 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.5

execute if score #rdm global.main matches 2 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.75
execute if score #rdm global.main matches 2 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.75
execute if score #rdm global.main matches 2 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.75
execute if score #rdm global.main matches 2 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.75
execute if score #rdm global.main matches 2 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.75
execute if score #rdm global.main matches 2 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 0.75

execute if score #rdm global.main matches 3 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 1
execute if score #rdm global.main matches 3 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 1
execute if score #rdm global.main matches 3 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 1
execute if score #rdm global.main matches 3 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 1
execute if score #rdm global.main matches 3 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 1
execute if score #rdm global.main matches 3 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron voice @a ~ ~1 ~ 1 1

kill @s