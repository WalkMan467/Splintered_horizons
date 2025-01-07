scoreboard players set #boss.chapter_1.walkman global.main 2
scoreboard players set @s music.chapter1.abyssal_ruins 2

bossbar add chapter_1.walkman {"text":"WalkMan467","bold": true}
bossbar set minecraft:chapter_1.walkman max 300
bossbar set chapter_1.walkman color red

kill @e[tag=chapter_1.walkman]
summon piglin ~ ~ ~ {Silent:1b,CustomNameVisible:1b,DeathLootTable:"-",Team:"monster",Health:300f,IsBaby:0b,CanBreakDoors:0b,Tags:["boss","monster","chapter_1.walkman","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker","monster.marker.chapter_1.walkman"],data:{Boss:["chapter_1.walkman"]}}],CustomName:'{"bold":true,"italic":false,"shadow_color":-26089,"text":"WalkMan","underlined":true}',HandItems:[{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_model_data":{strings:["ruins_of_the_end"]}}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3014656}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"WalkMan467"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"minecraft:follow_range",base:60},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:scale",base:1.5}]}

execute store result score @n[tag=monsters.spawn,limit=1] monster.skill.cast.cd run random value 60..100
execute store result score @n[tag=monsters.spawn,limit=1] chapter_1.walkman.1_count run random value 3..5
execute store result score @n[tag=monsters.spawn,limit=1] chapter_1.walkman.1 run random value 100..200
execute store result score @n[tag=monsters.spawn,limit=1] monster.skill.rdm.skill run random value 2..4

execute store result score #chapter_1.walkman.stage.health global.monsters.health run data get entity @n[tag=chapter_1.walkman,limit=1] Health
execute store result bossbar minecraft:chapter_1.walkman value run scoreboard players get #chapter_1.walkman.stage.health global.monsters.health

tag @e[tag=monsters.spawn] remove monsters.spawn