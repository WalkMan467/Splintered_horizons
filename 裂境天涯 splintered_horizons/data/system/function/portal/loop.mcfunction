execute as @s[tag=portal,type=marker] if entity @p[distance=..1] run function system:portal/guide

scoreboard players reset #system.portal.fx particle
execute as @s[tag=portal,type=marker] at @s run function system:portal/fx_range
execute as @s[tag=portal,type=marker] at @s run function system:portal/fx