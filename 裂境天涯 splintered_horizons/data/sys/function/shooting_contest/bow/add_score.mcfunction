advancement revoke @s only sys:shooting_contest/add_score

execute unless entity @s[tag=sys.shooting_contest] run return 0
scoreboard players add #sys.shooting_contest.score global.main 1

playsound minecraft:entity.experience_orb.pickup voice @s ~ ~1 ~ 1 1

execute in minecraft:overworld positioned 1046 152 -84 run kill @e[type=#arrows,dx=12,dy=4,dz=14]