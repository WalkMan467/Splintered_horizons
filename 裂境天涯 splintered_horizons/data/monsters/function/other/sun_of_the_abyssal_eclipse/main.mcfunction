
# Skill 1
execute as @s[tag=other.sun_of_the_abyssal_eclipse.1,type=husk] run function monsters:other/sun_of_the_abyssal_eclipse/1/main

# Monster Self
execute as @s[tag=monsters.sun_of_the_abyssal_eclipse,type=husk] run function monsters:other/sun_of_the_abyssal_eclipse/main.monster

# Fx
execute as @s[tag=monsters.sun_of_the_abyssal_eclipse.fx.main,type=area_effect_cloud] at @s run function monsters:other/sun_of_the_abyssal_eclipse/death/fx/use

execute as @s[tag=sunfire_actived,type=husk,tag=monsters.sun_of_the_abyssal_eclipse] at @s run particle squid_ink ~ ~1 ~ 0 0 0 0.25 5 normal @a
execute as @s[tag=sunfire_actived,type=husk,tag=monsters.sun_of_the_abyssal_eclipse] at @s run scoreboard players add @s monster.sun_of_the_abyssal_eclipse.1.sunfire_actived.sfx 1
execute as @s[tag=sunfire_actived,type=husk,tag=monsters.sun_of_the_abyssal_eclipse] at @s run function monsters:other/sun_of_the_abyssal_eclipse/death/actived_loop/main