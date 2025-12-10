execute unless score #difficulty global.main matches 1.. run return 0
execute if entity 00000100-0000-0080-0000-008000000005 run return 0

setblock -916 60 2750 air
setblock -916 61 2750 air

bossbar add monsters.elekiel_phase_2 [{"translate":"monsters.elekiel","fallback": "「空之支配者」伊萊克爾"}]
bossbar set minecraft:monsters.elekiel_phase_2 color red
bossbar set minecraft:monsters.elekiel_phase_2 style notched_10

execute positioned -916 60 2750 run title @a[distance=..60] title [{"translate": "monsters.elekiel_phase_2.title","color": "red"}]
execute positioned -916 60 2750 run title @a[distance=..60] subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monsters.elekiel","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
execute positioned -916 60 2750 run title @a[distance=..60] times 20 20 20
execute positioned -916 60 2750 as @a[distance=..60] at @s run playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 1 1

kill 00000806-0000-0002-0000-001f00000003
execute positioned -916 61 2750 as @n[type=item_display,distance=..1,tag=aj.boss_1.root] run function animated_java:boss_1/remove/this

summon skeleton -916 60 2750 {UUID:[I;256,128,128,5],DeathLootTable:"-",PersistenceRequired:1b,Tags:["freeze.immunity","monster","monsters.elekiel_phase_2"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel_phase_2"}}],CustomName:{"bold":false,"color":"gold","fallback":"「空之支配者」伊萊克爾","italic":false,"translate":"monsters.elekiel"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:tooltip_display":{hidden_components:["trim"]},"minecraft:equippable":{slot:"legs",asset_id:"air"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:tooltip_display":{hidden_components:["trim"]},"minecraft:equippable":{slot:"chest",asset_id:"air"}}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"air","minecraft:equippable":{slot:"head",asset_id:"air"}}},mainhand:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}],"minecraft:item_model":"air"}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:500},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}

function animated_java:boss_1/summon {args: {animation: 'idle', start_animation: true}}
ride @n[tag=aj.boss_1.root,type=item_display] mount 00000100-0000-0080-0000-008000000005

effect give 00000100-0000-0080-0000-008000000005 instant_damage 1 27 true

gamemode adventure @a[tag=chapter_2.elekiel_phase_2.lose]
tag @a remove chapter_2.elekiel_phase_2.lose

scoreboard players set skill.1 monster.elekiel_phase_2.cd 100
scoreboard players set skill.2 monster.elekiel_phase_2.cd 300
scoreboard players set skill.4 monster.elekiel_phase_2.cd 740
scoreboard players set @s player.detect.is_bossfight 1
scoreboard players set #boss_area.chapter_2.elekiel_phase_2 global.main 1

schedule function monsters:bossfight/chapter_2/elekiel_phase_2/loop 1t
schedule function monsters:chapter_2/elekiel_phase_2/main 1t