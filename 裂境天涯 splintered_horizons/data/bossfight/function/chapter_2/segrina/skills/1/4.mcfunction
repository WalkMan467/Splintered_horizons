$execute \
    positioned 762 107 642 run \
summon item ~$(x) ~ ~$(z) {Age:5700,PickupDelay:32767,Tags:["monster.segrina.1.ball.dark","monster.segrina.1.ball","summon"],Item:{id:"minecraft:black_stained_glass",count:1}}

tag @e[sort=arbitrary,distance=..30,limit=20,tag=summon,tag=monster.segrina.1.ball,type=item] remove summon

scoreboard players remove #monster.segrina.1.ball.dark global.main 1

kill 002fa81f-0034-3432-fff9-b5670000a0fd