particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a

execute \
    as @a at @s run \
playsound minecraft:block.vault.open_shutter voice @s ~ ~1 ~ 1 0.75

execute \
    as @a at @s run \
playsound minecraft:entity.generic.explode voice @s ~ ~1 ~ 1 0.75

summon minecraft:block_display ~ ~ ~ {teleport_duration:2,glow_color_override:45336,Glowing:1b,start_interpolation:1,interpolation_duration: 5, Tags:["summon","monsters.elekiel.2.tree"],block_state: {Name: "minecraft:air"}, brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0.0f, -0.5f]}}


execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] run \
data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 10.0f, 5.0f], translation: [-2.5f, 0.0f, -2.5f]}}

execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] run \
scoreboard players set @s duration 100

execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] \
    store result score @s monster.elekiel.1.rdm_monsters run \
random value 1..4


execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] at @s \
    if score @s monster.elekiel.1.rdm_monsters matches 1 \
    positioned ~ ~1 ~ run \
summon skeleton ~ ~ ~ {PersistenceRequired:1b,AbsorptionAmount:0f,Health:20f,Tags:["monsters.chapter_2.elekiel.1.tree.monsters","monster","monster.abyss_skeleton"],CustomName:{"bold":true,"color":"dark_purple","italic":false,"translate":"monster.abyss_skeleton"},equipment:{feet:{components:{"minecraft:trim":{material:"minecraft:abyss_material",pattern:"minecraft:abyss_trim"}},count:1,id:"minecraft:leather_boots"},legs:{components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_leggings"},chest:{components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_chestplate"},head:{components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcxMTM0NDA3Mzg3MSwKICAicHJvZmlsZUlkIiA6ICJjMTJkMmY5ZWJhZGI0ZTllYTIxZmM2M2M3YWY3M2E5NSIsCiAgInByb2ZpbGVOYW1lIiA6ICJEcmVhbXlOZW9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzk0YjlmYzY4ZTJlZTA3N2U5Nzk4NzNhNTUyNjg5ZmM0Y2RjMmUyNGNhZTQ1MTc5ZWI1NWVkNzJkOWY1ZmFhODciCiAgICB9CiAgfQp9"}]}},count:1,id:"minecraft:player_head"},mainhand:{components:{"minecraft:attribute_modifiers":[{amount:0.0d,id:"minecraft:attack_damage",slot:"mainhand",type:"minecraft:attack_damage",operation:"add_multiplied_base"}],"minecraft:tooltip_display":{hidden_components:["minecraft:attribute_modifiers"]}},count:1,id:"minecraft:wooden_sword"}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:attack_damage",base:7},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.25}]}

execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] at @s \
    if score @s monster.elekiel.1.rdm_monsters matches 2 \
    positioned ~ ~1 ~ run \
function monsters:summon/chapter_2/soul_sharpshooter

execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] at @s \
    if score @s monster.elekiel.1.rdm_monsters matches 3 \
    positioned ~ ~1 ~ run \
summon bogged ~ ~ ~ {Tags:["monster","monsters.chapter_2.elekiel.1.tree.monsters"],fall_distance:0f,PortalCooldown:0,HurtTime:0s,DeathTime:0s,PersistenceRequired:1b,Health:20f,sheared:0b,equipment:{feet:{components:{"minecraft:trim":{material:"minecraft:abyss_material",pattern:"minecraft:abyss_trim"}},count:1,id:"minecraft:leather_boots"},legs:{components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_leggings"},chest:{components:{"minecraft:trim":{material:"minecraft:eventually_material",pattern:"minecraft:eventually_trim"}},count:1,id:"minecraft:leather_chestplate"},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcxMTQ1Mjk0NjgzMywKICAicHJvZmlsZUlkIiA6ICJiZWNlZGU1YmRkODY0YTkwOTc3MTRmODk0ZWUxNmE3MCIsCiAgInByb2ZpbGVOYW1lIiA6ICJTYW1hQ29tcG9zZXIiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQ0NzM5YjAyZTkzODIwNTI0ZmY0YzNjNGY1ZGQ2NDA3ODg5NDE0ZjRiYWE3NmFiNjFkZWQ5OTM0MzAxMzU0IgogICAgfQogIH0KfQ=="}]}}},mainhand:{components:{"minecraft:attribute_modifiers":[{amount:0.0d,id:"minecraft:attack_damage",slot:"mainhand",type:"minecraft:attack_damage",operation:"add_multiplied_base"}],"minecraft:tooltip_display":{hidden_components:["minecraft:attribute_modifiers"]}},count:1,id:"minecraft:netherite_axe"}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.25}]}

execute \
    as @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] at @s \
    if score @s monster.elekiel.1.rdm_monsters matches 4 \
    positioned ~ ~1 ~ run \
summon zombie ~ ~ ~ {PersistenceRequired:1b,Health:20f,IsBaby:0b,CanBreakDoors:0b,DrownedConversionTime:-1,InWaterTime:-1,Tags:["monsters.chapter_2.elekiel.1.tree.monsters","abyssal_red_oni","onsters.spawn","eam.light","monster"],CustomName:{"bold":false,"color":"red","fallback":"深淵赤鬼","italic":false,"translate":"monsters.abyssal_red_oni"},equipment:{legs:{components:{"minecraft:equippable":{equip_sound:"minecraft:entity.creaking.activate",asset_id:"minecraft:abyssal_red_oni",slot:"legs"}},count:1,id:"minecraft:iron_leggings"},chest:{components:{"minecraft:equippable":{equip_sound:"minecraft:entity.creaking.activate",asset_id:"minecraft:abyssal_red_oni",slot:"chest"}},count:1,id:"minecraft:iron_chestplate"},head:{components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc0NTY2MjMxOTkxNCwKICAicHJvZmlsZUlkIiA6ICJhYzY1NDYwOWVkZjM0ODhmOTM0ZWNhMDRmNjlkNGIwMCIsCiAgInByb2ZpbGVOYW1lIiA6ICJzcGFjZUd1cmxTa3kiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWZkZDg3NTQ0YjQxY2VlODIzNjI5Y2MzN2RmMWIyNDA3MmMzOTI3MjQ4OTUzNjRjNjdiODlhYjU0ZWUwYTFkOSIKICAgIH0KICB9Cn0="}]}},count:1,id:"minecraft:player_head"},mainhand:{count:1,id:"minecraft:stone_sword"}},drop_chances:{legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:armor",base:2},{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_speed",base:0.23000000417232513}]}

particle minecraft:spore_blossom_air ~ ~3 ~ 3 3 3 100 100 normal @a
particle minecraft:end_rod ~ ~3 ~ 0 0 0 0.5 100 normal @a
particle dust_pillar{block_state:"minecraft:moss_block"} ~ ~3 ~ 1.5 1.5 1.5 1 100 normal @a

tag @e[tag=monsters.elekiel.2.tree,tag=summon,type=block_display] remove summon