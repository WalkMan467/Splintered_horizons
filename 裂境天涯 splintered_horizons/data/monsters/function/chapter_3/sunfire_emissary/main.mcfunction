
# Skill 1
execute as @s[tag=chapter_3.sunfire_emissary.1,type=husk] run function monsters:chapter_3/sunfire_emissary/1/main

# Monster Self
execute as @s[tag=monsters.sunfire_emissary,type=husk] run function monsters:chapter_3/sunfire_emissary/main.monster

# Fx
execute as @s[tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud] at @s run function monsters:chapter_3/sunfire_emissary/death/fx/use

execute as @s[tag=sunfire_actived,type=husk,tag=monsters.sunfire_emissary] at @s run particle minecraft:wax_on ~ ~1 ~ 0 0 0 40 5 normal @a
execute as @s[tag=sunfire_actived,type=husk,tag=monsters.sunfire_emissary] at @s run scoreboard players add @s monster.sunfire_emissary.1.sunfire_actived.sfx 1
execute as @s[tag=sunfire_actived,type=husk,tag=monsters.sunfire_emissary] at @s run function monsters:chapter_3/sunfire_emissary/death/actived_loop/main