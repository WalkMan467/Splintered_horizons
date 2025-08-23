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

execute positioned 912 60 3018 as @e[type=minecraft:experience_orb,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run kill @s
execute positioned 912 60 3018 as @e[type=#arrows,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run kill @s