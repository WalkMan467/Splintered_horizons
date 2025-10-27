summon interaction ~ ~0.5 ~ {Tags:["player.tombstone","summon"],Passengers:[{id:"minecraft:block_display",Glowing:1b,CustomNameVisible:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,CustomName:"s",glow_color_override:16383998,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,0.15f,-0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:waxed_copper_chest",Properties:{facing:"north",type:"single",waterlogged:"false"}}}]}

scoreboard players operation @n[tag=player.tombstone,tag=summon,type=interaction,distance=..3] player.tombstone_system.id = @s player.id

tag @n[tag=player.tombstone,tag=summon,type=interaction,distance=..3] remove summon