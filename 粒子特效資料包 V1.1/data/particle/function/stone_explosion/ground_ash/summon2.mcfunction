
scoreboard players add #temp global.main 12

# summon

summon minecraft:block_display ~ ~ ~ {Tags:[fx.gz.ga,summon],brightness:{block:15,sky:15},block_state:{Name:"minecraft:basalt",Properties:{axis:"y"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}

tp @e[tag=summon,sort=nearest,limit=1] ~ ~ ~ ~ ~

summon minecraft:block_display ~ ~ ~ {Tags:[fx.gz.ga2,summon],brightness:{block:15,sky:15},block_state:{Name:"minecraft:basalt",Properties:{axis:"y"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}

tp @e[tag=summon,tag=fx.gz.ga2,sort=nearest,limit=1] ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=2] remove summon

# loop
execute if score #temp global.main matches ..360 rotated ~12 ~ run function particle:stone_explosion/ground_ash/summon2
