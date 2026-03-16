
summon marker ~ ~ ~ {Tags:["sys.zipline_platform.pos","summon"]}
scoreboard players operation @e[tag=summon,distance=..0.1,limit=1,type=marker] sys.zipline_platform.id = @s sys.zipline_platform.id
tag @e[tag=summon,distance=..0.1,limit=1,type=marker] remove summon