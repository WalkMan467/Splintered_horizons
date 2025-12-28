summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,Health:30f,Size:0,Tags:["monsters.elekiel.2.vampire_flower.hit_box","summon"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel/2/vampire_flower"}},{id:"minecraft:block_display",Glowing:1b,teleport_duration:1,Tags:["monsters.elekiel.2.vampire_flower","summon"],Passengers:[{id:"minecraft:block_display",Glowing:1b,teleport_duration:1,glow_color_override:16711680,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:fire_coral"}},{id:"minecraft:block_display",Glowing:1b,teleport_duration:1,glow_color_override:16711680,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,-0.38268352f,0f,0.92387956f],right_rotation:[0f,0f,0f,1f],translation:[5.9604645e-8f,-1f,-0.70710677f],scale:[1f,0.99999976f,1f]},block_state:{Name:"minecraft:crimson_roots"}},{id:"minecraft:text_display",Glowing:1b,billboard:"center",line_width:200,text_opacity:-1,default_background:0b,shadow:0b,see_through:0b,alignment:"center",Tags:["monsters.elekiel.2.vampire_flower.timer","summon","monsters.elekiel.2.vampire_flower.state.1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.025f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:{"color":"white","text":"░░░░░░░░░░"},background:1073741824}],glow_color_override:16711680,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:fire_coral_fan"}}],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:max_health",base:30},{id:"minecraft:scale",base:2}]}

bossbar add chapter_2.elekiel.2 {"translate": "monsters.elekiel.2.bossbar"}
bossbar set chapter_2.elekiel.2 max 10
bossbar set chapter_2.elekiel.2 color green
bossbar set chapter_2.elekiel.2 style notched_10
bossbar set chapter_2.elekiel.2 players @a[distance=..60]

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 20
particle dust_pillar{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.25 0.25 0.25 1 100 normal
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.75 0.75 0.75 1 60 normal
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 normal

scoreboard players set @e[type=block_display,tag=monsters.elekiel.2.vampire_flower,tag=summon] duration 401
scoreboard players set @e[type=text_display,tag=monsters.elekiel.2.vampire_flower.timer,tag=summon] monster.elekiel.2.timer 10
scoreboard players set @e[type=slime,tag=monsters.elekiel.2.vampire_flower.hit_box,tag=summon] duration 401


execute \
    as @e[type=block_display,tag=monsters.elekiel.2.vampire_flower,tag=summon] \
    on passengers run \
scoreboard players set @s duration 401

tag @e[type=block_display,tag=monsters.elekiel.2.vampire_flower,tag=summon] remove summon
tag @e[type=text_display,tag=monsters.elekiel.2.vampire_flower.timer,tag=summon] remove summon