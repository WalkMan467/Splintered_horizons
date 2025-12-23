# execute unless entity @n[sort=arbitrary,distance=..15,tag=sys.sit_down.act,type=interaction] run return 0

execute as @e[sort=nearest,distance=..20,limit=15,tag=sys.sit_down.act,type=interaction] at @s run function sys:sit_down/interaction/guide