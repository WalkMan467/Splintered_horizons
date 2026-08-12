execute \
    rotated ~ 0 run \
summon minecraft:block_display ~ ~ ~ {Tags:["fx.fsc.ec","summon"],block_state: {id: "minecraft:air"}, interpolation_duration: 1, teleport_duration: 1}

scoreboard players set @n[sort=arbitrary,distance=..1,tag=fx.fsc.ec,tag=summon,type=minecraft:block_display] duration 160

tag @n[sort=arbitrary,distance=..1,tag=fx.fsc.ec,tag=summon,type=minecraft:block_display] remove summon