execute store result score #rdm global.main run random value 0..100
execute if score #rdm global.main matches 0..50 run return 0

execute store result score #rdm global.main run random value 1..2
execute if score #rdm global.main matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:ice",count:1b,components:{"minecraft:item_model":"drop/broken_glass/1"}},Glowing:0b,Age:5900,PickupDelay:32767,Tags:["sagittarius_wave.fragments","summon"],Motion:[0.0,0.5,0.0]}
execute if score #rdm global.main matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:ice",count:1b},Glowing:0b,Age:5900,PickupDelay:32767,Tags:["sagittarius_wave.fragments","summon"],Motion:[0.0,0.5,0.0]}
execute if score #rdm global.main matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:blue_stained_glass",count:1b},Glowing:0b,Age:5900,PickupDelay:32767,Tags:["sagittarius_wave.fragments","summon"],Motion:[0.0,0.5,0.0]}

execute as @n[distance=..30,tag=summon,tag=sagittarius_wave.fragments,type=item] at @s run function particle:sagittarius_wave/fragments/rdm_motion/use