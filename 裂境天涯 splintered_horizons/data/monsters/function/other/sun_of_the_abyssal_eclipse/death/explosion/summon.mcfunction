
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon husk ~ ~ ~ {Glowing:1b,Team:"glow_color_purple",PersistenceRequired:1b,IsBaby:0b,CanBreakDoors:0b,Tags:["sunfire_actived","melee_hit","ca.status_slot_main","ca.has_custom_status","monsters.sun_of_the_abyssal_eclipse","monster","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_3/sun_of_the_abyssal_eclipse/death/explosion"}},{id:"minecraft:marker",Tags:["main.duration.timer","summon"],data:{aj_kill:{name:""}}}],CustomName:{"color":"dark_purple","fallback":"I'm the blazing sun, destined to rise","translate":"monsters.sun_of_the_abyssal_eclipse.sunfire_actived"},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"feet"}],"minecraft:equippable":{slot:"feet",asset_id:"netherite"}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"legs"}]}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"},"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:0.0,operation:"add_multiplied_base",slot:"chest"}]}},head:{id:"minecraft:apple",count:1,components:{"minecraft:item_model":"freerot:sun_of_the_abyssal_eclipse"}},mainhand:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:item_model":"scythe/ruins_of_the_finality/1"}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:scale",base:1.25}]}


execute \
    as @e[type=husk,tag=monsters.sun_of_the_abyssal_eclipse,tag=monsters.spawn] at @s run \
function monsters:other/sun_of_the_abyssal_eclipse/setup

particle flash{color:[0.741,0.000,0.820,1.00]} ~ ~1 ~ 1 1 1 0 5 normal @a
particle dust_color_transition{from_color:[0.741,0.000,0.820],to_color:[0.000,0.000,0.000],scale:3} ~ ~1 ~ 1 1 1 1 100 normal @a
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 10 200 normal @a
particle dust_pillar{block_state:"minecraft:magenta_wool"} ~ ~ ~ 1 0 1 1 200 normal @a
playsound minecraft:entity.wither.spawn voice @a ~ ~1 ~ 0.375 1.5