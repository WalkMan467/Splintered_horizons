## Create grave model
# Base
execute store result score &over_lava mp.temp if block ~ ~-1 ~ lava[level=0]
execute if score &over_lava mp.temp matches 0 run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"soul_soil"},transformation:{translation:[-0.65,0,-0.5],scale:[1.25,0.125,1],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score &over_lava mp.temp matches 1 run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"magma_block"},transformation:{translation:[-0.65,0,-0.5],scale:[1.25,0.125,1],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
# Headstone
execute unless dimension the_end unless dimension the_nether run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"stone_brick_wall",Properties:{up:"true",north:"low",south:"low"}},transformation:{translation:[-0.8,0,-0.4375],scale:[0.875,1,0.875],left_rotation:[0,0,0.0625,1],right_rotation:[0,0,0,1]}}
execute if dimension the_nether run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"polished_blackstone_brick_wall",Properties:{up:"true",north:"low",south:"low"}},transformation:{translation:[-0.8,0,-0.4375],scale:[0.875,1,0.875],left_rotation:[0,0,0.0625,1],right_rotation:[0,0,0,1]}}
execute if dimension the_end run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"deepslate_tile_wall",Properties:{up:"true",north:"low",south:"low"}},transformation:{translation:[-0.8,0,-0.4375],scale:[0.875,1,0.875],left_rotation:[0,0,0.0625,1],right_rotation:[0,0,0,1]}}
summon text_display ~ ~ ~ {Tags:["multipack.grave"],transformation:{left_rotation:[0,0,0.0625,1],right_rotation:[0,1,0,1],translation:[-0.23,0.79,0],scale:[1,0.74,0.74]},text:"R.I.P",background:0}
# Player name
scoreboard players operation &id mp.temp = @s mp.graves
execute if score #graves.display_name mp.settings matches 1 run summon text_display ~ ~ ~ {Tags:["multipack.grave"],transformation:{left_rotation:[0,0,0.0625,1],right_rotation:[0,1,0,1],translation:[-0.22,0.685,0],scale:[1,0.3,0.3]},text:{"selector":"@p[predicate=m_graves:compare_id]"},background:0}
# Player head
scoreboard players operation &id mp.temp = @s mp.graves
execute if score #graves.display_head mp.settings matches 1 as @p[predicate=m_graves:compare_id] run data modify storage multipack:graves id set from entity @s UUID
execute if score #graves.display_head mp.settings matches 1 run function m_graves:graves/place/player_head with storage multipack:graves
# Vegetation
execute if score #graves.decorators mp.settings matches 1 if score &over_lava mp.temp matches 0 if dimension overworld run function m_graves:graves/place/overworld_decorators
execute if score #graves.decorators mp.settings matches 1 if score &over_lava mp.temp matches 0 if dimension the_nether run function m_graves:graves/place/nether_decorators
scoreboard players reset &over_lava mp.temp
# Glow
execute at @s if score #graves.glowing mp.settings matches 1 as @e[distance=..0.1,type=#m_graves:grave,tag=multipack.grave] run data merge entity @s {Glowing:1b,glow_color_override:8388608}
# Copy id to all displays
scoreboard players operation &id mp.temp = @s mp.const
execute as @e[distance=..0.1,type=#m_graves:grave,tag=multipack.grave] unless score @s mp.const matches -2147483648..2147483647 run scoreboard players operation @s mp.const = &id mp.temp

