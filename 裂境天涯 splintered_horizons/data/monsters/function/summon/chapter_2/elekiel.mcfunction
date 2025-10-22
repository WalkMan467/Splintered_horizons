execute unless score #difficulty global.main matches 1.. run return 0
execute if entity 00000100-0000-0080-0000-008000000001 run return 0
execute if score #boss_area.chapter_2.elekiel global.main matches 1 run return 0

execute positioned 912 60 2018 as @n[distance=..3,type=item_display,tag=aj.global.root] run function animated_java:yibb_tstll/remove/this

kill 000009ed-0000-007b-0000-000100000001

scoreboard players set #boss_area.chapter_2.elekiel global.main 1

schedule function monsters:bossfight/chapter_2/elekiel/loop 1t

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
advancement grant @a only monsters:chapter_2/elekiel/1/battlefield/normal

execute as @e[tag=aj.yibb_tstll.root,type=item_display,distance=..60] at @s if biome ~ ~ ~ #world_area:chapter_2_bossfight run function animated_java:yibb_tstll/remove/this

summon skeleton 912 60 2018 {UUID:[I; 256, 128, 128, 1],DeathLootTable:"-",PersistenceRequired:1b,Tags:["monster","monsters.elekiel","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel"}}],CustomName:{"bold":false,"color":"gold","fallback":"靈魂樹殘像","italic":false,"translate":"monsters.elekiel"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide",show_in_tooltip:false}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide",show_in_tooltip:false}}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"air"}},mainhand:{id:"minecraft:wooden_axe",count:1,components:{item_model:"air",enchantments:{"cartographer_custom_enchantments:weapon/unique/melee/cleaving":1,"cartographer_custom_enchantments:weapon/unique/melee/lunging":8}}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:8},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

function animated_java:yibb_tstll/summon {args: {animation: 'idle', start_animation: true}}
ride @n[tag=aj.yibb_tstll.root,type=item_display] mount 00000100-0000-0080-0000-008000000001

execute store result score @n[tag=monsters.spawn,type=skeleton,tag=monsters.elekiel] monster.skill.cast.cd run random value 60..100
execute store result score @n[tag=monsters.spawn,type=skeleton,tag=monsters.elekiel] monster.skill.rdm.skill run random value 1..2
scoreboard players set $monster.chapter_2.elekiel.3.cd monster.elekiel.skill 100

execute as @a at @s if biome ~ ~ ~ #world_area:chapter_2_bossfight run function music:chapter_2/bossfight/2/start

tag @e[tag=monsters.spawn] remove monsters.spawn

schedule function monsters:chapter_2/elekiel/main 1t