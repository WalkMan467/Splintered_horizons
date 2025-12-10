execute as @s[tag=portal,type=marker] if entity @p[distance=..1] run function sys:portal/guide

scoreboard players reset #sys.portal.fx particle
execute as @s[tag=portal,type=marker] at @s run function sys:portal/fx_range
execute as @s[tag=portal,type=marker] at @s run function sys:portal/fx