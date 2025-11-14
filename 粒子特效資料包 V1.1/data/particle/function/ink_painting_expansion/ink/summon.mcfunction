execute store result score #rdm global.main run random value 0..100
execute if score #rdm global.main matches 0..75 run return 0

summon item ~ ~ ~ {Item:{id:"minecraft:ink_sac",count:1b,components:{item_model:"air"}},Glowing:1b,Age:5900,PickupDelay:32767,Tags:["ink_painting_expansion.ink","summon"],Motion:[0.0,0.5,0.0]}

execute as @e[tag=summon,tag=ink_painting_expansion.ink,type=item] at @s run function particle:ink_painting_expansion/ink/rdm_motion/use