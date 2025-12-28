# loop


execute \
    if score sys.shooting_contest.timer global.main matches 1.. run \
schedule function sys:shooting_contest/loop 1t

execute \
    if score sys.shooting_contest.timer global.main matches 1.. run \
scoreboard players remove sys.shooting_contest.timer global.main 1

execute \
    if score #sys.shooting_contest.target.timer global.main matches 1.. run \
scoreboard players remove #sys.shooting_contest.target.timer global.main 1

scoreboard players set #sys.shooting_contest.math global.main 20
scoreboard players operation sys.shooting_contest.timer_s global.main = sys.shooting_contest.timer global.main 
scoreboard players operation sys.shooting_contest.timer_s global.main /= #sys.shooting_contest.math global.main

fill 1058 152 -85 1037 156 -85 minecraft:spruce_planks replace
fill 1058 152 -69 1037 156 -69 minecraft:spruce_planks replace
fill 1046 151 -84 1057 151 -70 minecraft:spruce_planks replace
fill 1057 157 -70 1046 157 -84 minecraft:spruce_planks replace
fill 1045 152 -84 1045 152 -70 minecraft:spruce_planks replace
fill 1045 156 -70 1045 155 -84 minecraft:spruce_planks replace
fill 1045 153 -70 1045 153 -84 minecraft:light[level=15] replace
fill 1045 154 -84 1045 154 -70 minecraft:white_stained_glass_pane[north=true,south=true]

setblock 1058 153 -83 target replace
setblock 1058 153 -81 target replace
setblock 1058 153 -79 target replace
setblock 1058 153 -77 target replace
setblock 1058 153 -75 target replace
setblock 1058 153 -73 target replace
setblock 1058 153 -71 target replace


execute \
    in minecraft:overworld \
    positioned 1046 152 -84 \
    as @a[dx=12,dy=4,dz=14] run \
tp @s 1039 152 -77 -90 0


execute \
    if score sys.shooting_contest.timer global.main matches 1..100 run \
return 0

execute \
    if score #sys.shooting_contest.target.timer global.main matches 1.. run \
return 0

# summon

execute \
    in minecraft:overworld run \
function sys:shooting_contest/sys/reset

execute \
    in minecraft:overworld run \
function sys:shooting_contest/sys/setup


execute \
    store result score #sys.shooting_contest.target.timer global.main run \
random value 60..100