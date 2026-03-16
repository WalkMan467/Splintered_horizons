
scoreboard players operation #id temp = @s sys.zipline_platform.id
execute as @e[tag=sys.zipline_platform.act,tag=!sys.zipline_platform.using,distance=0..,type=interaction] if score @s sys.zipline_platform.id = #id temp run return run tag @s add sys.zipline_platform.target