
# player
tag @s add system.shooting_contest
clear @s[gamemode=!creative] *[custom_data~{type:"item",item:"coin_s"}] 20
function system:shooting_contest/bow/give

# game
scoreboard players set system.shooting_contest.timer global.main 64
scoreboard players set #system.shooting_contest.score global.main 0
schedule function system:shooting_contest/countdown/3 1s

# particle
execute in minecraft:overworld run summon item 1039 153.2 -71 {Age:5990s,PickupDelay:-1,Item:{id:"minecraft:emerald",count:1,components:{"minecraft:max_stack_size":1,item_model:"coin/s"}}}
execute in minecraft:overworld run playsound minecraft:block.iron_door.close master @a 1039 153.2 -71 1 2
execute in minecraft:overworld run playsound minecraft:entity.villager.work_fletcher master @a 1039 153.2 -71 1 1