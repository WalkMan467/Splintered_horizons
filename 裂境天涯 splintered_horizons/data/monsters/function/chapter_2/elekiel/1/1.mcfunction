playsound minecraft:voice.time_and_space_portal_open voice @s ~ ~1 ~ 1 0.5
playsound minecraft:entity.zombie_villager.cure voice @s ~ ~1 ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder voice @s ~ ~1 ~ 1 0.5


summon lightning_bolt 917 59 3023
summon lightning_bolt 921 59 3024
summon lightning_bolt 913 59 3014
summon lightning_bolt 907 59 3012
summon lightning_bolt 899 59 3015
summon lightning_bolt 891 59 3011
summon lightning_bolt 889 59 3005
summon lightning_bolt 887 59 3013
summon lightning_bolt 912 59 3023
summon lightning_bolt 931 59 3019
summon lightning_bolt 937 59 3026
summon lightning_bolt 933 59 3031

execute positioned 917 59.5 3023 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 921 59.5 3024 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 913 59.5 3014 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 907 59.5 3012 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 899 59.5 3015 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 891 59.5 3011 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 889 59.5 3005 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 887 59.5 3013 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 912 59.5 3023 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 931 59.5 3019 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 937 59.5 3026 run function particle:tunder_red/use {duration:20,spread:1}
execute positioned 933 59.5 3031 run function particle:tunder_red/use {duration:20,spread:1}

execute positioned 912 60 3018 as @e[type=minecraft:experience_orb,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run kill @s
execute positioned 912 60 3018 as @e[type=#arrows,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run kill @s